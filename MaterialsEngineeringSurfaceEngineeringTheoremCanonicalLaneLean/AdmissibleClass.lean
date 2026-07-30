import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure SurfaceAdmittedObject where
  material : Type
  surfaceTopology : TopologicalSpace material
  coatingPresent : Prop
  surfaceTreatment : Prop
  defectDensity : Prop
  conclusion : defectDensity → Prop

structure AdmissibleClass where
  object : SurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  admits_coating? A.object.coatingPresent ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
