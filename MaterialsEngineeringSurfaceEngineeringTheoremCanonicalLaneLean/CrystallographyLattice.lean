import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure CrystallographyLatticePackage where
  bravaisLattice : Type
  reciprocalLattice : Type
  millerIndices : Type
  surfaceOrientation : Prop
  surfaceReconstruction : Prop

structure CrystallographyLatticeEvidence (C : CrystallographyLatticePackage) where
  surfaceOrientationClosed : C.surfaceOrientation
  surfaceReconstructionClosed : C.surfaceReconstruction

def CrystallographyLatticeClosed (C : CrystallographyLatticePackage) : Prop :=
  C.surfaceOrientation ∧ C.surfaceReconstruction

theorem crystallography_lattice_closed_from_evidence (C : CrystallographyLatticePackage)
    (E : CrystallographyLatticeEvidence C) : CrystallographyLatticeClosed C := by
  exact And.intro E.surfaceOrientationClosed E.surfaceReconstructionClosed

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse