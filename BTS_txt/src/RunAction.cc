#include "RunAction.hh"
#include "PrimaryGeneratorAction.hh"
#include "DetectorConstruction.hh"
#include "G4ThreeVector.hh"

#include "G4RunManager.hh"
#include "G4Run.hh"
#include "G4AccumulableManager.hh"
#include "G4LogicalVolumeStore.hh"
#include "G4LogicalVolume.hh"
#include "G4UnitsTable.hh"
#include "G4SystemOfUnits.hh"
#include <fstream>

namespace BTS
{

RunAction::RunAction()
{
}

void RunAction::BeginOfRunAction(const G4Run*)
{
  // Open txt
  m_File.open("ResultOfSimulation", std::ios::out);
  if (!m_File.is_open())
  {
    G4cerr << "Error opening file "<< G4endl;
    exit(1);
  }
}


void RunAction::EndOfRunAction(const G4Run* run)
{
  // Close txt
  m_File.close();
}

void RunAction::SavePosition(G4ThreeVector PosR)
{
  Position_Run = PosR;
  m_File << "Hit position: " << Position_Run << "\n";
  //G4cout << PosR <<G4endl;
}

}
