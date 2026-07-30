import canonicalLaneMathlib.AdmissibleClass

/-!
# Crack-Tip Field Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure CrackTipFieldPackage where
  stressIntensityFactor : Prop
  asymptoticField : Prop
  singularityDominance : Prop

structure CrackTipFieldEvidence (C : CrackTipFieldPackage) where
  stressIntensityFactorClosed : C.stressIntensityFactor
  asymptoticFieldClosed : C.asymptoticField
  singularityDominanceClosed : C.singularityDominance

def CrackTipFieldClosed (C : CrackTipFieldPackage) : Prop :=
  C.stressIntensityFactor ∧ C.asymptoticField ∧ C.singularityDominance

theorem crack_tip_field_closed_from_evidence (C : CrackTipFieldPackage) (E : CrackTipFieldEvidence C) :
    CrackTipFieldClosed C := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.asymptoticFieldClosed E.singularityDominanceClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
