import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure FractureCriteriaPackage (C : CrystallographyPackage) (P : PhaseDiagramPackage C) (E : LinearElasticityPackage C) where
  criticalStressIntensityFactor : Type u
  fractureToughness : Type v
  crackPropagationCriterion : Prop
  stressIntensityFactorComputed : Prop
  loadingModeConsidered : Prop
  crackPropagationCriterionTerm : crackPropagationCriterion
  stressIntensityFactorComputedTerm : stressIntensityFactorComputed
  loadingModeConsideredTerm : loadingModeConsidered

structure FractureCriteriaEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : LinearElasticityPackage C} (F : FractureCriteriaPackage C P E) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  stressIntensityFactorComputedClosed : F.stressIntensityFactorComputed
  loadingModeConsideredClosed : F.loadingModeConsidered

def FractureCriteriaClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : LinearElasticityPackage C} (F : FractureCriteriaPackage C P E) : Prop :=
  F.crackPropagationCriterion ∧ F.stressIntensityFactorComputed ∧ F.loadingModeConsidered

theorem fracture_criteria_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} {E : LinearElasticityPackage C} (F : FractureCriteriaPackage C P E) (Ev : FractureCriteriaEvidence F) : FractureCriteriaClosed F := by
  exact And.intro Ev.crackPropagationCriterionClosed (And.intro Ev.stressIntensityFactorComputedClosed Ev.loadingModeConsideredClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse