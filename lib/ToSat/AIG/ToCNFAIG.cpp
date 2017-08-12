/********************************************************************
 * AUTHORS: Trevor Hansen
 *
 * BEGIN DATE: Feb, 2010
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

#include "stp/ToSat/AIG/ToCNFAIG.h"

namespace stp {

// Can it only add in the new variables somehow??
    void addVariables(BBNodeManagerAIG &mgr, Cnf_Dat_t *&cnfData,
                      ToSATBase::ASTNodeToSATVar &nodeToVars) {
        std::cout << "Add Var\n";
        BBNodeManagerAIG::SymbolToBBNode::const_iterator it;
        // Each symbol maps to a vector of CNF variables.

        for (it = mgr.symbolToBBNode.begin(); it != mgr.symbolToBBNode.end(); it++) {
            const ASTNode &n = it->first;
            const vector<BBNodeAIG> &b = it->second;

            const int width = (n.GetType() == BOOLEAN_TYPE) ? 1 : n.GetValueWidth();

            // INT_MAX for parts of symbols that didn't get encoded.
            vector<unsigned> v(width, ~((unsigned) 0));

            for (unsigned i = 0; i < b.size(); i++) {
                if (!b[i].IsNull()) {
                    Aig_Obj_t *pObj;
                    pObj = (Aig_Obj_t *) Vec_PtrEntry(mgr.aigMgr->vPis, b[i].symbol_index);
                    v[i] = cnfData->pVarNums[pObj->Id];
                    std::cout << "Add Variables " << b[i].symbol_index << " of id:" << v[i] << "\n";
                }
            }
            nodeToVars.insert(make_pair(n, v));
        }
    }

    void ToCNFAIG::dag_aware_aig_rewrite(
            const bool needAbsRef,
            BBNodeManagerAIG &mgr) {
        const int nodeCount = mgr.aigMgr->nObjs[AIG_OBJ_AND];

        if (!needAbsRef && uf.enable_AIG_rewrites_flag) {
            Dar_LibStart();
            Dar_RwrPar_t Pars, *pPars = &Pars;
            Dar_ManDefaultRwrParams(pPars);

            // Assertion errors occur with this enabled.
            // pPars->fUseZeros = 1;

            // For mul63bit.smt2 with iterations =3 & nCutsMax = 8
            // CNF generation was taking 139 seconds, solving 10 seconds.

            // With nCutsMax =2, CNF generation takes 16 seconds, solving 10 seconds.
            // The rewriting doesn't remove as many nodes of course..
            const int iterations = 3;

            for (int i = 0; i < iterations; i++) {
                Aig_Man_t *pTemp;
                mgr.aigMgr = Aig_ManDup(pTemp = mgr.aigMgr, 0);
                Aig_ManStop(pTemp);
                Dar_ManRewrite(mgr.aigMgr, pPars);

                mgr.aigMgr = Aig_ManDup(pTemp = mgr.aigMgr, 0);
                Aig_ManStop(pTemp);

                if (uf.stats_flag)
                    cerr << "After rewrite [" << i
                         << "]  nodes:" << mgr.aigMgr->nObjs[AIG_OBJ_AND] << endl;

                //Fixedpoint reached?
                if (nodeCount == mgr.aigMgr->nObjs[AIG_OBJ_AND])
                    break;
            }
        }
    }

    void ToCNFAIG::toCNF(const BBNodeAIG &top, Cnf_Dat_t *&cnfData,
                         ToSATBase::ASTNodeToSATVar &nodeToVars, bool needAbsRef,
                         BBNodeManagerAIG &mgr) {
        assert(cnfData == NULL);

        Aig_ObjCreatePo(mgr.aigMgr, top.n);
        if (!needAbsRef) {
            Aig_ManCleanup(mgr.aigMgr); // remove nodes not connected to the PO.
        }
        assert(Aig_ManCheck(mgr.aigMgr)); // check that AIG looks ok.

        assert(Aig_ManPoNum(mgr.aigMgr) == 1);

        // UseZeroes gives assertion errors.
        // Rewriting is sometimes very slow. Can it be configured to be faster?
        // What about refactoring???

        if (uf.stats_flag) {
            cerr << "Nodes before AIG rewrite:" << mgr.aigMgr->nObjs[AIG_OBJ_AND]
                 << endl;
        }

        dag_aware_aig_rewrite(needAbsRef, mgr);
        //TODO Marko uf-simple_cnf
        //std::cout << "simple cnf: " << uf.simple_cnf << "\n";
        if (!uf.simple_cnf) {
            cnfData = Cnf_Derive(mgr.aigMgr, 0);
            if (uf.stats_flag)
                cerr << "advanced CNF" << endl;
        } else {
            cnfData = Cnf_DeriveSimple(mgr.aigMgr, 0);
            if (uf.stats_flag)
                cerr << "simple CNF" << endl;
        }
        assert(cnfData != NULL);

        fill_node_to_var(cnfData, nodeToVars, mgr);
    }

    void ToCNFAIG::fill_node_to_var(
            Cnf_Dat_t *cnfData,
            ToSATBase::ASTNodeToSATVar &nodeToVars,
            BBNodeManagerAIG &mgr) {
        BBNodeManagerAIG::SymbolToBBNode::const_iterator it;
        assert(nodeToVars.size() == 0);

        // todo. cf. with addvariables above...
        // Each symbol maps to a vector of CNF variables.
        std::cout << "Size of symbolToBB:" << mgr.symbolToBBNode.size() << "\n";
        for (it = mgr.symbolToBBNode.begin(); it != mgr.symbolToBBNode.end(); it++) {
            const ASTNode& n = it->first;
            const vector<BBNodeAIG> &b = it->second;
            assert(nodeToVars.find(n) == nodeToVars.end());

            const int width = (n.GetType() == BOOLEAN_TYPE) ? 1 : n.GetValueWidth();

            // INT_MAX for parts of symbols that didn't get encoded.
            vector<unsigned> v(width, ~((unsigned) 0));

            for (unsigned i = 0; i < b.size(); i++) {
                if (!b[i].IsNull()) {
                    Aig_Obj_t *pObj;
                    pObj = (Aig_Obj_t *) Vec_PtrEntry(mgr.aigMgr->vPis, b[i].symbol_index);
                    v[i] = cnfData->pVarNums[pObj->IdName];
                    //std::cout << "Fill nodes to var "<< b[i].symbol_index<< " of id:"<<v[i]<<"\n";
                    //b[i].print();
                    //printf( "%d(%d)=%d=%d ",i,pObj->Id, v[i], b[i]);
                }
                //printf("\n");
            }
            std::string str = n.GetName();
            std::cout << "NAME/Vector: " << str << " / ";
            for (auto &vec:v) {
                std::cout << vec << ", ";
            }
            std::cout << "\n";
            //std::pair<const ASTNode &, vector<unsigned>> make_pair(n, v);
            //std::pair<const ASTNode*, vector<unsigned>> test;
            //test = make_pair(&n,v);
            //std::pair<const ASTNode &, vector<unsigned>> test = make_pair(n,v);
            nodeToVars.insert(make_pair(n, v));
        }
    }
}
