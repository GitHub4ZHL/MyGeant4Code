#include "ActionInitialization.hh"
#include "PrimaryGeneratorAction.hh"
#include "RunAction.hh"
#include "EventAction.hh"
#include "SteppingAction.hh"
#include <fstream>
namespace BTS
{

ActionInitialization::ActionInitialization(std::ofstream** outfilePP): G4VUserActionInitialization(), m_OutFilePP(outfilePP)
{}
ActionInitialization::~ActionInitialization()
{}

void ActionInitialization::BuildForMaster() const
{
  auto runAction = new RunAction;
  runAction->SetOutFilePP(m_OutFilePP);
  SetUserAction(runAction);
}

void ActionInitialization::Build() const
{
  SetUserAction(new PrimaryGeneratorAction);

  auto runAction = new RunAction;
  runAction->SetOutFilePP(m_OutFilePP);
  SetUserAction(runAction);

  auto eventAction = new EventAction();
  SetUserAction(eventAction);

  auto stepAction = new SteppingAction(eventAction);
  stepAction->SetOutFilePP(m_OutFilePP);
  SetUserAction(stepAction); 
}

}
