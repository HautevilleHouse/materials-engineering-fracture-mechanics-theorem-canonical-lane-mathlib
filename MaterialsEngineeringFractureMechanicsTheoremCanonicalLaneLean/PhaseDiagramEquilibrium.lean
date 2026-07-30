import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure PhaseEquilibrium where
  temperature : Float
  pressure : Float
  phaseComposition : List (String × Float)
  gibbsFreeEnergy : Float

definition phaseEquilibriumClosure (P : PhaseEquilibrium) : Prop := P.gibbsFreeEnergy ≤ 0

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
