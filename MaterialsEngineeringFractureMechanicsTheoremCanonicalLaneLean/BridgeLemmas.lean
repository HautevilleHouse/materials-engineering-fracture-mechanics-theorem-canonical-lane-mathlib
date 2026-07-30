import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringFractureMechanicsTheoremCanonicalLaneLean
end HautevilleHouse