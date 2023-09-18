#include "SteppingAction.hh"
#include "EventAction.hh"
#include "G4RunManager.hh"
#include "G4Step.hh"
#include "G4Track.hh"
#include "G4StepPoint.hh"

namespace BTS
{

SteppingAction::SteppingAction(EventAction* eventAction): fEventAction(eventAction)
{}

void SteppingAction::UserSteppingAction(const G4Step* step)
{
    auto track = step->GetTrack();
    auto processName = step->GetPostStepPoint()->GetProcessDefinedStep()->GetProcessName();
    auto trackId = track->GetTrackID();
    auto parentId = track->GetParentID();
    auto position = track->GetPosition();
    auto energy = track->GetKineticEnergy();
    G4String particleId = track->GetParticleDefinition()->GetParticleName();
       
    // 将step数据写入输出文件
    //**m_OutFilePP << "processName: " << processName << "\n";
    //**m_OutFilePP << "trackId: " << trackId << "\n";
    //**m_OutFilePP << "parentId: " << parentId << "\n";
    //**m_OutFilePP << "position: " << position << "\n";
    //**m_OutFilePP << "particleId: " << particleId << "\n";
    **m_OutFilePP << energy << "\n";
}

void SteppingAction::SetOutFilePP(std::ofstream** OutFilePP)
{
  m_OutFilePP = OutFilePP;
}

}
