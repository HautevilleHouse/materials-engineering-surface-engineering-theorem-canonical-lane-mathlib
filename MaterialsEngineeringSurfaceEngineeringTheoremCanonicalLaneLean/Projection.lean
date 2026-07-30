import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def surfaceEngineeringProjection : Projection SurfaceEngineeringEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem surface_engineering_projection_idempotent (x : SurfaceEngineeringEndgameState) :
    surfaceEngineeringProjection.toFun (surfaceEngineeringProjection.toFun x) = surfaceEngineeringProjection.toFun x := by
  exact surfaceEngineeringProjection.idempotent x

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse