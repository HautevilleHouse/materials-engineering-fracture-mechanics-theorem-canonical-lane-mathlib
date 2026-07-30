import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure FatigueCycle where
  stressAmplitude : Float
  meanStress : Float
  numberOfCycles : Nat

definition fatigueLifeMet (F : FatigueCycle) (enduranceLimit : Float) : Prop := F.stressAmplitude > enduranceLimit

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
