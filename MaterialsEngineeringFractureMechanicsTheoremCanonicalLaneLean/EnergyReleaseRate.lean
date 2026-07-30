import canonicalLaneMathlib.AdmissibleClass

/-!
# Energy Release Rate Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure EnergyReleaseRatePackage where
  griffithCriterion : Prop
  criticalEnergyRelease : Prop
  crackExtensionStable : Prop

structure EnergyReleaseRateEvidence (E : EnergyReleaseRatePackage) where
  griffithCriterionClosed : E.griffithCriterion
  criticalEnergyReleaseClosed : E.criticalEnergyRelease
  crackExtensionStableClosed : E.crackExtensionStable

def EnergyReleaseRateClosed (E : EnergyReleaseRatePackage) : Prop :=
  E.griffithCriterion ∧ E.criticalEnergyRelease ∧ E.crackExtensionStable

theorem energy_release_rate_closed_from_evidence (E : EnergyReleaseRatePackage) (Ev : EnergyReleaseRateEvidence E) :
    EnergyReleaseRateClosed E := by
  exact And.intro Ev.griffithCriterionClosed (And.intro Ev.criticalEnergyReleaseClosed Ev.crackExtensionStableClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
