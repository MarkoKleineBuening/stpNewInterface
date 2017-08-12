/********************************************************************
 * AUTHORS: Trevor Hansen
 *
 * BEGIN DATE: June, 2010
 *
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
********************************************************************/

#ifndef BBNodeManagerAIG_H_
#define BBNodeManagerAIG_H_

#include <cstdint>

#include "BBNodeAIG.h"
#include "stp/ToSat/ToSATBase.h"

#include "extlib-abc/aig.h"
#include "extlib-abc/cnf_short.h"
#include "extlib-abc/dar.h"

typedef Cnf_Dat_t_ CNFData;
typedef Aig_Obj_t AIGNode;

namespace stp {
    class ASTNode;

    class STPMgr; // we ignore this anyway.

    extern vector<BBNodeAIG> _empty_BBNodeAIGVec;

// Creates AIG nodes with ABC and wraps them in BBNodeAIG's.
    class BBNodeManagerAIG {
    public:
        Aig_Man_t *aigMgr;

        // Map from symbols to their AIG nodes.
        typedef std::map<ASTNode, vector<BBNodeAIG>> SymbolToBBNode;
        SymbolToBBNode symbolToBBNode;

        int totalNumberOfNodes() {
            return aigMgr->nObjs[AIG_OBJ_AND]; // without having removed non-reachable.
        }

    private:
        // AIGs can only take two parameters. This makes a log_2 height
        // tower of varadic inputs.
        Aig_Obj_t *makeTower(Aig_Obj_t *(*t)(Aig_Man_t *, Aig_Obj_t *, Aig_Obj_t *),
                             vector<BBNodeAIG> &children) {
            std::deque<Aig_Obj_t *> names;

            for (size_t i = 0, size = children.size(); i < size; ++i)
                names.push_back(children[i].n);

            while (names.size() > 2) {
                Aig_Obj_t *a = names.front();
                names.pop_front();

                Aig_Obj_t *b = names.front();
                names.pop_front();

                Aig_Obj_t *n = t(aigMgr, a, b);
                names.push_back(n);
            }

            // last two now.
            assert(names.size() == 2);

            Aig_Obj_t *a = names.front();
            names.pop_front();

            Aig_Obj_t *b = names.front();
            names.pop_front();

            return t(aigMgr, a, b);
        }

        // no copy. no assignment.
        BBNodeManagerAIG &operator=(const BBNodeManagerAIG &other) = delete;

        BBNodeManagerAIG(const BBNodeManagerAIG &other) = delete;

        std::string m_name;
        int m_index = 0;
        int m_vectorInt = 0;
        bool m_firstRun = true;
        std::map<std::string, std::vector<int>> m_mapNameIndex;
        std::vector<int> m_vector;

    public:
        BBNodeManagerAIG() : aigMgr(NULL) {
            aigMgr = Aig_ManStart(0);
            // fancier strashing.
            aigMgr->fAddStrash = 1;
        }

        void stop() {
            if (aigMgr != NULL)
                Aig_ManStop(aigMgr);
            aigMgr = NULL;
        }

        ~BBNodeManagerAIG() {
            stop();
        }

        BBNodeAIG getTrue() {
            return BBNodeAIG(Aig_ManConst1(aigMgr));
        }

        BBNodeAIG getFalse() {
            return BBNodeAIG(Aig_ManConst0(aigMgr));
        }

        void setName(std::string name) {
            //std::cout << "set Name: " << name << "/";
            m_name = name;
        }

        std::map<std::string, std::vector<int>> getMap() {
            //std::cout << " Get Map \n";
            return m_mapNameIndex;
        }

        void setVectorInt(int index) {
            m_vectorInt = index;
        }

        void pushVectorIntoMap() {
            //std::cout << " pushVectorIntoMap \n";
            m_mapNameIndex[m_name] = m_vector;
            m_vector.clear();
        }

        void setFirstRun(bool firstRun) {
            m_firstRun = firstRun;
        }

        void setMap(std::map<std::string, std::vector<int>> map) {
            m_mapNameIndex = map;
            std::cout << "Vec_IntPush from map: ";
            for (auto &entry : map) {
                for (int id :entry.second) {
                    Vec_IntPush(aigMgr->nameList, id);
                    std::cout << " " << id << " ";
                }
            }
            std::cout << "\n";
        }

        // The same symbol always needs to return the same AIG node,
        // if it doesn't you will get the wrong answer.
        BBNodeAIG CreateSymbol(const ASTNode &n, unsigned i) {
            //std::cout << "Create Symbol: ";
            assert(n.GetKind() == SYMBOL);

            // booleans have width 0.
            const unsigned width = std::max((unsigned) 1, n.GetValueWidth());

            SymbolToBBNode::iterator it;
            it = symbolToBBNode.find(n);
            if (symbolToBBNode.end() == it) {
                symbolToBBNode[n] = vector<BBNodeAIG>(width);
                it = symbolToBBNode.find(n);
            }

            assert(it->second.size() == width);
            assert(i < width);

            if (!it->second[i].IsNull())
                return it->second[i];

            //adds the object to the abc vector (array)
            it->second[i] = BBNodeAIG(Aig_ObjCreatePi(aigMgr));
            if (m_firstRun) {
                it->second[i].symbol_index = aigMgr->vPis->nSize - 1;
                //it->second[i].name_index = aigMgr->vPis->nSize - 1;
                it->second[i].name_index = 0;
            } else {
                it->second[i].symbol_index = aigMgr->vPis->nSize - 1;
                it->second[i].name_index = 0;
                it->second[i].n->IdName = m_mapNameIndex.at(m_name).at(m_vectorInt);
                //Vec_IntPush(aigMgr->nameList, it->second[i].n->IdName);
                //aigMgr->nameList
                m_vectorInt++;
                //std::cout << "--loaded as "<<m_name<<
                //       " at symbol_index: "<< it->second[i].symbol_index << " and name_index: "<< it->second[i].name_index<<"--\n";
                //TODO all other indexes have to be adjusted. Maybe aig-vPis has to be adjusted too
            }

            std::cout << "Name/Symbol/Name/ID: " << m_name << "/" << it->second[i].symbol_index << "/"
                      << it->second[i].name_index << "/" << it->second[i].n->IdName << "\n";
            m_vector.push_back(it->second[i].n->IdName);
            return it->second[i];
        }

        BBNodeAIG CreateNode(Kind kind, vector<BBNodeAIG> &children) {
            //std::cout << "Create Node two parameter: " << std::endl;
            Aig_Obj_t *pNode;
            assert(children.size() != 0);

            for (size_t i = 0, size = children.size(); i < size; ++i)
                assert(!children[i].IsNull());

            switch (kind) {
                case AND:
                    if (children.size() == 1)
                        pNode = children[0].n;
                    else if (children.size() == 2)
                        pNode = Aig_And(aigMgr, children[0].n, children[1].n);
                    else
                        pNode = makeTower(Aig_And, children);
                    break;

                case OR:
                    if (children.size() == 1)
                        pNode = children[0].n;
                    else if (children.size() == 2)
                        pNode = Aig_Or(aigMgr, children[0].n, children[1].n);
                    else
                        pNode = makeTower(Aig_Or, children);
                    break;

                case NAND:
                    if (children.size() == 2)
                        pNode = Aig_And(aigMgr, children[0].n, children[1].n);
                    else
                        pNode = makeTower(Aig_And, children);
                    pNode = Aig_Not(pNode);
                    break;

                case NOT:
                    assert(children.size() == 1);
                    pNode = Aig_Not(children[0].n);
                    break;

                case NOR:
                    if (children.size() == 2)
                        pNode = Aig_Or(aigMgr, children[0].n, children[1].n);
                    else
                        pNode = makeTower(Aig_Or, children);
                    pNode = Aig_Not(pNode);
                    break;

                case XOR:
                    if (children.size() == 2)
                        pNode = Aig_Exor(aigMgr, children[0].n, children[1].n);
                    else
                        pNode = makeTower(Aig_Exor, children);
                    break;

                case IFF:
                    assert(children.size() == 2);
                    pNode = Aig_Exor(aigMgr, children[0].n, children[1].n);
                    pNode = Aig_Not(pNode);
                    break;

                case IMPLIES:
                    assert(children.size() == 2);
                    pNode = Aig_Or(aigMgr, Aig_Not(children[0].n), children[1].n);
                    break;

                case ITE:
                    assert(children.size() == 3);
                    pNode = Aig_Mux(aigMgr, children[0].n, children[1].n, children[2].n);
                    break;

                default:
                    cerr << "Not handled::!!" << _kind_names[kind];
                    FatalError("Never here");
                    assert(false);
                    exit(-1);
            }
            // std::cout << "ID of pNode: " << pNode->Id << "\n";
            //std::cout << " End" << "\n";
            return BBNodeAIG(pNode);
        }

        BBNodeAIG
        CreateNode(Kind kind, const BBNodeAIG &child0,
                   const vector<BBNodeAIG> &back_children = _empty_BBNodeAIGVec) {
            //std::cout << "!!Manager: Create Node 1 \n";
            vector<BBNodeAIG> front_children;
            front_children.reserve(1 + back_children.size());
            front_children.push_back(child0);
            front_children.insert(front_children.end(), back_children.begin(),
                                  back_children.end());
            return CreateNode(kind, front_children);
        }

        BBNodeAIG
        CreateNode(Kind kind, const BBNodeAIG &child0, const BBNodeAIG &child1,
                   const vector<BBNodeAIG> &back_children = _empty_BBNodeAIGVec) {
            //std::cout << "!!Manager: Create Node 2 \n";
            vector<BBNodeAIG> front_children;
            front_children.reserve(2 + back_children.size());
            front_children.push_back(child0);
            front_children.push_back(child1);
            front_children.insert(front_children.end(), back_children.begin(),
                                  back_children.end());
            // std::cout << child0.symbol_index << ", " << child1.symbol_index << std::endl;

            return CreateNode(kind, front_children);
        }

        BBNodeAIG
        CreateNode(Kind kind, const BBNodeAIG &child0, const BBNodeAIG &child1,
                   const BBNodeAIG &child2,
                   const vector<BBNodeAIG> &back_children = _empty_BBNodeAIGVec) {
            //std::cout << "!!Manager: Create Node 3 \n";
            vector<BBNodeAIG> front_children;
            front_children.reserve(3 + back_children.size());
            front_children.push_back(child0);
            front_children.push_back(child1);
            front_children.push_back(child2);
            front_children.insert(front_children.end(), back_children.begin(),
                                  back_children.end());
            return CreateNode(kind, front_children);
        }
    };
}

#endif /* BBNodeManagerAIG_H_ */
