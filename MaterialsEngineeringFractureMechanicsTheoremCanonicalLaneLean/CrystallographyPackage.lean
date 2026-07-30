import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  bravaisLattice : Prop
  unitCellGeometry : Prop
  symmetryGroup : Type v
  crystalOrientation : Type w
  slipSystemsIdentified : Prop
  grainBoundariesCharacterized : Prop
  latticeStructureTerm : latticeStructure
  bravaisLatticeTerm : bravaisLattice
  unitCellGeometryTerm : unitCellGeometry
  slipSystemsIdentifiedTerm : slipSystemsIdentified
  grainBoundariesCharacterizedTerm : grainBoundariesCharacterized

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClosed : C.bravaisLattice
  unitCellGeometryClosed : C.unitCellGeometry
  slipSystemsIdentifiedClosed : C.slipSystemsIdentified
  grainBoundariesCharacterizedClosed : C.grainBoundariesCharacterized

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLattice ∧ C.unitCellGeometry ∧ C.slipSystemsIdentified ∧ C.grainBoundariesCharacterized

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.bravaisLatticeClosed (And.intro E.unitCellGeometryClosed (And.intro E.slipSystemsIdentifiedClosed E.grainBoundariesCharacterizedClosed)))

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse