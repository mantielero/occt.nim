# PROVIDES: PrsDimDimensionSelectionMode PrsDimDisplaySpecialSymbol PrsDimKindOfDimension PrsDimKindOfRelation PrsDimKindOfSurface PrsDimTypeOfAngle PrsDimTypeOfAngleArrowVisibility PrsDimTypeOfDist PrsDim PrsDimDimensionComputeMode
# DEPENDS:  Handle[PrsDimAngleDimension]  Handle[PrsDimChamf2dDimension]  Handle[PrsDimChamf3dDimension]  Handle[PrsDimConcentricRelation]  Handle[PrsDimDiameterDimension]  Handle[PrsDimDimension]  Handle[PrsDimDimensionOwner]  Handle[PrsDimEllipseRadiusDimension]  Handle[PrsDimEqualDistanceRelation]  Handle[PrsDimFixRelation]  Handle[PrsDimIdenticRelation]  Handle[PrsDimLengthDimension]  Handle[PrsDimMaxRadiusDimension]  Handle[PrsDimMidPointRelation]  Handle[PrsDimMinRadiusDimension]  Handle[PrsDimOffsetDimension]  Handle[PrsDimParallelRelation]  Handle[PrsDimPerpendicularRelation]  Handle[PrsDimRadiusDimension]  Handle[PrsDimSymmetricRelation]  Handle[PrsDimTangentRelation] PrsDimDimension PrsDimRelation PrsDimRelation PrsDimRelation PrsDimDimension AIS_InteractiveObject SelectMgrEntityOwner PrsDimRelation PrsDimRelation  Handle[PrsDimEqualRadiusRelation] PrsDimRelation PrsDimRelation PrsDimRelation PrsDimDimension PrsDimEllipseRadiusDimension PrsDimRelation PrsDimEllipseRadiusDimension PrsDimRelation PrsDimRelation PrsDimRelation PrsDimDimension AIS_InteractiveObject PrsDimRelation PrsDimRelation

import tkv3d/selectmgr/selectmgr_types
import tkv3d/prsdim/prsdim_types
import tkv3d/ais/ais_types
import tkernel/standard/standard_types
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

  HandlePrsDimAngleDimension* = Handle[PrsDimAngleDimension]

  HandlePrsDimChamf2dDimension* = Handle[PrsDimChamf2dDimension]

  HandlePrsDimChamf3dDimension* = Handle[PrsDimChamf3dDimension]

  HandlePrsDimConcentricRelation* = Handle[PrsDimConcentricRelation]

  HandlePrsDimDiameterDimension* = Handle[PrsDimDiameterDimension]

  HandlePrsDimDimension* = Handle[PrsDimDimension]

  HandlePrsDimDimensionOwner* = Handle[PrsDimDimensionOwner]

  HandlePrsDimEllipseRadiusDimension* = Handle[PrsDimEllipseRadiusDimension]

  HandlePrsDimEqualDistanceRelation* = Handle[PrsDimEqualDistanceRelation]

  HandlePrsDimFixRelation* = Handle[PrsDimFixRelation]

  HandlePrsDimIdenticRelation* = Handle[PrsDimIdenticRelation]

  HandlePrsDimLengthDimension* = Handle[PrsDimLengthDimension]

  HandlePrsDimMaxRadiusDimension* = Handle[PrsDimMaxRadiusDimension]

  HandlePrsDimMidPointRelation* = Handle[PrsDimMidPointRelation]

  HandlePrsDimMinRadiusDimension* = Handle[PrsDimMinRadiusDimension]

  HandlePrsDimOffsetDimension* = Handle[PrsDimOffsetDimension]

  HandlePrsDimParallelRelation* = Handle[PrsDimParallelRelation]

  HandlePrsDimPerpendicularRelation* = Handle[PrsDimPerpendicularRelation]

  HandlePrsDimRadiusDimension* = Handle[PrsDimRadiusDimension]

  HandlePrsDimSymmetricRelation* = Handle[PrsDimSymmetricRelation]

  HandlePrsDimTangentRelation* = Handle[PrsDimTangentRelation]

  PrsDimAngleDimension* {.importcpp: "PrsDim_AngleDimension",
                         header: "PrsDim_AngleDimension.hxx", bycopy.} = object of PrsDimDimension 

  PrsDimChamf2dDimension* {.importcpp: "PrsDim_Chamf2dDimension",
                           header: "PrsDim_Chamf2dDimension.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimChamf3dDimension* {.importcpp: "PrsDim_Chamf3dDimension",
                           header: "PrsDim_Chamf3dDimension.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimConcentricRelation* {.importcpp: "PrsDim_ConcentricRelation",
                             header: "PrsDim_ConcentricRelation.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimDiameterDimension* {.importcpp: "PrsDim_DiameterDimension",
                            header: "PrsDim_DiameterDimension.hxx", bycopy.} = object of PrsDimDimension 

  PrsDimDimension* {.importcpp: "PrsDim_Dimension", header: "PrsDim_Dimension.hxx",
                    bycopy.} = object of AIS_InteractiveObject 

  PrsDimDimensionOwner* {.importcpp: "PrsDim_DimensionOwner",
                         header: "PrsDim_DimensionOwner.hxx", bycopy.} = object of SelectMgrEntityOwner 

  PrsDimEllipseRadiusDimension* {.importcpp: "PrsDim_EllipseRadiusDimension",
                                 header: "PrsDim_EllipseRadiusDimension.hxx",
                                 bycopy.} = object of PrsDimRelation

  PrsDimEqualDistanceRelation* {.importcpp: "PrsDim_EqualDistanceRelation",
                                header: "PrsDim_EqualDistanceRelation.hxx", bycopy.} = object of PrsDimRelation 

  HandlePrsDimEqualRadiusRelation* = Handle[PrsDimEqualRadiusRelation]

  PrsDimEqualRadiusRelation* {.importcpp: "PrsDim_EqualRadiusRelation",
                              header: "PrsDim_EqualRadiusRelation.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimFixRelation* {.importcpp: "PrsDim_FixRelation",
                      header: "PrsDim_FixRelation.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimIdenticRelation* {.importcpp: "PrsDim_IdenticRelation",
                          header: "PrsDim_IdenticRelation.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimLengthDimension* {.importcpp: "PrsDim_LengthDimension",
                          header: "PrsDim_LengthDimension.hxx", bycopy.} = object of PrsDimDimension 

  PrsDimMaxRadiusDimension* {.importcpp: "PrsDim_MaxRadiusDimension",
                             header: "PrsDim_MaxRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension 

  PrsDimMidPointRelation* {.importcpp: "PrsDim_MidPointRelation",
                           header: "PrsDim_MidPointRelation.hxx", bycopy.} = object of PrsDimRelation

  PrsDimMinRadiusDimension* {.importcpp: "PrsDim_MinRadiusDimension",
                             header: "PrsDim_MinRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension 

  PrsDimOffsetDimension* {.importcpp: "PrsDim_OffsetDimension",
                          header: "PrsDim_OffsetDimension.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimParallelRelation* {.importcpp: "PrsDim_ParallelRelation",
                           header: "PrsDim_ParallelRelation.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimPerpendicularRelation* {.importcpp: "PrsDim_PerpendicularRelation",
                                header: "PrsDim_PerpendicularRelation.hxx", bycopy.} = object of PrsDimRelation 

  PrsDimRadiusDimension* {.importcpp: "PrsDim_RadiusDimension",
                          header: "PrsDim_RadiusDimension.hxx", bycopy.} = object of PrsDimDimension 

  PrsDimRelation* {.importcpp: "PrsDim_Relation", header: "PrsDim_Relation.hxx",
                   bycopy.} = object of AIS_InteractiveObject 

  PrsDimSymmetricRelation* {.importcpp: "PrsDim_SymmetricRelation",
                            header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation 

                            header: "PrsDim_SymmetricRelation.hxx", bycopy.} = object of PrsDimRelation 
  PrsDimTangentRelation* {.importcpp: "PrsDim_TangentRelation",
                          header: "PrsDim_TangentRelation.hxx", bycopy.} = object of PrsDimRelation 


