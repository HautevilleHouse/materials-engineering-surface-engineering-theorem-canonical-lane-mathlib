import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure SurfaceEngineeringMaterial where
  baseMetal : Type
  coating : Type
  interfaceRegion : Type
  surfaceModification : Prop
  loadHistory : Type
  environment : Type

structure SurfaceEngineeringEvidence (M : SurfaceEngineeringMaterial) where
  surfaceModificationClosed : M.surfaceModification
  interfaceStability : Prop
  coatingAdhesion : Prop

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse