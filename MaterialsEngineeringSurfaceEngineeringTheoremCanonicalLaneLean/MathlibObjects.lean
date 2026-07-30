import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SurfaceEngineeringSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SurfaceEngineeringAdmittedObject where
  space : SurfaceEngineeringSpace
  surfaceStructure : Prop
  coatingValid : Prop
  performanceModel : Type
  performanceTopology : TopologicalSpace performanceModel
  performanceGuaranteed : Prop
  conclusion : performanceGuaranteed

structure SurfaceEngineeringEndgameState where
  object : SurfaceEngineeringAdmittedObject

def SurfaceEngineeringWitnessClosed (O : SurfaceEngineeringAdmittedObject) : Prop :=
  O.performanceGuaranteed

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse