# PROVIDES: Ais AIS_AngleDimension AIS_AnimationTimer AIS_Chamf2dDimension AIS_Chamf3dDimension AIS_ClearMode AIS_ConcentricRelation AIS_ConnectStatus AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive AIS_DataMapIteratorOfDataMapOfIOStatus AIS_DiameterDimension AIS_Dimension AIS_DimensionOwner AIS_DisplayMode AIS_DisplayStatus AIS_DragAction AIS_EllipseRadiusDimension AIS_EqualDistanceRelation AIS_EqualRadiusRelation AIS_FixRelation AIS_IdenticRelation AIS_KindOfInteractive AIS_LengthDimension AIS_ListIteratorOfListOfInteractive AIS_ManipulatorMode AIS_MapIteratorOfMapOfInteractive AIS_MaxRadiusDimension AIS_MidPointRelation AIS_MinRadiusDimension AIS_OffsetDimension AIS_ParallelRelation AIS_PerpendicularRelation AIS_RadiusDimension AIS_Relation AIS_SelectionModesConcurrency AIS_SelectStatus AIS_StatusOfDetection AIS_StatusOfPick AIS_SymmetricRelation AIS_TangentRelation AIS_TrihedronSelectionMode AIS_TypeOfAttribute AIS_TypeOfAxis AIS_TypeOfIso AIS_TypeOfPlane AIS_AnimationProgress AIS_GraphicTool AIS_ManipulatorOptionsForAttach AIS_ManipulatorBehaviorOnTransform AIS_MouseGesture AIS_NavigationMode AIS_PointCloudSelectionMode AIS_RotationMode AIS_ViewController AIS_ViewSelectionTool AIS_ViewInputBufferType AIS_ViewInputBuffer AIS_ViewInputBufferOrientation AIS_ViewInputBufferHighlighting AIS_ViewInputBufferSelection AIS_ViewInputBufferPanningParams AIS_ViewInputBufferDraggingParams AIS_ViewInputBufferOrbitRotation AIS_ViewInputBufferViewRotation AIS_ViewInputBufferZrotateParams AIS_WalkTranslation AIS_WalkRotation AIS_WalkPart AIS_WalkDelta AIS_CameraFrustumSelectionMode AIS_PointCloudDisplayMode
# DEPENDS:  NCollectionDataMap[cint,  NCollectionDataMap[Handle[AIS_InteractiveObject],  NCollectionDataMap[TopoDS_Shape,  NCollectionIndexedDataMap[  NCollectionList[Handle[AIS_InteractiveObject]]  NCollectionMap[Handle[AIS_InteractiveObject],  NCollectionList[Handle[SelectMgrEntityOwner]]  NCollectionSequence[Handle[AIS_InteractiveObject]]  Handle[AIS_Animation]  Handle[AIS_AttributeFilter]  Handle[AIS_BadEdgeFilter]  Handle[AIS_ColorScale]  Handle[AIS_ExclusionFilter]  Handle[AIS_GlobalStatus]  Handle[AIS_ManipulatorObjectSequence]  Handle[AIS_Manipulator]  Handle[AIS_ManipulatorOwner]  Handle[AIS_PointCloud]  Handle[AIS_RubberBand]  Handle[AIS_SignatureFilter]  Handle[AIS_Triangulation]  Handle[AIS_TypeFilter] StandardTransient AIS_Animation AIS_Animation SelectMgrFilter AIS_InteractiveObject SelectMgrFilter  Handle[AIS_C0RegularityFilter] SelectMgrFilter AIS_InteractiveObject AIS_InteractiveObject Prs3dDrawer AIS_Shape AIS_InteractiveObject AIS_InteractiveObject SelectMgrFilter StandardTransient StandardTransient SelectMgrSelectableObject AIS_InteractiveObject NCollectionSequence AIS_InteractiveObject SelectMgrEntityOwner AIS_InteractiveObject AIS_InteractiveObject AIS_InteractiveObject AIS_InteractiveObject AIS_InteractiveObject AIS_InteractiveObject SelectMgrEntityOwner AIS_InteractiveObject StandardTransient AIS_InteractiveObject AIS_TypeFilter AIS_InteractiveObject AIS_Shape AIS_InteractiveObject AIS_InteractiveObject SelectMgrEntityOwner SelectMgrFilter AIS_InteractiveObject SelectMgrEntityOwner AIS_InteractiveObject

import tkv3d/selectmgr/selectmgr_types
import tkbrep/topods/topods_types
import tkv3d/prs3d/prs3d_types
import tkernel/tcolstd/tcolstd_types
import tkv3d/ais/ais_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  Ais* {.importcpp: "AIS", header: "AIS.hxx", bycopy.} = object

  AIS_AngleDimension* = PrsDimAngleDimension

  AIS_AnimationTimer* = MediaTimer

  AIS_Chamf2dDimension* = PrsDimChamf2dDimension

  AIS_Chamf3dDimension* = PrsDimChamf3dDimension

  AIS_ClearMode* {.size: sizeof(cint), importcpp: "AIS_ClearMode",
                  header: "AIS_ClearMode.hxx".} = enum
    AIS_CM_All, AIS_CM_Interactive, AIS_CM_Filters, AIS_CM_StandardModes,
    AIS_CM_TemporaryShapePrs

  AIS_ConcentricRelation* = PrsDimConcentricRelation

  AIS_ConnectStatus* {.size: sizeof(cint), importcpp: "AIS_ConnectStatus",
                      header: "AIS_ConnectStatus.hxx".} = enum
    AIS_CS_None, AIS_CS_Connection, AIS_CS_Transform, AIS_CS_Both

  AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive*[cint,
      AIS_ListOfInteractive, TColStdMapIntegerHasher] {.importcpp:"NCollection_DataMap<'0,'1,'2>::Iterator", header:"AIS_DataMapofIntegerListOfinteractive.hxx", bycopy.} = object

  AIS_DataMapIteratorOfDataMapOfIOStatus* [ HandleAIS_InteractiveObject, HandleAIS_GlobalStatus, TColStdMapTransientHasher] {.importcpp:"NCollection_DataMap<'0,'1,'2>::Iterator", header:"AIS_DataMapOfIOStatus.hxx", bycopy.} = object

  AIS_DiameterDimension* = PrsDimDiameterDimension

  AIS_Dimension* = PrsDimDimension

  AIS_DimensionOwner* = PrsDimDimensionOwner

  AIS_DisplayMode* {.size: sizeof(cint), importcpp: "AIS_DisplayMode",
                    header: "AIS_DisplayMode.hxx".} = enum
    AIS_WireFrame, AIS_Shaded

  AIS_DisplayStatus* {.size: sizeof(cint), importcpp: "AIS_DisplayStatus",
                      header: "AIS_DisplayStatus.hxx".} = enum
    aIS_DS_Displayed,         
    aIS_DS_Erased,            
    aIS_DS_None               

  AIS_DragAction* {.size: sizeof(cint), importcpp: "AIS_DragAction",
                   header: "AIS_DragAction.hxx".} = enum
    AIS_DragActionStart,      
    AIS_DragActionUpdate,     
    AIS_DragActionStop,       
    AIS_DragActionAbort       

  AIS_EllipseRadiusDimension* = PrsDimEllipseRadiusDimension

  AIS_EqualDistanceRelation* = PrsDimEqualDistanceRelation

  AIS_EqualRadiusRelation* = PrsDimEqualRadiusRelation

  AIS_FixRelation* = PrsDimFixRelation

  AIS_IdenticRelation* = PrsDimIdenticRelation

  AIS_KindOfInteractive* {.size: sizeof(cint), importcpp: "AIS_KindOfInteractive",
                          header: "AIS_KindOfInteractive.hxx".} = enum
    aIS_KOI_None, aIS_KOI_Datum, aIS_KOI_Shape, aIS_KOI_Object, aIS_KOI_Relation,
    aIS_KOI_Dimension

  AIS_LengthDimension* = PrsDimLengthDimension

  AIS_ListIteratorOfListOfInteractive*[HandleAIS_InteractiveObject] {.importcpp:"NCollection_List<'0>::Iterator", header:"AIS_ListOfInteractive.hxx", bycopy.} = object

  AIS_ManipulatorMode* {.size: sizeof(cint), importcpp: "AIS_ManipulatorMode",
                        header: "AIS_ManipulatorMode.hxx".} = enum
    AIS_MM_None = 0, AIS_MM_Translation = 1, AIS_MM_Rotation, AIS_MM_Scaling,
    AIS_MM_TranslationPlane

  AIS_MapIteratorOfMapOfInteractive*[HandleAIS_InteractiveObject,
      TColStdMapTransientHasher] {.importcpp:"NCollection_Map<'0, '1>::Iterator", header:"AIS_MapOfInteractive.hxx", bycopy.} = object

  AIS_MaxRadiusDimension* = PrsDimMaxRadiusDimension

  AIS_MidPointRelation* = PrsDimMidPointRelation

  AIS_MinRadiusDimension* = PrsDimMinRadiusDimension

  AIS_OffsetDimension* = PrsDimOffsetDimension

  AIS_ParallelRelation* = PrsDimParallelRelation

  AIS_PerpendicularRelation* = PrsDimPerpendicularRelation

  AIS_RadiusDimension* = PrsDimRadiusDimension

  AIS_Relation* = PrsDimRelation

  AIS_SelectionModesConcurrency* {.size: sizeof(cint),
                                  importcpp: "AIS_SelectionModesConcurrency",
                                  header: "AIS_SelectionModesConcurrency.hxx".} = enum
    aIS_SelectionModesConcurrencySingle, 
    aIS_SelectionModesConcurrencyGlobalOrLocal, 
    aIS_SelectionModesConcurrencyMultiple 

  AIS_SelectStatus* {.size: sizeof(cint), importcpp: "AIS_SelectStatus",
                     header: "AIS_SelectStatus.hxx".} = enum
    AIS_SS_Added, AIS_SS_Removed, AIS_SS_NotDone

  AIS_StatusOfDetection* {.size: sizeof(cint), importcpp: "AIS_StatusOfDetection",
                          header: "AIS_StatusOfDetection.hxx".} = enum
    AIS_SOD_Error, AIS_SOD_Nothing, AIS_SOD_AllBad, AIS_SOD_Selected,
    AIS_SOD_OnlyOneDetected, AIS_SOD_OnlyOneGood, AIS_SOD_SeveralGood

  AIS_StatusOfPick* {.size: sizeof(cint), importcpp: "AIS_StatusOfPick",
                     header: "AIS_StatusOfPick.hxx".} = enum
    AIS_SOP_Error, AIS_SOP_NothingSelected, AIS_SOP_Removed, AIS_SOP_OneSelected,
    AIS_SOP_SeveralSelected

  AIS_SymmetricRelation* = PrsDimSymmetricRelation

  AIS_TangentRelation* = PrsDimTangentRelation

  AIS_TrihedronSelectionMode* {.size: sizeof(cint),
                               importcpp: "AIS_TrihedronSelectionMode",
                               header: "AIS_TrihedronSelectionMode.hxx".} = enum
    AIS_TrihedronSelectionModeEntireObject = 0, 
    AIS_TrihedronSelectionModeOrigin = 1, 
    AIS_TrihedronSelectionModeAxes = 2, 
    AIS_TrihedronSelectionModeMainPlanes = 3

  AIS_TypeOfAttribute* {.size: sizeof(cint), importcpp: "AIS_TypeOfAttribute",
                        header: "AIS_TypeOfAttribute.hxx".} = enum
    AIS_TOA_Line, AIS_TOA_Dimension, AIS_TOA_Wire, AIS_TOA_Plane, AIS_TOA_Vector,
    AIS_TOA_UIso, AIS_TOA_VIso, AIS_TOA_Free, AIS_TOA_UnFree, AIS_TOA_Section,
    AIS_TOA_Hidden, AIS_TOA_Seen, AIS_TOA_FaceBoundary, AIS_TOA_FirstAxis,
    AIS_TOA_SecondAxis, AIS_TOA_ThirdAxis

  AIS_TypeOfAxis* {.size: sizeof(cint), importcpp: "AIS_TypeOfAxis",
                   header: "AIS_TypeOfAxis.hxx".} = enum
    AIS_TOAX_Unknown, AIS_TOAX_XAxis, AIS_TOAX_YAxis, AIS_TOAX_ZAxis

  AIS_TypeOfIso* {.size: sizeof(cint), importcpp: "AIS_TypeOfIso",
                  header: "AIS_TypeOfIso.hxx".} = enum
    aIS_TOI_IsoU, aIS_TOI_IsoV, aIS_TOI_Both

  AIS_TypeOfPlane* {.size: sizeof(cint), importcpp: "AIS_TypeOfPlane",
                    header: "AIS_TypeOfPlane.hxx".} = enum
    AIS_TOPL_Unknown, AIS_TOPL_XYPlane, AIS_TOPL_XZPlane, AIS_TOPL_YZPlane

  AIS_AnimationProgress* {.importcpp: "AIS_AnimationProgress",
                          header: "AIS_Animation.hxx", bycopy.} = object
    pts* {.importc: "Pts".}: cfloat 
    localPts* {.importc: "LocalPts".}: cfloat 
    localNormalized* {.importc: "LocalNormalized".}: cfloat 

  AIS_GraphicTool* {.importcpp: "AIS_GraphicTool", header: "AIS_GraphicTool.hxx",
                    bycopy.} = object

  AIS_ManipulatorOptionsForAttach* {.importcpp: "AIS_Manipulator::OptionsForAttach",
                                    header: "AIS_Manipulator.hxx", bycopy.} = object
    adjustPosition* {.importc: "AdjustPosition".}: bool
    adjustSize* {.importc: "AdjustSize".}: bool
    enableModes* {.importc: "EnableModes".}: bool

  AIS_ManipulatorBehaviorOnTransform* {.importcpp: "AIS_Manipulator::BehaviorOnTransform",
                                       header: "AIS_Manipulator.hxx", bycopy.} = object
    followTranslation* {.importc: "FollowTranslation".}: bool
    followRotation* {.importc: "FollowRotation".}: bool
    followDragging* {.importc: "FollowDragging".}: bool

  AIS_MouseGesture* {.size: sizeof(cint), importcpp: "AIS_MouseGesture",
                     header: "AIS_MouseGesture.hxx".} = enum
    aIS_MouseGestureNONE,     
    aIS_MouseGestureSelectRectangle, 
    aIS_MouseGestureSelectLasso, 
    aIS_MouseGestureZoom,     
    aIS_MouseGestureZoomWindow, 
    aIS_MouseGesturePan,      
    aIS_MouseGestureRotateOrbit, 
    aIS_MouseGestureRotateView 

  AIS_NavigationMode* {.size: sizeof(cint), importcpp: "AIS_NavigationMode",
                       header: "AIS_NavigationMode.hxx".} = enum
    aIS_NavigationModeOrbit,  
    aIS_NavigationModeFirstPersonFlight, 
    aIS_NavigationModeFirstPersonWalk 

  AIS_PointCloudSelectionMode* {.size: sizeof(cint),
                                importcpp: "AIS_PointCloud::SelectionMode",
                                header: "AIS_PointCloud.hxx".} = enum
    SM_Points = 0,              
    SM_SubsetOfPoints = 1,      
    SM_BndBox = 2               

  AIS_RotationMode* {.size: sizeof(cint), importcpp: "AIS_RotationMode",
                     header: "AIS_RotationMode.hxx".} = enum
    aIS_RotationModeBndBoxActive, 
    aIS_RotationModePickLast, 
    aIS_RotationModePickCenter, 
    aIS_RotationModeCameraAt, 
    aIS_RotationModeBndBoxScene 

  AIS_ViewController* {.importcpp: "AIS_ViewController",
                       header: "AIS_ViewController.hxx", bycopy.} = object 

  AIS_ViewSelectionTool* {.size: sizeof(cint), importcpp: "AIS_ViewSelectionTool",
                          header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewSelectionToolPicking, 
    AIS_ViewSelectionToolRubberBand, 
    AIS_ViewSelectionToolPolygon, 
    AIS_ViewSelectionToolZoomWindow 

  AIS_ViewInputBufferType* {.size: sizeof(cint),
                            importcpp: "AIS_ViewInputBufferType",
                            header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewInputBufferTypeUI, 
    AIS_ViewInputBufferTypeGL 

  AIS_ViewInputBuffer* {.importcpp: "AIS_ViewInputBuffer",
                        header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    isNewGesture* {.importc: "IsNewGesture".}: bool 
    zoomActions* {.importc: "ZoomActions".}: NCollectionSequence[AspectScrollDelta] 

  AIS_ViewInputBufferOrientation* {.importcpp: "AIS_ViewInputBuffer::_orientation",
                                   header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toFitAll* {.importc: "ToFitAll".}: bool 
    toSetViewOrient* {.importc: "ToSetViewOrient".}: bool 
    viewOrient* {.importc: "ViewOrient".}: V3dTypeOfOrientation 

  AIS_ViewInputBufferHighlighting* {.importcpp: "AIS_ViewInputBuffer::_highlighting",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toHilight* {.importc: "ToHilight".}: bool 
    point* {.importc: "Point".}: Graphic3dVec2i 

  AIS_ViewInputBufferSelection* {.importcpp: "AIS_ViewInputBuffer::_selection",
                                 header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    tool* {.importc: "Tool".}: AIS_ViewSelectionTool 
    isXOR* {.importc: "IsXOR".}: bool 
    points* {.importc: "Points".}: NCollectionSequence[Graphic3dVec2i] 
    toApplyTool* {.importc: "ToApplyTool".}: bool 

  AIS_ViewInputBufferPanningParams* {.importcpp: "AIS_ViewInputBuffer::_panningParams",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool 
    pointStart* {.importc: "PointStart".}: Graphic3dVec2i 
    toPan* {.importc: "ToPan".}: bool 
    delta* {.importc: "Delta".}: Graphic3dVec2i 

  AIS_ViewInputBufferDraggingParams* {.importcpp: "AIS_ViewInputBuffer::_draggingParams",
                                      header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool 
    toStop* {.importc: "ToStop".}: bool 
    toAbort* {.importc: "ToAbort".}: bool 
    pointStart* {.importc: "PointStart".}: Graphic3dVec2i 
    pointTo* {.importc: "PointTo".}: Graphic3dVec2i 

  AIS_ViewInputBufferOrbitRotation* {.importcpp: "AIS_ViewInputBuffer::_orbitRotation",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool 
    pointStart* {.importc: "PointStart".}: Graphic3dVec2d 
    toRotate* {.importc: "ToRotate".}: bool 
    pointTo* {.importc: "PointTo".}: Graphic3dVec2d 

  AIS_ViewInputBufferViewRotation* {.importcpp: "AIS_ViewInputBuffer::_viewRotation",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool 
    pointStart* {.importc: "PointStart".}: Graphic3dVec2d 
    toRotate* {.importc: "ToRotate".}: bool 
    pointTo* {.importc: "PointTo".}: Graphic3dVec2d 

  AIS_ViewInputBufferZrotateParams* {.importcpp: "AIS_ViewInputBuffer::_zrotateParams",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    point* {.importc: "Point".}: Graphic3dVec2i 
    angle* {.importc: "Angle".}: cdouble 
    toRotate* {.importc: "ToRotate".}: bool 

  AIS_WalkTranslation* {.size: sizeof(cint), importcpp: "AIS_WalkTranslation",
                        header: "AIS_WalkDelta.hxx".} = enum
    AIS_WalkTranslationForward = 0, 
    AIS_WalkTranslationSide,  
    AIS_WalkTranslationUp     

  AIS_WalkRotation* {.size: sizeof(cint), importcpp: "AIS_WalkRotation",
                     header: "AIS_WalkDelta.hxx".} = enum
    AIS_WalkRotationYaw = 0,    
    AIS_WalkRotationPitch,    
    AIS_WalkRotationRoll      

  AIS_WalkPart* {.importcpp: "AIS_WalkPart", header: "AIS_WalkDelta.hxx", bycopy.} = object
    value* {.importc: "Value".}: cfloat 
    pressure* {.importc: "Pressure".}: cfloat 
    duration* {.importc: "Duration".}: cfloat 

  AIS_WalkDelta* {.importcpp: "AIS_WalkDelta", header: "AIS_WalkDelta.hxx", bycopy.} = object 

  AIS_CameraFrustumSelectionMode* {.size: sizeof(cint), importcpp: "AIS_CameraFrustum::SelectionMode",
                                   header: "AIS_CameraFrustum.hxx".} = enum
    SelectionModeEdges = 0,     
    SelectionModeVolume = 1     

  AIS_PointCloudDisplayMode* {.size: sizeof(cint),
                              importcpp: "AIS_PointCloud::DisplayMode",
                              header: "AIS_PointCloud.hxx".} = enum
    DM_Points = 0,              
    DM_BndBox = 2

  AIS_DataMapofIntegerListOfinteractive* = NCollectionDataMap[cint,
      AIS_ListOfInteractive, TColStdMapIntegerHasher]

  AIS_DataMapOfIOStatus* = NCollectionDataMap[Handle[AIS_InteractiveObject],
      Handle[AIS_GlobalStatus], TColStdMapTransientHasher]

  AIS_DataMapOfShapeDrawer* = NCollectionDataMap[TopoDS_Shape,
      Handle[AIS_ColoredDrawer], TopToolsShapeMapHasher]

  AIS_IndexedDataMapOfOwnerPrs* = NCollectionIndexedDataMap[
      Handle[SelectMgrEntityOwner], Handle[Prs3dPresentation],
      TColStdMapTransientHasher]

  AIS_ListOfInteractive* = NCollectionList[Handle[AIS_InteractiveObject]]

  AIS_MapOfInteractive* = NCollectionMap[Handle[AIS_InteractiveObject],
                                       TColStdMapTransientHasher]

  AIS_NListOfEntityOwner* = NCollectionList[Handle[SelectMgrEntityOwner]]

  AIS_SequenceOfInteractive* = NCollectionSequence[Handle[AIS_InteractiveObject]]

  HandleAIS_Animation* = Handle[AIS_Animation]

  HandleAIS_AttributeFilter* = Handle[AIS_AttributeFilter]

  HandleAIS_BadEdgeFilter* = Handle[AIS_BadEdgeFilter]

  HandleAIS_ColorScale* = Handle[AIS_ColorScale]

  HandleAIS_ExclusionFilter* = Handle[AIS_ExclusionFilter]

  HandleAIS_GlobalStatus* = Handle[AIS_GlobalStatus]

  HandleAIS_ManipulatorObjectSequence* = Handle[AIS_ManipulatorObjectSequence]

  HandleAIS_ManipulatorObjectSequenceAIS_Manipulator* = Handle[AIS_Manipulator]

  HandleAIS_ManipulatorOwner* = Handle[AIS_ManipulatorOwner]

  HandleAIS_PointCloud* = Handle[AIS_PointCloud]

  HandleAIS_RubberBand* = Handle[AIS_RubberBand]

  HandleAIS_SignatureFilter* = Handle[AIS_SignatureFilter]

  HandleAIS_Triangulation* = Handle[AIS_Triangulation]

  HandleAIS_TypeFilter* = Handle[AIS_TypeFilter]

  AIS_Animation* {.importcpp: "AIS_Animation", header: "AIS_Animation.hxx", bycopy.} = object of StandardTransient 

  AIS_AnimationCamera* {.importcpp: "AIS_AnimationCamera",
                        header: "AIS_AnimationCamera.hxx", bycopy.} = object of AIS_Animation 

  AIS_AnimationObject* {.importcpp: "AIS_AnimationObject",
                        header: "AIS_AnimationObject.hxx", bycopy.} = object of AIS_Animation 

  AIS_AttributeFilter* {.importcpp: "AIS_AttributeFilter",
                        header: "AIS_AttributeFilter.hxx", bycopy.} = object of SelectMgrFilter 

  AIS_Axis* {.importcpp: "AIS_Axis", header: "AIS_Axis.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_BadEdgeFilter* {.importcpp: "AIS_BadEdgeFilter",
                      header: "AIS_BadEdgeFilter.hxx", bycopy.} = object of SelectMgrFilter 

  HandleAIS_C0RegularityFilter* = Handle[AIS_C0RegularityFilter]

  AIS_C0RegularityFilter* {.importcpp: "AIS_C0RegularityFilter",
                           header: "AIS_C0RegularityFilter.hxx", bycopy.} = object of SelectMgrFilter

  AIS_CameraFrustum* {.importcpp: "AIS_CameraFrustum",
                      header: "AIS_CameraFrustum.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_Circle* {.importcpp: "AIS_Circle", header: "AIS_Circle.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_ColoredDrawer* {.importcpp: "AIS_ColoredDrawer",
                      header: "AIS_ColoredDrawer.hxx", bycopy.} = object of Prs3dDrawer 
    myIsHidden* {.importc: "myIsHidden".}: bool
    myHasOwnMaterial* {.importc: "myHasOwnMaterial".}: bool
    myHasOwnColor* {.importc: "myHasOwnColor".}: bool
    myHasOwnTransp* {.importc: "myHasOwnTransp".}: bool
    myHasOwnWidth* {.importc: "myHasOwnWidth".}: bool

  AIS_ColoredShape* {.importcpp: "AIS_ColoredShape",
                     header: "AIS_ColoredShape.hxx", bycopy.} = object of AIS_Shape 

  AIS_ColorScale* {.importcpp: "AIS_ColorScale", header: "AIS_ColorScale.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_ConnectedInteractive* {.importcpp: "AIS_ConnectedInteractive",
                             header: "AIS_ConnectedInteractive.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_ExclusionFilter* {.importcpp: "AIS_ExclusionFilter",
                        header: "AIS_ExclusionFilter.hxx", bycopy.} = object of SelectMgrFilter 

  AIS_GlobalStatus* {.importcpp: "AIS_GlobalStatus",
                     header: "AIS_GlobalStatus.hxx", bycopy.} = object of StandardTransient

  AIS_InteractiveContext* {.importcpp: "AIS_InteractiveContext",
                           header: "AIS_InteractiveContext.hxx", bycopy.} = object of StandardTransient 

  AIS_InteractiveObject* {.importcpp: "AIS_InteractiveObject",
                          header: "AIS_InteractiveObject.hxx", bycopy.} = object of SelectMgrSelectableObject 

  AIS_Line* {.importcpp: "AIS_Line", header: "AIS_Line.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_ManipulatorObjectSequence* {.importcpp: "AIS_ManipulatorObjectSequence",
                                  header: "AIS_Manipulator.hxx", bycopy.} = object of NCollectionSequence[
      Handle[AIS_InteractiveObject]]

  AIS_Manipulator* {.importcpp: "AIS_Manipulator", header: "AIS_Manipulator.hxx",
                    bycopy.} = object of AIS_InteractiveObject 

  AIS_ManipulatorOwner* {.importcpp: "AIS_ManipulatorOwner",
                         header: "AIS_ManipulatorOwner.hxx", bycopy.} = object of SelectMgrEntityOwner

  AIS_MediaPlayer* {.importcpp: "AIS_MediaPlayer", header: "AIS_MediaPlayer.hxx",
                    bycopy.} = object of AIS_InteractiveObject 

  AIS_MultipleConnectedInteractive* {.importcpp: "AIS_MultipleConnectedInteractive", header: "AIS_MultipleConnectedInteractive.hxx",
                                     bycopy.} = object of AIS_InteractiveObject 

  AIS_Plane* {.importcpp: "AIS_Plane", header: "AIS_Plane.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_PlaneTrihedron* {.importcpp: "AIS_PlaneTrihedron",
                       header: "AIS_PlaneTrihedron.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_Point* {.importcpp: "AIS_Point", header: "AIS_Point.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_PointCloud* {.importcpp: "AIS_PointCloud", header: "AIS_PointCloud.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_PointCloudOwner* {.importcpp: "AIS_PointCloudOwner",
                        header: "AIS_PointCloud.hxx", bycopy.} = object of SelectMgrEntityOwner 

  AIS_RubberBand* {.importcpp: "AIS_RubberBand", header: "AIS_RubberBand.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_Selection* {.importcpp: "AIS_Selection", header: "AIS_Selection.hxx", bycopy.} = object of StandardTransient 

  AIS_Shape* {.importcpp: "AIS_Shape", header: "AIS_Shape.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_SignatureFilter* {.importcpp: "AIS_SignatureFilter",
                        header: "AIS_SignatureFilter.hxx", bycopy.} = object of AIS_TypeFilter 

  AIS_TextLabel* {.importcpp: "AIS_TextLabel", header: "AIS_TextLabel.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_TexturedShape* {.importcpp: "AIS_TexturedShape",
                      header: "AIS_TexturedShape.hxx", bycopy.} = object of AIS_Shape 

  AIS_Triangulation* {.importcpp: "AIS_Triangulation",
                      header: "AIS_Triangulation.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_Trihedron* {.importcpp: "AIS_Trihedron", header: "AIS_Trihedron.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_TrihedronOwner* {.importcpp: "AIS_TrihedronOwner",
                       header: "AIS_TrihedronOwner.hxx", bycopy.} = object of SelectMgrEntityOwner 

  AIS_TypeFilter* {.importcpp: "AIS_TypeFilter", header: "AIS_TypeFilter.hxx", bycopy.} = object of SelectMgrFilter 

  AIS_ViewCube* {.importcpp: "AIS_ViewCube", header: "AIS_ViewCube.hxx", bycopy.} = object of AIS_InteractiveObject 

  AIS_ViewCubeOwner* {.importcpp: "AIS_ViewCubeOwner", header: "AIS_ViewCube.hxx",
                      bycopy.} = object of SelectMgrEntityOwner 

                      bycopy.} = object of SelectMgrEntityOwner 
  AIS_XRTrackedDevice* {.importcpp: "AIS_XRTrackedDevice",
                        header: "AIS_XRTrackedDevice.hxx", bycopy.} = object of AIS_InteractiveObject 


