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
    fRunAction->SavePosition(Position_Event);
}

void EventAction::GetPosition(G4ThreeVector Pos)
{
    Position_Event = Pos;
    //G4cout << Position_Event << G4endl; 这里的输出没有损失，若发射10个例子，传到Run后就只剩10个数据
    //G4cout<< "Geant4  Test_Event_MemberFunction  Geant4" <<G4endl;
}

}
