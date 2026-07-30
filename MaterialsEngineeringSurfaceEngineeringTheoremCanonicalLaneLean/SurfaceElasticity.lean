import HautevilleHouse.MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean

structure SurfaceElasticityPackage {C : CrystallographyPackage} where
  stressStrainRelation : Prop
  elasticConstants : Type
  surfaceTension : Prop
  hookesLawValid : Prop
  strainEnergyDensity : Prop

structure SurfaceElasticityEvidence {C : CrystallographyPackage} (E : SurfaceElasticityPackage C) where
  stressStrainRelationClosed : E.stressStrainRelation
  surfaceTensionClosed : E.surfaceTension
  hookesLawValidClosed : E.hookesLawValid
  strainEnergyDensityClosed : E.strainEnergyDensity

def SurfaceElasticityClosed {C : CrystallographyPackage} (E : SurfaceElasticityPackage C) : Prop :=
  E.stressStrainRelation ∧ E.surfaceTension ∧ E.hookesLawValid ∧ E.strainEnergyDensity

theorem surface_elasticity_closed_from_evidence {C : CrystallographyPackage} (E : SurfaceElasticityPackage C)
    (Ev : SurfaceElasticityEvidence E) : SurfaceElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.surfaceTensionClosed
      (And.intro Ev.hookesLawValidClosed Ev.strainEnergyDensityClosed))

end MaterialsEngineeringSurfaceEngineeringTheoremCanonicalLaneLean
end HautevilleHouse