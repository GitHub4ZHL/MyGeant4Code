#ifndef DetectorConstruction_h
#define DetectorConstruction_h 1

#include "G4VUserDetectorConstruction.hh"
#include "CLHEP/Units/SystemOfUnits.h"
#include "globals.hh"

class G4Box;
class G4LogicalVolume;
class G4VPhysicalVolume;
class G4Material;
class DetectorMessenger;
class G4UserLimits;

class DetectorConstruction : public G4VUserDetectorConstruction
{
  public:
    DetectorConstruction();
    ~DetectorConstruction() override;

    G4VPhysicalVolume* Construct() override;
    
    void SetPlaneMaterial(const G4String&);
    void SetPlaneThickness(G4double);
    void SetMaxStep (G4double );
  private:
    //Telescope
    G4VPhysicalVolume* ConstructTelescope();

    //Material
    void DefineMaterials();
    G4Material* fDefaultMaterial = nullptr;
    G4Material* fWorldMaterial = nullptr;
    G4Material* fPlaneMaterial = nullptr;

    //Size
    G4double fPlaneThickness = 0.2*CLHEP::mm;

    //World
    G4Box* fSolidWorld = nullptr;                //pointer to the solid World
    G4LogicalVolume* fLogicWorld = nullptr;      //pointer to the logic World
    G4VPhysicalVolume* fPhysiWorld = nullptr;    //pointer to the physi World
    //Plane1						 
    G4Box* fSolidP1 = nullptr;                   //pointer to the solid Plane
    G4LogicalVolume* fLogicP1 = nullptr;         //pointer to the logic Plane
    G4VPhysicalVolume* fPhysiP1 = nullptr;       //pointer to the physi Plane    
    //Plane2
    G4Box* fSolidP2 = nullptr;                   
    G4LogicalVolume* fLogicP2 = nullptr;        
    G4VPhysicalVolume* fPhysiP2 = nullptr;     
    //Plane3
    G4Box* fSolidP3 = nullptr;                   
    G4LogicalVolume* fLogicP3 = nullptr;         
    G4VPhysicalVolume* fPhysiP3 = nullptr;       
    //Plane4
    G4Box* fSolidP4 = nullptr;                 
    G4LogicalVolume* fLogicP4 = nullptr;        
    G4VPhysicalVolume* fPhysiP4 = nullptr;       
    //Plane5
    G4Box* fSolidP5 = nullptr;                   
    G4LogicalVolume* fLogicP5 = nullptr;         
    G4VPhysicalVolume* fPhysiP5 = nullptr;       
    //Plane6
    G4Box* fSolidP6 = nullptr;                   //pointer to the solid Plane
    G4LogicalVolume* fLogicP6 = nullptr;         //pointer to the logic Plane
    G4VPhysicalVolume* fPhysiP6 = nullptr;       //pointer to the physi Plane
    
    //StepLimit
    G4UserLimits* fStepLimit = nullptr; // pointer to user step limits
    
    //Messenger					    
    DetectorMessenger* fDetectorMessenger = nullptr;  //pointer to the Messenger    
};

#endif
