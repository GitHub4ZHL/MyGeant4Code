#ifndef BTSActionInitialization_h
#define BTSActionInitialization_h 1

#include "G4VUserActionInitialization.hh"

namespace BTS
{

class ActionInitialization : public G4VUserActionInitialization
{
  public:
    ActionInitialization() = default;
    ~ActionInitialization() override = default;

    void BuildForMaster() const override;
    void Build() const override;
};

}

#endif
