#ifndef BTSRunAction_h
#define BTSRunAction_h 1

#include "G4UserRunAction.hh"
#include "G4Accumulable.hh"
#include "globals.hh"
#include "G4ThreeVector.hh"
#include <fstream>

class G4Run;


namespace BTS
{

class RunAction : public G4UserRunAction
{
  public:
    RunAction();
    ~RunAction() override = default;

    void BeginOfRunAction(const G4Run*) override;
    void EndOfRunAction(const G4Run*) override;
    void SavePosition(G4ThreeVector PosR);

    G4ThreeVector Position_Run;
  private:
    std::ofstream m_File;
};

}

#endif

