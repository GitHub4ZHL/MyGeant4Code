#ifndef B1ActionInitialization_h
#define B1ActionInitialization_h 1

#include "G4VUserActionInitialization.hh"
#include <fstream>
namespace BTS
{

class ActionInitialization : public G4VUserActionInitialization
{
  public:
    ActionInitialization(std::ofstream** outfilePP);
    virtual ~ActionInitialization() override;

    void BuildForMaster() const override;
    void Build() const override;
  private:
    std::ofstream** m_OutFilePP;
};

}

#endif
