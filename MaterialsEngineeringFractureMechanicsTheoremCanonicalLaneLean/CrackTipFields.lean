import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure CrackTipField (stressExponent : ℕ) where
  singularityStrength : ℝ
  displacementField : ℝ → ℝ → ℝ -- (r, θ) ↦ displacement
  asymptoticDominance : Prop
  KField : ℝ -- stress intensity factor

structure CrackTipFieldEvidence (s : ℕ) (C : CrackTipField s) where
  singularityStrengthClosed : C.singularityStrength = 1/(2 : ℝ)^(s : ℝ)
  KFieldClosed : C.KField > 0
  asymptoticDominanceClosed : C.asymptoticDominance

def CrackTipFieldClosed (s : ℕ) (C : CrackTipField s) : Prop :=
  C.singularityStrength = 1/(2 : ℝ)^(s : ℝ) ∧ C.KField > 0 ∧ C.asymptoticDominance

theorem crack_tip_field_closed_from_evidence (s : ℕ) (C : CrackTipField s)
    (E : CrackTipFieldEvidence s C) : CrackTipFieldClosed s C := by
  exact And.intro E.singularityStrengthClosed (And.intro E.KFieldClosed E.asymptoticDominanceClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse