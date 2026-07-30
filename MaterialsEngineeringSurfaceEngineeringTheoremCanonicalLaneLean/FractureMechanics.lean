import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackGrowthLaw : Prop
  fatiguePropagation : Prop
  fractureCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackGrowthLawClosed : F.crackGrowthLaw
  fatiguePropagationClosed : F.fatiguePropagation
  fractureCriterionClosed : F.fractureCriterion

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackGrowthLaw ∧ F.fatiguePropagation ∧ F.fractureCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackGrowthLawClosed (And.intro E.fatiguePropagationClosed E.fractureCriterionClosed)))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse