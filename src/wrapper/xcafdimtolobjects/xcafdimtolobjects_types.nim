import ../ncollection/ncollection_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types

type
  XCAFDimTolObjectsDataMapOfToleranceDatum* = NCollectionDataMap[
      Handle[XCAFDimTolObjectsGeomToleranceObject],
      Handle[XCAFDimTolObjectsDatumObject], TColStdMapTransientHasher]

  XCAFDimTolObjectsDatumModifWithValue* {.size: sizeof(cint),
      importcpp: "XCAFDimTolObjects_DatumModifWithValue",
      header: "XCAFDimTolObjects_DatumModifWithValue.hxx".} = enum
    XCAFDimTolObjectsDatumModifWithValueNone,
    XCAFDimTolObjectsDatumModifWithValueCircularOrCylindrical,
    XCAFDimTolObjectsDatumModifWithValueDistance,
    XCAFDimTolObjectsDatumModifWithValueProjected,
    XCAFDimTolObjectsDatumModifWithValueSpherical

  XCAFDimTolObjectsDatumObject* {.importcpp: "XCAFDimTolObjects_DatumObject",
                                 header: "XCAFDimTolObjects_DatumObject.hxx",
                                 bycopy.} = object of StandardTransient

  HandleXCAFDimTolObjectsDatumObject* = Handle[XCAFDimTolObjectsDatumObject]

  XCAFDimTolObjectsDatumObjectSequence* = NCollectionSequence[
      Handle[XCAFDimTolObjectsDatumObject]]

  XCAFDimTolObjectsDatumSingleModif* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DatumSingleModif", header: "XCAFDimTolObjects_DatumSingleModif.hxx".} = enum
    XCAFDimTolObjectsDatumSingleModifAnyCrossSection,
    XCAFDimTolObjectsDatumSingleModifAnyLongitudinalSection,
    XCAFDimTolObjectsDatumSingleModifBasic,
    XCAFDimTolObjectsDatumSingleModifContactingFeature,
    XCAFDimTolObjectsDatumSingleModifDegreeOfFreedomConstraintU,
    XCAFDimTolObjectsDatumSingleModifDegreeOfFreedomConstraintV,
    XCAFDimTolObjectsDatumSingleModifDegreeOfFreedomConstraintW,
    XCAFDimTolObjectsDatumSingleModifDegreeOfFreedomConstraintX,
    XCAFDimTolObjectsDatumSingleModifDegreeOfFreedomConstraintY,
    XCAFDimTolObjectsDatumSingleModifDegreeOfFreedomConstraintZ,
    XCAFDimTolObjectsDatumSingleModifDistanceVariable,
    XCAFDimTolObjectsDatumSingleModifFreeState,
    XCAFDimTolObjectsDatumSingleModifLeastMaterialRequirement,
    XCAFDimTolObjectsDatumSingleModifLine,
    XCAFDimTolObjectsDatumSingleModifMajorDiameter,
    XCAFDimTolObjectsDatumSingleModifMaximumMaterialRequirement,
    XCAFDimTolObjectsDatumSingleModifMinorDiameter,
    XCAFDimTolObjectsDatumSingleModifOrientation,
    XCAFDimTolObjectsDatumSingleModifPitchDiameter,
    XCAFDimTolObjectsDatumSingleModifPlane,
    XCAFDimTolObjectsDatumSingleModifPoint,
    XCAFDimTolObjectsDatumSingleModifTranslation

  XCAFDimTolObjectsDatumModifiersSequence* = NCollectionSequence[
      XCAFDimTolObjectsDatumSingleModif]

  XCAFDimTolObjectsDatumTargetType* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DatumTargetType", header: "XCAFDimTolObjects_DatumTargetType.hxx".} = enum
    XCAFDimTolObjectsDatumTargetTypePoint, XCAFDimTolObjectsDatumTargetTypeLine,
    XCAFDimTolObjectsDatumTargetTypeRectangle,
    XCAFDimTolObjectsDatumTargetTypeCircle, XCAFDimTolObjectsDatumTargetTypeArea

  XCAFDimTolObjectsDimensionFormVariance* {.size: sizeof(cint),
      importcpp: "XCAFDimTolObjects_DimensionFormVariance",
      header: "XCAFDimTolObjects_DimensionFormVariance.hxx".} = enum
    XCAFDimTolObjectsDimensionFormVarianceNone,
    XCAFDimTolObjectsDimensionFormVarianceA,
    XCAFDimTolObjectsDimensionFormVarianceB,
    XCAFDimTolObjectsDimensionFormVarianceC,
    XCAFDimTolObjectsDimensionFormVarianceCD,
    XCAFDimTolObjectsDimensionFormVarianceD,
    XCAFDimTolObjectsDimensionFormVarianceE,
    XCAFDimTolObjectsDimensionFormVarianceEF,
    XCAFDimTolObjectsDimensionFormVarianceF,
    XCAFDimTolObjectsDimensionFormVarianceFG,
    XCAFDimTolObjectsDimensionFormVarianceG,
    XCAFDimTolObjectsDimensionFormVarianceH,
    XCAFDimTolObjectsDimensionFormVarianceJS,
    XCAFDimTolObjectsDimensionFormVarianceJ,
    XCAFDimTolObjectsDimensionFormVarianceK,
    XCAFDimTolObjectsDimensionFormVarianceM,
    XCAFDimTolObjectsDimensionFormVarianceN,
    XCAFDimTolObjectsDimensionFormVarianceP,
    XCAFDimTolObjectsDimensionFormVarianceR,
    XCAFDimTolObjectsDimensionFormVarianceS,
    XCAFDimTolObjectsDimensionFormVarianceT,
    XCAFDimTolObjectsDimensionFormVarianceU,
    XCAFDimTolObjectsDimensionFormVarianceV,
    XCAFDimTolObjectsDimensionFormVarianceX,
    XCAFDimTolObjectsDimensionFormVarianceY,
    XCAFDimTolObjectsDimensionFormVarianceZ,
    XCAFDimTolObjectsDimensionFormVarianceZA,
    XCAFDimTolObjectsDimensionFormVarianceZB,
    XCAFDimTolObjectsDimensionFormVarianceZC

  XCAFDimTolObjectsDimensionGrade* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DimensionGrade", header: "XCAFDimTolObjects_DimensionGrade.hxx".} = enum
    XCAFDimTolObjectsDimensionGradeIT01, XCAFDimTolObjectsDimensionGradeIT0,
    XCAFDimTolObjectsDimensionGradeIT1, XCAFDimTolObjectsDimensionGradeIT2,
    XCAFDimTolObjectsDimensionGradeIT3, XCAFDimTolObjectsDimensionGradeIT4,
    XCAFDimTolObjectsDimensionGradeIT5, XCAFDimTolObjectsDimensionGradeIT6,
    XCAFDimTolObjectsDimensionGradeIT7, XCAFDimTolObjectsDimensionGradeIT8,
    XCAFDimTolObjectsDimensionGradeIT9, XCAFDimTolObjectsDimensionGradeIT10,
    XCAFDimTolObjectsDimensionGradeIT11, XCAFDimTolObjectsDimensionGradeIT12,
    XCAFDimTolObjectsDimensionGradeIT13, XCAFDimTolObjectsDimensionGradeIT14,
    XCAFDimTolObjectsDimensionGradeIT15, XCAFDimTolObjectsDimensionGradeIT16,
    XCAFDimTolObjectsDimensionGradeIT17, XCAFDimTolObjectsDimensionGradeIT18

  XCAFDimTolObjectsDimensionModif* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DimensionModif", header: "XCAFDimTolObjects_DimensionModif.hxx".} = enum
    XCAFDimTolObjectsDimensionModifControlledRadius,
    XCAFDimTolObjectsDimensionModifSquare,
    XCAFDimTolObjectsDimensionModifStatisticalTolerance,
    XCAFDimTolObjectsDimensionModifContinuousFeature,
    XCAFDimTolObjectsDimensionModifTwoPointSize,
    XCAFDimTolObjectsDimensionModifLocalSizeDefinedBySphere,
    XCAFDimTolObjectsDimensionModifLeastSquaresAssociationCriterion,
    XCAFDimTolObjectsDimensionModifMaximumInscribedAssociation,
    XCAFDimTolObjectsDimensionModifMinimumCircumscribedAssociation,
    XCAFDimTolObjectsDimensionModifCircumferenceDiameter,
    XCAFDimTolObjectsDimensionModifAreaDiameter,
    XCAFDimTolObjectsDimensionModifVolumeDiameter,
    XCAFDimTolObjectsDimensionModifMaximumSize,
    XCAFDimTolObjectsDimensionModifMinimumSize,
    XCAFDimTolObjectsDimensionModifAverageSize,
    XCAFDimTolObjectsDimensionModifMedianSize,
    XCAFDimTolObjectsDimensionModifMidRangeSize,
    XCAFDimTolObjectsDimensionModifRangeOfSizes,
    XCAFDimTolObjectsDimensionModifAnyRestrictedPortionOfFeature,
    XCAFDimTolObjectsDimensionModifAnyCrossSection,
    XCAFDimTolObjectsDimensionModifSpecificFixedCrossSection,
    XCAFDimTolObjectsDimensionModifCommonTolerance,
    XCAFDimTolObjectsDimensionModifFreeStateCondition,
    XCAFDimTolObjectsDimensionModifBetween

  XCAFDimTolObjectsDimensionModifiersSequence* = NCollectionSequence[
      XCAFDimTolObjectsDimensionModif]

  XCAFDimTolObjectsDimensionObject* {.importcpp: "XCAFDimTolObjects_DimensionObject", header: "XCAFDimTolObjects_DimensionObject.hxx",
                                     bycopy.} = object of StandardTransient

  HandleXCAFDimTolObjectsDimensionObject* = Handle[
      XCAFDimTolObjectsDimensionObject]

  XCAFDimTolObjectsDimensionObjectSequence* = NCollectionSequence[
      Handle[XCAFDimTolObjectsDimensionObject]]

  XCAFDimTolObjectsDimensionQualifier* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DimensionQualifier", header: "XCAFDimTolObjects_DimensionQualifier.hxx".} = enum
    XCAFDimTolObjectsDimensionQualifierNone,
    XCAFDimTolObjectsDimensionQualifierMin,
    XCAFDimTolObjectsDimensionQualifierMax,
    XCAFDimTolObjectsDimensionQualifierAvg

  XCAFDimTolObjectsDimensionType* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_DimensionType", header: "XCAFDimTolObjects_DimensionType.hxx".} = enum
    XCAFDimTolObjectsDimensionTypeLocationNone,
    XCAFDimTolObjectsDimensionTypeLocationCurvedDistance,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistance,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromCenterToOuter,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromCenterToInner,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromOuterToCenter,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromOuterToOuter,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromOuterToInner,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromInnerToCenter,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromInnerToOuter,
    XCAFDimTolObjectsDimensionTypeLocationLinearDistanceFromInnerToInner,
    XCAFDimTolObjectsDimensionTypeLocationAngular,
    XCAFDimTolObjectsDimensionTypeLocationOriented,
    XCAFDimTolObjectsDimensionTypeLocationWithPath,
    XCAFDimTolObjectsDimensionTypeSizeCurveLength,
    XCAFDimTolObjectsDimensionTypeSizeDiameter,
    XCAFDimTolObjectsDimensionTypeSizeSphericalDiameter,
    XCAFDimTolObjectsDimensionTypeSizeRadius,
    XCAFDimTolObjectsDimensionTypeSizeSphericalRadius,
    XCAFDimTolObjectsDimensionTypeSizeToroidalMinorDiameter,
    XCAFDimTolObjectsDimensionTypeSizeToroidalMajorDiameter,
    XCAFDimTolObjectsDimensionTypeSizeToroidalMinorRadius,
    XCAFDimTolObjectsDimensionTypeSizeToroidalMajorRadius,
    XCAFDimTolObjectsDimensionTypeSizeToroidalHighMajorDiameter,
    XCAFDimTolObjectsDimensionTypeSizeToroidalLowMajorDiameter,
    XCAFDimTolObjectsDimensionTypeSizeToroidalHighMajorRadius,
    XCAFDimTolObjectsDimensionTypeSizeToroidalLowMajorRadius,
    XCAFDimTolObjectsDimensionTypeSizeThickness,
    XCAFDimTolObjectsDimensionTypeSizeAngular,
    XCAFDimTolObjectsDimensionTypeSizeWithPath,
    XCAFDimTolObjectsDimensionTypeCommonLabel,
    XCAFDimTolObjectsDimensionTypeDimensionPresentation

  XCAFDimTolObjectsGeomToleranceMatReqModif* {.size: sizeof(cint),
      importcpp: "XCAFDimTolObjects_GeomToleranceMatReqModif",
      header: "XCAFDimTolObjects_GeomToleranceMatReqModif.hxx".} = enum
    XCAFDimTolObjectsGeomToleranceMatReqModifNone,
    XCAFDimTolObjectsGeomToleranceMatReqModifM,
    XCAFDimTolObjectsGeomToleranceMatReqModifL

  XCAFDimTolObjectsGeomToleranceModif* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_GeomToleranceModif", header: "XCAFDimTolObjects_GeomToleranceModif.hxx".} = enum
    XCAFDimTolObjectsGeomToleranceModifAnyCrossSection,
    XCAFDimTolObjectsGeomToleranceModifCommonZone,
    XCAFDimTolObjectsGeomToleranceModifEachRadialElement,
    XCAFDimTolObjectsGeomToleranceModifFreeState,
    XCAFDimTolObjectsGeomToleranceModifLeastMaterialRequirement,
    XCAFDimTolObjectsGeomToleranceModifLineElement,
    XCAFDimTolObjectsGeomToleranceModifMajorDiameter,
    XCAFDimTolObjectsGeomToleranceModifMaximumMaterialRequirement,
    XCAFDimTolObjectsGeomToleranceModifMinorDiameter,
    XCAFDimTolObjectsGeomToleranceModifNotConvex,
    XCAFDimTolObjectsGeomToleranceModifPitchDiameter,
    XCAFDimTolObjectsGeomToleranceModifReciprocityRequirement,
    XCAFDimTolObjectsGeomToleranceModifSeparateRequirement,
    XCAFDimTolObjectsGeomToleranceModifStatisticalTolerance,
    XCAFDimTolObjectsGeomToleranceModifTangentPlane,
    XCAFDimTolObjectsGeomToleranceModifAllAround,
    XCAFDimTolObjectsGeomToleranceModifAllOver

  XCAFDimTolObjectsGeomToleranceModifiersSequence* = NCollectionSequence[
      XCAFDimTolObjectsGeomToleranceModif]

  XCAFDimTolObjectsGeomToleranceObject* {.
      importcpp: "XCAFDimTolObjects_GeomToleranceObject",
      header: "XCAFDimTolObjects_GeomToleranceObject.hxx", bycopy.} = object of StandardTransient

  HandleXCAFDimTolObjectsGeomToleranceObject* = Handle[
      XCAFDimTolObjectsGeomToleranceObject]

  XCAFDimTolObjectsGeomToleranceObjectSequence* = NCollectionSequence[
      Handle[XCAFDimTolObjectsGeomToleranceObject]]

  XCAFDimTolObjectsGeomToleranceType* {.size: sizeof(cint), importcpp: "XCAFDimTolObjects_GeomToleranceType", header: "XCAFDimTolObjects_GeomToleranceType.hxx".} = enum
    XCAFDimTolObjectsGeomToleranceTypeNone,
    XCAFDimTolObjectsGeomToleranceTypeAngularity,
    XCAFDimTolObjectsGeomToleranceTypeCircularRunout,
    XCAFDimTolObjectsGeomToleranceTypeCircularityOrRoundness,
    XCAFDimTolObjectsGeomToleranceTypeCoaxiality,
    XCAFDimTolObjectsGeomToleranceTypeConcentricity,
    XCAFDimTolObjectsGeomToleranceTypeCylindricity,
    XCAFDimTolObjectsGeomToleranceTypeFlatness,
    XCAFDimTolObjectsGeomToleranceTypeParallelism,
    XCAFDimTolObjectsGeomToleranceTypePerpendicularity,
    XCAFDimTolObjectsGeomToleranceTypePosition,
    XCAFDimTolObjectsGeomToleranceTypeProfileOfLine,
    XCAFDimTolObjectsGeomToleranceTypeProfileOfSurface,
    XCAFDimTolObjectsGeomToleranceTypeStraightness,
    XCAFDimTolObjectsGeomToleranceTypeSymmetry,
    XCAFDimTolObjectsGeomToleranceTypeTotalRunout

  XCAFDimTolObjectsGeomToleranceTypeValue* {.size: sizeof(cint),
      importcpp: "XCAFDimTolObjects_GeomToleranceTypeValue",
      header: "XCAFDimTolObjects_GeomToleranceTypeValue.hxx".} = enum
    XCAFDimTolObjectsGeomToleranceTypeValueNone,
    XCAFDimTolObjectsGeomToleranceTypeValueDiameter,
    XCAFDimTolObjectsGeomToleranceTypeValueSphericalDiameter

  XCAFDimTolObjectsGeomToleranceZoneModif* {.size: sizeof(cint),
      importcpp: "XCAFDimTolObjects_GeomToleranceZoneModif",
      header: "XCAFDimTolObjects_GeomToleranceZoneModif.hxx".} = enum
    XCAFDimTolObjectsGeomToleranceZoneModifNone,
    XCAFDimTolObjectsGeomToleranceZoneModifProjected,
    XCAFDimTolObjectsGeomToleranceZoneModifRunout,
    XCAFDimTolObjectsGeomToleranceZoneModifNonUniform

  XCAFDimTolObjectsToleranceZoneAffectedPlane* {.size: sizeof(cint),
      importcpp: "XCAFDimTolObjects_ToleranceZoneAffectedPlane",
      header: "XCAFDimTolObjects_ToleranceZoneAffectedPlane.hxx".} = enum
    XCAFDimTolObjectsToleranceZoneAffectedPlaneNone,
    XCAFDimTolObjectsToleranceZoneAffectedPlaneIntersection,
    XCAFDimTolObjectsToleranceZoneAffectedPlaneOrientation

  XCAFDimTolObjectsTool* {.importcpp: "XCAFDimTolObjects_Tool",
                          header: "XCAFDimTolObjects_Tool.hxx", bycopy.} = object


