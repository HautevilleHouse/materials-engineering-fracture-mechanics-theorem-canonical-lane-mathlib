import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure FractureSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FractureAdmittedObject where
  space : FractureSpace
  crackPropagation : Prop
  stressField : Type
  fractureCriterion : Prop
  conclusion : crackPropagation

structure FractureEndgameState where
  object : FractureAdmittedObject

def FractureWitnessClosed (O : FractureAdmittedObject) : Prop :=
  O.crackPropagation

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse