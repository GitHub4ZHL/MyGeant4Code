#include "EventAction.hh"
#include "RunAction.hh"
#include "G4ThreeVector.hh"
#include "G4Event.hh"
#include "G4RunManager.hh"

namespace BTS
{

EventAction::EventAction(RunAction* runAction)
: fRunAction(runAction)
{}

void EventAction::BeginOfEventAction(const G4Event*)
{
}


void EventAction::EndOfEventAction(const G4Event*)
{
}

}
