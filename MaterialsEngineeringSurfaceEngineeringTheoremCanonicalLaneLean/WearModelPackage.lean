import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure WearModelPackage where
  abrasiveWearCoefficient : Prop
  adhesiveWearRate : Prop
  erosiveWearModel : Prop
  wearTransitionMap : Prop

structure WearModelEvidence (W : WearModelPackage) where
  abrasiveWearCoefficientClosed : W.abrasiveWearCoefficient
  adhesiveWearRateClosed : W.adhesiveWearRate
  erosiveWearModelClosed : W.erosiveWearModel
  wearTransitionMapClosed : W.wearTransitionMap

def WearModelClosed (W : WearModelPackage) : Prop :=
  W.abrasiveWearCoefficient ∧ W.adhesiveWearRate ∧ W.erosiveWearModel ∧ W.wearTransitionMap

theorem wear_model_closed_from_evidence (W : WearModelPackage) (E : WearModelEvidence W) :
    WearModelClosed W := by
  exact And.intro E.abrasiveWearCoefficientClosed (And.intro E.adhesiveWearRateClosed (And.intro E.erosiveWearModelClosed E.wearTransitionMapClosed))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse