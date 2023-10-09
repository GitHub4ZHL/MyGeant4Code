#include "DetectorConstruction.hh"
#include "DetectorMessenger.hh"

#include "G4Material.hh"
#include "G4NistManager.hh"

#include "G4Box.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4PVReplica.hh"

#include "G4StateManager.hh"
#include "G4GeometryManager.hh"
#include "G4PhysicalVolumeStore.hh"
#include "G4LogicalVolumeStore.hh"
#include "G4SolidStore.hh"

#include "G4VisAttributes.hh"
#include "G4Colour.hh"
#include "G4SystemOfUnits.hh"
#include "G4RunManager.hh"

#include "G4UserLimits.hh"

DetectorConstruction::DetectorConstruction()
{
  // materials
  DefineMaterials();
  SetPlaneMaterial("G4_Si");

  //Messenger
  fDetectorMessenger = new DetectorMessenger(this);
}

DetectorConstruction::~DetectorConstruction()
{
  delete fDetectorMessenger;
}

void DetectorConstruction::DefineMaterials()
{
  //G4-NIST materials data base
  G4NistManager* man = G4NistManager::Instance();
  fDefaultMaterial = man->FindOrBuildMaterial("G4_Si");
  fWorldMaterial = man->FindOrBuildMaterial("G4_AIR");
  man->FindOrBuildMaterial("G4_Ag");
  man->FindOrBuildMaterial("G4_Au");

  //Print
  G4cout << *(G4Material::GetMaterialTable()) << G4endl;
}

G4VPhysicalVolume* DetectorConstruction::Construct()
{
  return ConstructTelescope();
}


G4VPhysicalVolume* DetectorConstruction::ConstructTelescope()
{
  //Clean old geometry, if any
  G4GeometryManager::GetInstance()->OpenGeometry();
  G4PhysicalVolumeStore::GetInstance()->Clean();
  G4LogicalVolumeStore::GetInstance()->Clean();
  G4SolidStore::GetInstance()->Clean();	
  G4NistManager* nist = G4NistManager::Instance();
  G4bool checkOverlaps = true;

  //Construct Telescope
  fSolidWorld = new G4Box("World", 40*cm, 40*cm, 60*cm);
  fLogicWorld = new G4LogicalVolume(fSolidWorld, fWorldMaterial, "World");                                      
  fPhysiWorld = new G4PVPlacement(0, G4ThreeVector(), fLogicWorld, "World", 0, false, 0, checkOverlaps);

                             
  fSolidP1 = new G4Box("Plane1", 10*cm, 16*cm, fPlaneThickness/2*cm);
  fLogicP1 = new G4LogicalVolume(fSolidP1, fDefaultMaterial, "Plane1");
  fPhysiP1 = new G4PVPlacement(0, G4ThreeVector(0, 0, -15*cm), fLogicP1, "Plane1", fLogicWorld, false, 0, checkOverlaps);
  
  fSolidP2 = new G4Box("Plane2", 10*cm, 16*cm, fPlaneThickness/2*cm);
  fLogicP2 = new G4LogicalVolume(fSolidP2, fDefaultMaterial, "Plane2");
  fPhysiP2 = new G4PVPlacement(0, G4ThreeVector(0, 0, 15*cm), fLogicP2, "Plane2", fLogicWorld, false, 0, checkOverlaps);  
  
  fSolidP3 = new G4Box("Plane3", 10*cm, 16*cm, fPlaneThickness/2*cm);
  fLogicP3 = new G4LogicalVolume(fSolidP3, fDefaultMaterial, "Plane3");
  fPhysiP3 = new G4PVPlacement(0, G4ThreeVector(0, 0, -18.8*cm), fLogicP3, "Plane3", fLogicWorld, false, 0, checkOverlaps);
  
  fSolidP4 = new G4Box("Plane4", 10*cm, 16*cm, fPlaneThickness/2*cm);
  fLogicP4 = new G4LogicalVolume(fSolidP4, fDefaultMaterial, "Plane4");
  fPhysiP4 = new G4PVPlacement(0, G4ThreeVector(0, 0, 18.8*cm), fLogicP4, "Plane4", fLogicWorld, false, 0, checkOverlaps);

  fSolidP5 = new G4Box("Plane5", 10*cm, 16*cm, fPlaneThickness/2*cm);
  fLogicP5 = new G4LogicalVolume(fSolidP5, fDefaultMaterial, "Plane5");
  fPhysiP5 = new G4PVPlacement(0, G4ThreeVector(0, 0, -22.6*cm), fLogicP5, "Plane5", fLogicWorld, false, 0, checkOverlaps);
  
  fSolidP6 = new G4Box("Plane6", 10*cm, 16*cm, fPlaneThickness/2*cm);
  fLogicP6 = new G4LogicalVolume(fSolidP6, fDefaultMaterial, "Plane6");
  fPhysiP6 = new G4PVPlacement(0, G4ThreeVector(0, 0, 22.6*cm), fLogicP6, "Plane6", fLogicWorld, false, 0, checkOverlaps);

  return fPhysiWorld;
}

void DetectorConstruction::SetPlaneMaterial(const G4String& materialChoice)
{
  // search the material by its name
  auto material = G4NistManager::Instance()->FindOrBuildMaterial(materialChoice);
  if (material != nullptr)
  {
    fPlaneMaterial = material;
    if ((fLogicP1 != nullptr) && (fLogicP2 != nullptr) && (fLogicP3 != nullptr) && (fLogicP4 != nullptr) && (fLogicP5 != nullptr) && (fLogicP6 != nullptr))
    {
      fLogicP1->SetMaterial(fPlaneMaterial);
      fLogicP2->SetMaterial(fPlaneMaterial);
      fLogicP3->SetMaterial(fPlaneMaterial);
      fLogicP4->SetMaterial(fPlaneMaterial);
      fLogicP5->SetMaterial(fPlaneMaterial);
      fLogicP6->SetMaterial(fPlaneMaterial);
      G4cout << " *设置了材料* *设置了材料* *设置了材料* *设置了材料* *设置了材料* *设置了材料*" << G4endl;
      //告知已经修改
      G4RunManager::GetRunManager()->PhysicsHasBeenModified();
    }
  }
}

void DetectorConstruction::SetPlaneThickness(G4double value)
{
  // Change thickness
  fPlaneThickness = value;
  if ( G4StateManager::GetStateManager()->GetCurrentState() != G4State_PreInit ) 
  {
    G4RunManager::GetRunManager()->ReinitializeGeometry();
    G4cout << " *设置了厚度* *设置了厚度* *设置了厚度* *设置了厚度* *设置了厚度* *设置了厚度*" << G4endl;
  }
}

void DetectorConstruction::SetMaxStep(G4double maxStep)
{
  if ((fStepLimit)&&(maxStep>0.)) fStepLimit->SetMaxAllowedStep(maxStep);
  G4cout << " *设置了步长* *设置了步长* *设置了步长* *设置了步长* *设置了步长* *设置了步长*" << G4endl;
}

