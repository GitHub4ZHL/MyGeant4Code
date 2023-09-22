#include "DetectorConstruction.hh"

#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4SystemOfUnits.hh"

namespace BTS
{

G4VPhysicalVolume* DetectorConstruction::Construct()
{
  G4NistManager* nist = G4NistManager::Instance();
  G4bool checkOverlaps = true;

  G4Material* world_mat = nist->FindOrBuildMaterial("G4_AIR");
  auto solidWorld = new G4Box("World", 40*cm, 40*cm, 60*cm);
  auto logicWorld = new G4LogicalVolume(solidWorld, world_mat, "World");                                      
  auto physWorld = new G4PVPlacement(0, G4ThreeVector(), logicWorld, "World", 0, false, 0, checkOverlaps);

  G4Material* Mat = nist->FindOrBuildMaterial("G4_Si");
  auto Plane1Sld = new G4Box("Plane1", 10*cm, 16*cm, 0.1*cm);
  auto Plane1Log = new G4LogicalVolume(Plane1Sld, Mat, "Plane1Log");
  auto Plane1Phys = new G4PVPlacement(0, G4ThreeVector(0, 0, -15*cm), Plane1Log, "Plane1Phys", logicWorld, false, 0, checkOverlaps);
  
  auto Plane2Sld = new G4Box("Plane2", 10*cm, 16*cm, 0.1*cm);
  auto Plane2Log = new G4LogicalVolume(Plane2Sld, Mat, "Plane2Log");
  auto Plane2Phys = new G4PVPlacement(0, G4ThreeVector(0, 0, 15*cm), Plane2Log, "Plane2Phys", logicWorld, false, 0, checkOverlaps);  
  
  auto Plane3Sld = new G4Box("Plane3", 10*cm, 16*cm, 0.1*cm);
  auto Plane3Log = new G4LogicalVolume(Plane3Sld, Mat, "Plane3Log");
  auto Plane3Phys = new G4PVPlacement(0, G4ThreeVector(0, 0, -18.8*cm), Plane3Log, "Plane3Phys", logicWorld, false, 0, checkOverlaps);
  
  auto Plane4Sld = new G4Box("Plane4", 10*cm, 16*cm, 0.1*cm);
  auto Plane4Log = new G4LogicalVolume(Plane4Sld, Mat, "Plane4Log");
  auto Plane4Phys = new G4PVPlacement(0, G4ThreeVector(0, 0, 18.8*cm), Plane4Log, "Plane4Phys", logicWorld, false, 0, checkOverlaps);

  auto Plane5Sld = new G4Box("Plane5", 10*cm, 16*cm, 0.1*cm);
  auto Plane5Log = new G4LogicalVolume(Plane5Sld, Mat, "Plane5Log");
  auto Plane5Phys = new G4PVPlacement(0, G4ThreeVector(0, 0, -22.6*cm), Plane5Log, "Plane5Phys", logicWorld, false, 0, checkOverlaps);
  
  auto Plane6Sld = new G4Box("Plane6", 10*cm, 16*cm, 0.1*cm);
  auto Plane6Log = new G4LogicalVolume(Plane6Sld, Mat, "Plane6Log");
  auto Plane6Phys = new G4PVPlacement(0, G4ThreeVector(0, 0, 22.6*cm), Plane6Log, "Plane6Phys", logicWorld, false, 0, checkOverlaps);

  auto DUTSld = new G4Box("DUT", 10*cm, 16*cm, 0.1*cm);
  auto DUTLog = new G4LogicalVolume(DUTSld, Mat, "DUTLog");
  auto DUTPhys = new G4PVPlacement(0, G4ThreeVector(0, 0, 0*cm), DUTLog, "DUTPhys", logicWorld, false, 0, checkOverlaps);

  return physWorld;
}

}
