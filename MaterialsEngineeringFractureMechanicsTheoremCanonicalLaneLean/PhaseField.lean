import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean.CrackTipFields

/-! # Phase Field Fracture Package -/

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure PhaseFieldPackage (E : ElasticityPackage) (C : CrackTipFieldsPackage E) where
  orderParameterEvolution : Prop
  fractureEnergy : Prop
  lengthScaleParameter : Prop

structure PhaseFieldEvidence (E : ElasticityPackage) (C : CrackTipFieldsPackage E) (P : PhaseFieldPackage E C) where
  orderParameterEvolutionClosed : P.orderParameterEvolution
  fractureEnergyClosed : P.fractureEnergy
  lengthScaleParameterClosed : P.lengthScaleParameter

def PhaseFieldClosed (E : ElasticityPackage) (C : CrackTipFieldsPackage E) (P : PhaseFieldPackage E C) : Prop :=
  P.orderParameterEvolution ∧ P.fractureEnergy ∧ P.lengthScaleParameter

theorem phase_field_closed_from_evidence (E : ElasticityPackage) (C : CrackTipFieldsPackage E) (P : PhaseFieldPackage E C) (Ev : PhaseFieldEvidence E C P) : PhaseFieldClosed E C P := by
  exact And.intro Ev.orderParameterEvolutionClosed (And.intro Ev.fractureEnergyClosed Ev.lengthScaleParameterClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse