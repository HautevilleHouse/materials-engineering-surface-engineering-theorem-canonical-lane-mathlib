import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureCompositionSpace : Type
  phaseBoundaries : Prop
  equilibriumPhases : Prop
  freeEnergyCurves : Prop
  phaseTransformationKinetics : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumPhasesClosed : P.equilibriumPhases
  freeEnergyCurvesClosed : P.freeEnergyCurves
  phaseTransformationKineticsClosed : P.phaseTransformationKinetics

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.equilibriumPhases ∧ P.freeEnergyCurves ∧ P.phaseTransformationKinetics

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.equilibriumPhasesClosed (And.intro E.freeEnergyCurvesClosed E.phaseTransformationKineticsClosed))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse