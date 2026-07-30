import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure ElasticityPlasticityPackage where
  elasticModuli : Type
  yieldCriterion : Prop
  hardeningLaw : Prop
  stressStrainRelation : Prop
  residualStress : Prop

structure ElasticityPlasticityEvidence (E : ElasticityPlasticityPackage) where
  elasticModuliClosed : E.elasticModuli
  yieldCriterionClosed : E.yieldCriterion
  hardeningLawClosed : E.hardeningLaw
  stressStrainRelationClosed : E.stressStrainRelation
  residualStressClosed : E.residualStress

def ElasticityPlasticityClosed (E : ElasticityPlasticityPackage) : Prop :=
  E.elasticModuli ∧ E.yieldCriterion ∧ E.hardeningLaw ∧ E.stressStrainRelation ∧ E.residualStress

theorem elasticity_plasticity_closed_from_evidence (E : ElasticityPlasticityPackage) (Ev : ElasticityPlasticityEvidence E) :
    ElasticityPlasticityClosed E := by
  exact And.intro Ev.elasticModuliClosed
    (And.intro Ev.yieldCriterionClosed
      (And.intro Ev.hardeningLawClosed (And.intro Ev.stressStrainRelationClosed Ev.residualStressClosed)))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse