import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure StressState where
  stressTensor : List (List Float)
  vonMisesStress : Float

definition fractureCriterionMet (S : StressState) (yieldStrength : Float) : Prop := S.vonMisesStress ≥ yieldStrength

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
