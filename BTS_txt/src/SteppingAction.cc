#include "SteppingAction.hh"
#include "EventAction.hh"
#include "DetectorConstruction.hh"
#include "G4Track.hh"
#include "G4Step.hh"
#include "G4Event.hh"
#include "G4RunManager.hh"
#include "G4LogicalVolume.hh"

namespace BTS
{

SteppingAction::SteppingAction(EventAction* eventAction)
: fEventAction(eventAction)
{}


void SteppingAction::UserSteppingAction(const G4Step* step)
{
  auto track = step->GetTrack();
  G4LogicalVolume* volume = step->GetPreStepPoint()->GetTouchableHandle()->GetVolume()->GetLogicalVolume();
  G4ThreeVector position = track->GetPosition();
    
  //G4cout << position << G4endl;
  fEventAction->GetPosition(position);
}

}
