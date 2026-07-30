import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure ElasticityTensor where
  stiffnessMatrix : List (List Float)
  complianceMatrix : List (List Float)

definition isotropicElasticity (E : ElasticityTensor) : Prop := (List.length E.stiffnessMatrix = 6) ∧ (List.length E.complianceMatrix = 6)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
