#ifndef B1DetectorConstruction_h
#define B1DetectorConstruction_h 1

#include "G4VUserDetectorConstruction.hh"
#include "globals.hh"

class G4VPhysicalVolume;
class G4LogicalVolume;

namespace BTS
{

class DetectorConstruction : public G4VUserDetectorConstruction
{
  public:
    DetectorConstruction() = default;
    ~DetectorConstruction() override = default;

    G4VPhysicalVolume* Construct() override;
};

}

#endif
