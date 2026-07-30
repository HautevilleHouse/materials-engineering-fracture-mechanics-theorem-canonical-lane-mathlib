import canonicalLaneMathlib.AdmissibleClass

/-! # Fracture Modes Package -/

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure FractureModesPackage where
  modeI : Prop
  modeII : Prop
  modeIII : Prop
  mixedMode : Prop

structure FractureModesEvidence (F : FractureModesPackage) where
  modeIClosed : F.modeI
  modeIIClosed : F.modeII
  modeIIIClosed : F.modeIII
  mixedModeClosed : F.mixedMode

def FractureModesClosed (F : FractureModesPackage) : Prop :=
  F.modeI ∧ F.modeII ∧ F.modeIII ∧ F.mixedMode

theorem fracture_modes_closed_from_evidence (F : FractureModesPackage) (Ev : FractureModesEvidence F) : FractureModesClosed F := by
  exact And.intro Ev.modeIClosed (And.intro Ev.modeIIClosed (And.intro Ev.modeIIIClosed Ev.mixedModeClosed))

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse