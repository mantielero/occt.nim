import ../selectmgr/selectmgr_types
import ../standard/standard_types
import prsdim_ais_types

type
  PrsDimDimensionSelectionMode* {.size: sizeof(cint),
                                 importcpp: "PrsDim_DimensionSelectionMode",
                                 header: "PrsDim_DimensionSelectionMode.hxx".} = enum
    PrsDimDimensionSelectionModeAll, PrsDimDimensionSelectionModeLine,
    PrsDimDimensionSelectionModeText

  PrsDimDisplaySpecialSymbol* {.size: sizeof(cint),
                               importcpp: "PrsDim_DisplaySpecialSymbol",
                               header: "PrsDim_DisplaySpecialSymbol.hxx".} = enum
    PrsDimDisplaySpecialSymbolNo, PrsDimDisplaySpecialSymbolBefore,
    PrsDimDisplaySpecialSymbolAfter

  PrsDimKindOfDimension* {.size: sizeof(cint), importcpp: "PrsDim_KindOfDimension",
                          header: "PrsDim_KindOfDimension.hxx".} = enum
    PrsDimKOD_NONE, PrsDimKOD_LENGTH, PrsDimKOD_PLANEANGLE, PrsDimKOD_SOLIDANGLE,
    PrsDimKOD_AREA, PrsDimKOD_VOLUME, PrsDimKOD_MASS, PrsDimKOD_TIME,
    PrsDimKOD_RADIUS, PrsDimKOD_DIAMETER, PrsDimKOD_CHAMF2D, PrsDimKOD_CHAMF3D,
    PrsDimKOD_OFFSET, PrsDimKOD_ELLIPSERADIUS

  PrsDimKindOfRelation* {.size: sizeof(cint), importcpp: "PrsDim_KindOfRelation",
                         header: "PrsDim_KindOfRelation.hxx".} = enum
    PrsDimKOR_NONE = 0, PrsDimKOR_CONCENTRIC, PrsDimKOR_EQUALDISTANCE,
    PrsDimKOR_EQUALRADIUS, PrsDimKOR_FIX, PrsDimKOR_IDENTIC, PrsDimKOR_OFFSET,
    PrsDimKOR_PARALLEL, PrsDimKOR_PERPENDICULAR, PrsDimKOR_TANGENT,
    PrsDimKOR_SYMMETRIC

  PrsDimKindOfSurface* {.size: sizeof(cint), importcpp: "PrsDim_KindOfSurface",
                        header: "PrsDim_KindOfSurface.hxx".} = enum
    PrsDimKOS_Plane, PrsDimKOS_Cylinder, PrsDimKOS_Cone, PrsDimKOS_Sphere,
    PrsDimKOS_Torus, PrsDimKOS_Revolution, PrsDimKOS_Extrusion,
    PrsDimKOS_OtherSurface

  PrsDimTypeOfAngle* {.size: sizeof(cint), importcpp: "PrsDim_TypeOfAngle",
                      header: "PrsDim_TypeOfAngle.hxx".} = enum
    PrsDimTypeOfAngleInterior, 
    PrsDimTypeOfAngleExterior 

  PrsDimTypeOfAngleArrowVisibility* {.size: sizeof(cint), importcpp: "PrsDim_TypeOfAngleArrowVisibility", header: "PrsDim_TypeOfAngleArrowVisibility.hxx".} = enum
    PrsDimTypeOfAngleArrowVisibilityBoth, 
    PrsDimTypeOfAngleArrowVisibilityFirst, 
    PrsDimTypeOfAngleArrowVisibilitySecond, 
    PrsDimTypeOfAngleArrowVisibilityNone 

  PrsDimTypeOfDist* {.size: sizeof(cint), importcpp: "PrsDim_TypeOfDist",
                     header: "PrsDim_TypeOfDist.hxx".} = enum
    PrsDimTypeOfDistUnknown, PrsDimTypeOfDistHorizontal, PrsDimTypeOfDistVertical

  PrsDim* {.importcpp: "PrsDim", header: "PrsDim.hxx", bycopy.} = object 

  PrsDimDimensionComputeMode* {.size: sizeof(cint),
                               importcpp: "PrsDim_Dimension::ComputeMode",
                               header: "PrsDim_Dimension.hxx".} = enum
    ComputeModeAll = 0,         
    ComputeModeLine = 1,        
    ComputeModeText = 2

  # PrsDimDimension* {.importcpp: "PrsDim_Dimension", header: "PrsDim_Dimension.hxx",
  #                   bycopy.} = object of AIS_InteractiveObject 

  PrsDimDiameterDimension* {.importcpp: "PrsDim_DiameterDimension",
                            header: "PrsDim_DiameterDimension.hxx", bycopy.} = object of PrsDimDimension 

  HandlePrsDimDiameterDimension* = Handle[PrsDimDiameterDimension]

  PrsDimAngleDimension* {.importcpp: "PrsDim_AngleDimension",
                         header: "PrsDim_AngleDimension.hxx", bycopy.} = object of PrsDimDimension 

  HandlePrsDimAngleDimension* = Handle[PrsDimAngleDimension]

  HandlePrsDimDimension* = Handle[PrsDimDimension]

  PrsDimDimensionOwner* {.importcpp: "PrsDim_DimensionOwner",
                         header: "PrsDim_DimensionOwner.hxx", bycopy.} = object of SelectMgrEntityOwner 

  HandlePrsDimDimensionOwner* = Handle[PrsDimDimensionOwner]

  PrsDimLengthDimension* {.importcpp: "PrsDim_LengthDimension",
                          header: "PrsDim_LengthDimension.hxx", bycopy.} = object of PrsDimDimension 

  HandlePrsDimLengthDimension* = Handle[PrsDimLengthDimension]

  PrsDimRadiusDimension* {.importcpp: "PrsDim_RadiusDimension",
                          header: "PrsDim_RadiusDimension.hxx", bycopy.} = object of PrsDimDimension 

  HandlePrsDimRadiusDimension* = Handle[PrsDimRadiusDimension]

  # PrsDimRelation* {.importcpp: "PrsDim_Relation", header: "PrsDim_Relation.hxx",
  #                  bycopy.} = object of AIS_InteractiveObject 

  PrsDimPerpendicularRelation* {.importcpp: "PrsDim_PerpendicularRelation",
                                header: "PrsDim_PerpendicularRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimPerpendicularRelation* = Handle[PrsDimPerpendicularRelation]

  PrsDimParallelRelation* {.importcpp: "PrsDim_ParallelRelation",
                           header: "PrsDim_ParallelRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimParallelRelation* = Handle[PrsDimParallelRelation]

  PrsDimOffsetDimension* {.importcpp: "PrsDim_OffsetDimension",
                          header: "PrsDim_OffsetDimension.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimOffsetDimension* = Handle[PrsDimOffsetDimension]

  PrsDimMidPointRelation* {.importcpp: "PrsDim_MidPointRelation",
                           header: "PrsDim_MidPointRelation.hxx", bycopy.} = object of PrsDimRelation

  HandlePrsDimMidPointRelation* = Handle[PrsDimMidPointRelation]

  PrsDimIdenticRelation* {.importcpp: "PrsDim_IdenticRelation",
                          header: "PrsDim_IdenticRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimIdenticRelation* = Handle[PrsDimIdenticRelation]

  PrsDimFixRelation* {.importcpp: "PrsDim_FixRelation",
                      header: "PrsDim_FixRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimFixRelation* = Handle[PrsDimFixRelation]

  PrsDimEqualRadiusRelation* {.importcpp: "PrsDim_EqualRadiusRelation",
                              header: "PrsDim_EqualRadiusRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimEqualRadiusRelation* = Handle[PrsDimEqualRadiusRelation]

  PrsDimEqualDistanceRelation* {.importcpp: "PrsDim_EqualDistanceRelation",
                                header: "PrsDim_EqualDistanceRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimEqualDistanceRelation* = Handle[PrsDimEqualDistanceRelation]

  PrsDimEllipseRadiusDimension* {.importcpp: "PrsDim_EllipseRadiusDimension",
                                 header: "PrsDim_EllipseRadiusDimension.hxx",
                                 bycopy.} = object of PrsDimRelation

  PrsDimMinRadiusDimension* {.importcpp: "PrsDim_MinRadiusDimension",
                             header: "PrsDim_MinRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension 

  HandlePrsDimMinRadiusDimension* = Handle[PrsDimMinRadiusDimension]

  PrsDimMaxRadiusDimension* {.importcpp: "PrsDim_MaxRadiusDimension",
                             header: "PrsDim_MaxRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension 

  HandlePrsDimMaxRadiusDimension* = Handle[PrsDimMaxRadiusDimension]

  HandlePrsDimEllipseRadiusDimension* = Handle[PrsDimEllipseRadiusDimension]

  PrsDimConcentricRelation* {.importcpp: "PrsDim_ConcentricRelation",
                             header: "PrsDim_ConcentricRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimConcentricRelation* = Handle[PrsDimConcentricRelation]

  PrsDimChamf3dDimension* {.importcpp: "PrsDim_Chamf3dDimension",
                           header: "PrsDim_Chamf3dDimension.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimChamf3dDimension* = Handle[PrsDimChamf3dDimension]

  PrsDimChamf2dDimension* {.importcpp: "PrsDim_Chamf2dDimension",
                           header: "PrsDim_Chamf2dDimension.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimChamf2dDimension* = Handle[PrsDimChamf2dDimension]

  PrsDimSymmetricRelation* {.importcpp: "PrsDim_SymmetricRelation",
                            header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation 
                            #header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimSymmetricRelation* = Handle[PrsDimSymmetricRelation]

                            #header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation 
  PrsDimTangentRelation* {.importcpp: "PrsDim_TangentRelation",
                          header: "PrsDim_TangentRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimTangentRelation* = Handle[PrsDimTangentRelation]

