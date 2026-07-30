import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  compositionSpace : Type v
  phaseBoundaries : Type w
  equilibriumPhases : Type x
  gibbsFreeEnergyModeled : Prop
  phaseRuleSatisfied : Prop
  eutecticPointIdentified : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  gibbsFreeEnergyModeledClosed : P.gibbsFreeEnergyModeled
  phaseRuleSatisfiedClosed : P.phaseRuleSatisfied
  eutecticPointIdentifiedClosed : P.eutecticPointIdentified

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbsFreeEnergyModeled ∧ P.phaseRuleSatisfied ∧ P.eutecticPointIdentified

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.gibbsFreeEnergyModeledClosed (And.intro E.phaseRuleSatisfiedClosed E.eutecticPointIdentifiedClosed)

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse