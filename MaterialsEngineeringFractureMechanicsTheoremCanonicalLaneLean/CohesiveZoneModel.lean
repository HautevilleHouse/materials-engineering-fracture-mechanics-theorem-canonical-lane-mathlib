import canonicalLaneMathlib.AdmissibleClass

/-!
# Cohesive Zone Model Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

structure CohesiveZoneModelPackage where
  tractionSeparationLaw : Prop
  cohesiveStrength : Prop
  fractureProcessZone : Prop

structure CohesiveZoneModelEvidence (C : CohesiveZoneModelPackage) where
  tractionSeparationLawClosed : C.tractionSeparationLaw
  cohesiveStrengthClosed : C.cohesiveStrength
  fractureProcessZoneClosed : C.fractureProcessZone

def CohesiveZoneModelClosed (C : CohesiveZoneModelPackage) : Prop :=
  C.tractionSeparationLaw ∧ C.cohesiveStrength ∧ C.fractureProcessZone

theorem cohesive_zone_model_closed_from_evidence (C : CohesiveZoneModelPackage) (E : CohesiveZoneModelEvidence C) :
    CohesiveZoneModelClosed C := by
  exact And.intro E.tractionSeparationLawClosed (And.intro E.cohesiveStrengthClosed E.fractureProcessZoneClosed)

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
