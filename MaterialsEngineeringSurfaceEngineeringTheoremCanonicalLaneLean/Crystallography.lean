import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type
  spaceGroup : Type
  bravaisLatticeClassified : Prop
  crystalSymmetryDetermined : Prop
  surfaceOrientationIndex : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  crystalSymmetryDeterminedClosed : C.crystalSymmetryDetermined
  surfaceOrientationIndexClosed : C.surfaceOrientationIndex

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.crystalSymmetryDetermined ∧ C.surfaceOrientationIndex

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.crystalSymmetryDeterminedClosed E.surfaceOrientationIndexClosed)

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse