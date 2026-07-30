import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure CrackGeometry where
  crackLength : Float
  crackTipPosition : (Float × Float × Float)
  appliedLoad : Float

definition crackGrowth (C : CrackGeometry) (fractureToughness : Float) : Prop := C.appliedLoad > fractureToughness / (C.crackLength ^ 0.5)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
