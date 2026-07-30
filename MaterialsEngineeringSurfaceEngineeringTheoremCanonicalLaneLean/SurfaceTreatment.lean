import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean.PhaseTransformation

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure SurfaceTreatmentPackage {C : CrystallographyPackage} {P : PhaseTransformationPackage C} where
  coatingProcess : Prop
  diffusionLayer : Prop
  hardnessProfile : Prop
  wearResistance : Prop
  corrosionResistance : Prop

structure SurfaceTreatmentEvidence {C : CrystallographyPackage} {P : PhaseTransformationPackage C}
    (S : SurfaceTreatmentPackage C P) where
  coatingProcessClosed : S.coatingProcess
  diffusionLayerClosed : S.diffusionLayer
  hardnessProfileClosed : S.hardnessProfile
  wearResistanceClosed : S.wearResistance
  corrosionResistanceClosed : S.corrosionResistance

def SurfaceTreatmentClosed {C : CrystallographyPackage} {P : PhaseTransformationPackage C}
    (S : SurfaceTreatmentPackage C P) : Prop :=
  S.coatingProcess ∧ S.diffusionLayer ∧ S.hardnessProfile ∧ S.wearResistance ∧ S.corrosionResistance

theorem surface_treatment_closed_from_evidence {C : CrystallographyPackage} {P : PhaseTransformationPackage C}
    (S : SurfaceTreatmentPackage C P) (Ev : SurfaceTreatmentEvidence S) : SurfaceTreatmentClosed S := by
  exact And.intro Ev.coatingProcessClosed
    (And.intro Ev.diffusionLayerClosed
      (And.intro Ev.hardnessProfileClosed
        (And.intro Ev.wearResistanceClosed Ev.corrosionResistanceClosed)))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse