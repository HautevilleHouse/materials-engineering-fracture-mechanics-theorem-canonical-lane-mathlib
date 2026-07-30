import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure LinearElasticityPackage (C : CrystallographyPackage) where
  stressStrainConstitutiveLaw : Prop
  elasticModuli : Type u
  equilibriumEquations : Prop
  boundaryConditions : Prop
  displacementField : Type v
  stressStrainConstitutiveLawTerm : stressStrainConstitutiveLaw
  equilibriumEquationsTerm : equilibriumEquations
  boundaryConditionsTerm : boundaryConditions

structure LinearElasticityEvidence {C : CrystallographyPackage} (E : LinearElasticityPackage C) where
  stressStrainConstitutiveLawClosed : E.stressStrainConstitutiveLaw
  equilibriumEquationsClosed : E.equilibriumEquations
  boundaryConditionsClosed : E.boundaryConditions

def LinearElasticityClosed {C : CrystallographyPackage} (E : LinearElasticityPackage C) : Prop :=
  E.stressStrainConstitutiveLaw ∧ E.equilibriumEquations ∧ E.boundaryConditions

theorem linear_elasticity_closed_from_evidence {C : CrystallographyPackage} (E : LinearElasticityPackage C) (Ev : LinearElasticityEvidence E) : LinearElasticityClosed E := by
  exact And.intro Ev.stressStrainConstitutiveLawClosed (And.intro Ev.equilibriumEquationsClosed Ev.boundaryConditionsClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse