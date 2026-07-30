import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  latticeVectors : Type v
  bravaisLatticeClassified : Prop
  symmetryGroup : Type w
  basisAtoms : List (Type x)
  bravaisLatticeClassifiedTerm : bravaisLatticeClassified

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact E.bravaisLatticeClassifiedClosed

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse