import materialsEngineeringSurfaceEngineeringTheorem.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  admits_coating? A.object.coatingPresent

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion (by
    sorry)

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
