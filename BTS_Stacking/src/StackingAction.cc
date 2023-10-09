#include "StackingAction.hh"

#include "G4Track.hh"
#include "G4Gamma.hh"

G4ClassificationOfNewTrack StackingAction::ClassifyNewTrack(const G4Track* track)
{
  //保留主粒子
  if (track->GetParentID() == 0) return fUrgent;

  //杀死次级光子
  if (track->GetDefinition() == G4Gamma::Gamma()) return fKill;
  else return fUrgent;
}

