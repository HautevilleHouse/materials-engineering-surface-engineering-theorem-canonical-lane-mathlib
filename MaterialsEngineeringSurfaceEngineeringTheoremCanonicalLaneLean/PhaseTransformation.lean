import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure PhaseTransformationPackage {C : CrystallographyPackage} where
  phaseDiagram : Type
  gibbsFreeEnergy : Prop
  transformationKinetics : Prop
  nucleationAndGrowth : Prop
  surfacePhaseStability : Prop

structure PhaseTransformationEvidence {C : CrystallographyPackage} (P : PhaseTransformationPackage C) where
  phaseDiagramClosed : P.phaseDiagram
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  transformationKineticsClosed : P.transformationKinetics
  nucleationAndGrowthClosed : P.nucleationAndGrowth
  surfacePhaseStabilityClosed : P.surfacePhaseStability

def PhaseTransformationClosed {C : CrystallographyPackage} (P : PhaseTransformationPackage C) : Prop :=
  P.phaseDiagram ∧ P.gibbsFreeEnergy ∧ P.transformationKinetics ∧ P.nucleationAndGrowth ∧ P.surfacePhaseStability

theorem phase_transformation_closed_from_evidence {C : CrystallographyPackage} (P : PhaseTransformationPackage C)
    (Ev : PhaseTransformationEvidence P) : PhaseTransformationClosed P := by
  exact And.intro Ev.phaseDiagramClosed
    (And.intro Ev.gibbsFreeEnergyClosed
      (And.intro Ev.transformationKineticsClosed
        (And.intro Ev.nucleationAndGrowthClosed Ev.surfacePhaseStabilityClosed)))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse