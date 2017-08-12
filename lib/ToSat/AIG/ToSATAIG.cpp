/********************************************************************
 * AUTHORS: Vijay Ganesh, Trevor Hansen, Dan Liew, Mate Soos
 *
 * BEGIN DATE: November, 2005
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

#include <zconf.h>
#include "stp/ToSat/AIG/ToSATAIG.h"
#include "stp/Simplifier/constantBitP/ConstantBitPropagation.h"
#include "stp/Simplifier/Simplifier.h"

namespace stp {

    int ToSATAIG::cnf_calls = 0;

    bool ToSATAIG::CallSAT(SATSolver &satSolver, const ASTNode &input,
                           bool needAbsRef) {
        //std::cout << "call of:  CallSAT in ToSATAIG\n";
        if (cb != NULL && cb->isUnsatisfiable())
            return false;

        if (!first) {
            assert(input == ASTTrue);
            return runSolver(satSolver);
        }

        // Shortcut if known. This avoids calling the setup of the CNF generator.
        // setup of the CNF generator is expensive. NB, these checks have to occur
        // after calling the sat solver (if it's not the first time.)
        if (input == ASTFalse)
            return false;

        if (input == ASTTrue)
            return true;

        first = false;
        Cnf_Dat_t *cnfData = bitblast(input, needAbsRef);

        //std::cout << "call of:  handle_cnf_options(cnfData, needAbsRef);\n";
        handle_cnf_options(cnfData, needAbsRef);

        assert(satSolver.nVars() == 0);
        std::cout << "Before add_cnf.\n";
        //add_cnf_to_solver(satSolver, cnfData);

        if (bm->UserFlags.output_bench_flag) {
            cerr << "Converting to CNF via ABC's AIG package can't yet print out bench "
                    "format" << endl;
        }
        //std::cout << "Before release_cnf.\n";
        //release_cnf_memory(cnfData);

        //mark_variables_as_frozen(satSolver);
        std::cout << "Before return.";
        return 0;
        std::cout << "Before runSolver.\n";
        //return runSolver(satSolver);
    }

    void ToSATAIG::release_cnf_memory(Cnf_Dat_t *cnfData) {
        // This releases the memory used by the CNF generator, particularly some data
        // tables.
        // If CNF generation is going to be called lots, we'd rather keep it around.
        // because the datatables are expensive to generate.
        if (cnf_calls == 0)
            Cnf_ClearMemory();

        Cnf_DataFree(cnfData);
        cnf_calls++;
    }

    void ToSATAIG::handle_cnf_options(Cnf_Dat_t *cnfData, bool needAbsRef) {
        //std::cout << "HandleCnfOptions: output_CNF: " << bm->UserFlags.output_CNF_flag << "\n";
        if (bm->UserFlags.output_CNF_flag) {
            // std::cout << "Number of Clauses: " << cnfData->nClauses << "\n";
            std::stringstream fileName;
            fileName << "output_" << bm->CNFFileNameCounter++ << ".cnf";
            Cnf_DataWriteIntoFile(cnfData, (char *) fileName.str().c_str(), 0);
        }

        if (bm->UserFlags.exit_after_CNF) {
            if (bm->UserFlags.quick_statistics_flag)
                bm->GetRunTimes()->print();

            if (needAbsRef) {
                cerr << "Warning: STP is exiting after generating the first CNF."
                     << " But the CNF is probably partial which you probably don't want."
                     << " You probably want to disable"
                     << " refinement with the \"-r\" command line option." << endl;
            }

            exit(0);
        }
    }

    int ToSATAIG::getMultiplier() {
        std::cout<<"GetMultiplier...";
        int mult = 1;
        int count = 0;
        if ((access("output_0.cnf", F_OK) != -1)) {
            FILE *fp = fopen("AIGtoCNF.txt", "r");
            char *line = NULL;
            size_t len = 0;
            ssize_t read;
            if (fp == NULL){exit(EXIT_FAILURE);}
            while ((read = getline(&line, &len, fp)) != -1) {
                count++;
            }
            fclose(fp);
            if (line) {
                free(line);
            }

            /*std::ifstream inFile("AIGtoCNF.txt");
            int count = std::count(std::istreambuf_iterator<char>(inFile),
                                   std::istreambuf_iterator<char>(), '\n');
            inFile.close();*/
            count = count/2;
            if ((access("output_1.cnf", F_OK) != -1)) {
                mult++;
            }
            if ((access("output_2.cnf", F_OK) != -1)) {
                mult++;
            }
            if ((access("output_3.cnf", F_OK) != -1)) {
                mult++;
            }
            std::cout<<"End.\n";
            return count * mult;
        } else {
            std::cout<<"End.\n";
            return 0;
        }

    }

    Cnf_Dat_t *ToSATAIG::bitblast(const ASTNode &input, bool needAbsRef) {
        std::cout << "Start bitblast. \n";
        Simplifier simp(bm);

        BBNodeManagerAIG mgr;
        BitBlaster<BBNodeAIG, BBNodeManagerAIG> bb(
                &mgr, &simp, bm->defaultNodeFactory, &bm->UserFlags, cb);
        int multi = getMultiplier();
        mgr.aigMgr->nameAdd = multi;
        std::cout << "Multi:" << multi << "\n";
        //  print input for BBForm()
        //input.LispPrint(std::cout, 2);

        bm->GetRunTimes()->start(RunTimes::BitBlasting);
        BBNodeAIG BBFormula = bb.BBForm(input);
        bm->GetRunTimes()->stop(RunTimes::BitBlasting);
        //print out the AIG Tree
        std::flush(std::cout);
        std::flush(std::cerr);
        BBFormula.print();

        delete cb;
        cb = NULL;
        bb.cb = NULL;
        bm->GetRunTimes()->start(RunTimes::CNFConversion);
        Cnf_Dat_t *cnfData = NULL;
        toCNF.toCNF(BBFormula, cnfData, nodeToSATVar, needAbsRef, mgr);
        bm->GetRunTimes()->stop(RunTimes::CNFConversion);

        // Free the memory in the AIGs.
        BBFormula = BBNodeAIG(); // null node
        std::cout << "Before mgr.stop.\n";
        mgr.stop();

        return cnfData;
    }

    void ToSATAIG::add_cnf_to_solver(SATSolver &satSolver, Cnf_Dat_t *cnfData) {
        bm->GetRunTimes()->start(RunTimes::SendingToSAT);

        // Create a new sat variable for each of the variables in the CNF.
        int satV = satSolver.nVars();
        for (int i = 0; i < cnfData->nVars - satV; i++)
            satSolver.newVar();

        SATSolver::vec_literals satSolverClause;
        for (int i = 0; i < cnfData->nClauses; i++) {
            satSolverClause.clear();
            for (int *pLit = cnfData->pClauses[i], *pStop = cnfData->pClauses[i + 1];
                 pLit < pStop; pLit++) {
                uint32_t var = (*pLit) >> 1;
                //TODO MARKO assert((var < satSolver.nVars()));
                Minisat::Lit l = SATSolver::mkLit(var, (*pLit) & 1);
                satSolverClause.push(l);
            }

            satSolver.addClause(satSolverClause);
            if (!satSolver.okay())
                break;
        }
        bm->GetRunTimes()->stop(RunTimes::SendingToSAT);
    }

    void ToSATAIG::mark_variables_as_frozen(SATSolver &satSolver) {
        for (ArrayTransformer::ArrType::iterator it =
                arrayTransformer->arrayToIndexToRead.begin();
             it != arrayTransformer->arrayToIndexToRead.end(); it++) {
            const ArrayTransformer::arrTypeMap &atm = it->second;

            for (ArrayTransformer::arrTypeMap::const_iterator arr_it = atm.begin();
                 arr_it != atm.end(); arr_it++) {
                const ArrayTransformer::ArrayRead &ar = arr_it->second;
                ASTNodeToSATVar::iterator it = nodeToSATVar.find(ar.index_symbol);
                if (it != nodeToSATVar.end()) {
                    const vector<unsigned> &v = it->second;
                    for (size_t i = 0, size = v.size(); i < size; ++i)
                        satSolver.setFrozen(v[i]);
                }

                ASTNodeToSATVar::iterator it2 = nodeToSATVar.find(ar.symbol);
                if (it2 != nodeToSATVar.end()) {
                    const vector<unsigned> &v = it2->second;
                    for (size_t i = 0, size = v.size(); i < size; ++i)
                        satSolver.setFrozen(v[i]);
                }
            }
        }
    }

    bool ToSATAIG::runSolver(SATSolver &satSolver) {
        bm->GetRunTimes()->start(RunTimes::Solving);
        satSolver.solve(bm->soft_timeout_expired);
        bm->GetRunTimes()->stop(RunTimes::Solving);

        if (bm->UserFlags.stats_flag)
            satSolver.printStats();

        return satSolver.okay();
    }

    ToSATAIG::~ToSATAIG() {
        ClearAllTables();
    }
}
