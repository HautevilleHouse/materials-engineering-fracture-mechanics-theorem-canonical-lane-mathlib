import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure PhaseDiagramPackage (C : CrystallographyPackage) where
  phaseBoundaries : Prop
  equilibriumPhases : Prop
  temperatureCompositionSpace : Type u
  phaseTransformationKinetics : Prop
  phaseDiagramConstructed : Prop
  phaseBoundariesTerm : phaseBoundaries
  equilibriumPhasesTerm : equilibriumPhases
  phaseTransformationKineticsTerm : phaseTransformationKinetics
  phaseDiagramConstructedTerm : phaseDiagramConstructed

structure PhaseDiagramEvidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) where
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumPhasesClosed : P.equilibriumPhases
  phaseTransformationKineticsClosed : P.phaseTransformationKinetics
  phaseDiagramConstructedClosed : P.phaseDiagramConstructed

def PhaseDiagramClosed {C : CrystallographyPackage} (P : PhaseDiagramPackage C) : Prop :=
  P.phaseBoundaries ∧ P.equilibriumPhases ∧ P.phaseTransformationKinetics ∧ P.phaseDiagramConstructed

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.equilibriumPhasesClosed (And.intro E.phaseTransformationKineticsClosed E.phaseDiagramConstructedClosed))

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse