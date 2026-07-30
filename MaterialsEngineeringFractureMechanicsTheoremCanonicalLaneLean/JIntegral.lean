import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure JIntegral where
  integralValue : ℝ
  pathIndependence : Prop
  energyReleaseRate : Prop
  crackGrowthCriterion : Prop

structure JIntegralEvidence (J : JIntegral) where
  pathIndependenceClosed : J.pathIndependence
  energyReleaseRateClosed : J.energyReleaseRate
  crackGrowthCriterionClosed : J.crackGrowthCriterion

def JIntegralClosed (J : JIntegral) : Prop :=
  J.pathIndependence ∧ J.energyReleaseRate ∧ J.crackGrowthCriterion

theorem j_integral_closed_from_evidence (J : JIntegral) (E : JIntegralEvidence J) :
    JIntegralClosed J := by
  exact And.intro E.pathIndependenceClosed (And.intro E.energyReleaseRateClosed E.crackGrowthCriterionClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse