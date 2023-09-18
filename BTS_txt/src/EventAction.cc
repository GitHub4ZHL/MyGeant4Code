#include "EventAction.hh"
#include "G4Event.hh"

namespace BTS
{
EventAction::EventAction(): G4UserEventAction()
{}

void EventAction::BeginOfEventAction(const G4Event*)
{}

void EventAction::EndOfEventAction(const G4Event*)
{}

}
