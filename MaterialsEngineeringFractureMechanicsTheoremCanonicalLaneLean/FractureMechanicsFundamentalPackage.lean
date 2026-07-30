import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure FractureMechanicsFundamentalPackage (C : CrystallographyPackage) (P : PhaseDiagramPackage C) (E : LinearElasticityPackage C) (F : FractureCriteriaPackage C P E) where
  griffithCriterionApplied : Prop
  energyReleaseRate : Type u
  fractureModeSeparation : Prop
  crackTipPlasticZone : Prop
  griffithCriterionAppliedTerm : griffithCriterionApplied
  fractureModeSeparationTerm : fractureModeSeparation
  crackTipPlasticZoneTerm : crackTipPlasticZone

structure FractureMechanicsFundamentalEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : LinearElasticityPackage C} {F : FractureCriteriaPackage C P E} (G : FractureMechanicsFundamentalPackage C P E F) where
  griffithCriterionAppliedClosed : G.griffithCriterionApplied
  fractureModeSeparationClosed : G.fractureModeSeparation
  crackTipPlasticZoneClosed : G.crackTipPlasticZone

def FractureMechanicsFundamentalClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : LinearElasticityPackage C} {F : FractureCriteriaPackage C P E} (G : FractureMechanicsFundamentalPackage C P E F) : Prop :=
  G.griffithCriterionApplied ∧ G.fractureModeSeparation ∧ G.crackTipPlasticZone

theorem fracture_mechanics_fundamental_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : LinearElasticityPackage C} {F : FractureCriteriaPackage C P E} (G : FractureMechanicsFundamentalPackage C P E F) (Ev : FractureMechanicsFundamentalEvidence G) : FractureMechanicsFundamentalClosed G := by
  exact And.intro Ev.griffithCriterionAppliedClosed (And.intro Ev.fractureModeSeparationClosed Ev.crackTipPlasticZoneClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse