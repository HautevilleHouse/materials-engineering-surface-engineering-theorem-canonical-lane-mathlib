import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  basisVectors : bravaisLattice -> Type v
  spaceGroup : Type w
  millerIndices : Type x
  latticeSymmetry : Prop
  diffractionPatternKnown : Prop
  crystalSystemClassified : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeSymmetryClosed : C.latticeSymmetry
  diffractionPatternKnownClosed : C.diffractionPatternKnown
  crystalSystemClassifiedClosed : C.crystalSystemClassified

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeSymmetry ∧ C.diffractionPatternKnown ∧ C.crystalSystemClassified

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeSymmetryClosed (And.intro E.diffractionPatternKnownClosed E.crystalSystemClassifiedClosed)

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse