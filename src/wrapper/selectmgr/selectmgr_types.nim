import ../prsmgr/prsmgr_types
import ../bvh/bvh_types
import ../ncollection/ncollection_types
import ../standard/standard_types
import ../gp/gp_types
import ../graphic3d/graphic3d_types
import ../tcolstd/tcolstd_types
import ../osd/osd_types

type
  Select3D_SensitiveEntity* = object # FIXME

  #OSD_Thread* = object of RootObj  # FIXME  


  MediaTimer* = object  # FIXME
  SelectMgrIndexedMapOfOwner* = object  # FIXME
  StdSelectViewerSelector3d* = object  # FIXME
  CallbackOnUpdateT* = object  # FIXME
  MediaPlayerContext* = object  # FIXME
  Select3D_TypeOfSensitivity* = object  # FIXME
  FontFontAspect* = object  # FIXME
  FontTextFormatter* = object  # FIXME
  ImagePixMap* = object  # FIXME
  WNT_HIDSpaceMouse* = object  # FIXME
  ImageTexture* = object  # FIXME
  SelectBasicsPickResult* = object  # FIXME

  SelectionType* = object  # FIXME
  StdSelectTypeOfSelectionImage* = object  # FIXME
  Select3D_BVHBuilder3d* = object  # FIXME
  Select3D_BndBox3d* = object  # FIXME
  DsgPrsArrowSide* = object  # FIXME

  ImageSupportedFormats* = object  # FIXME
  ImageCompressedPixMap* = object  # FIXME
  PerfCounters* = object  # FIXME
  #OSD_Timer* = object  # FIXME
  Graphic3dArrayOfIndexedMapOfStructure* = object  # FIXME
  MediaFrame* = object  # FIXME
  #OSD_Path* = object  # FIXME

  SelectBasicsSelectingVolumeManager* = object of RootObj # FIXME

  SelectMgrFilterType* {.size: sizeof(cint), importcpp: "SelectMgr_FilterType",
                        header: "SelectMgr_FilterType.hxx".} = enum
    SelectMgrFilterTypeAND,   
    SelectMgrFilterTypeOR     

  SelectMgrListIteratorOfListOfFilter*[HandleSelectMgrFilter] {.importcpp:"NCollection_List<'0>::Iterator", header:"SelectMgr_ListOfFilter.hxx", bycopy.} = object

  SelectMgrPickingStrategy* {.size: sizeof(cint),
                             importcpp: "SelectMgr_PickingStrategy",
                             header: "SelectMgr_PickingStrategy.hxx".} = enum
    SelectMgrPickingStrategyFirstAcceptable, 
    SelectMgrPickingStrategyOnlyTopmost 

  SelectMgrStateOfSelection* {.size: sizeof(cint),
                              importcpp: "SelectMgr_StateOfSelection",
                              header: "SelectMgr_StateOfSelection.hxx".} = enum
    selectMgrSOS_Any = -2,      
    selectMgrSOS_Unknown = -1,  
    selectMgrSOS_Deactivated = 0, 
    selectMgrSOS_Activated    

  SelectMgrTypeOfBVHUpdate* {.size: sizeof(cint),
                             importcpp: "SelectMgr_TypeOfBVHUpdate",
                             header: "SelectMgr_TypeOfBVHUpdate.hxx".} = enum
    SelectMgrTBU_Add, SelectMgrTBU_Remove, SelectMgrTBU_Renew,
    SelectMgrTBU_Invalidate, SelectMgrTBU_None

  SelectMgrTypeOfDepthTolerance* {.size: sizeof(cint),
                                  importcpp: "SelectMgr_TypeOfDepthTolerance",
                                  header: "SelectMgr_TypeOfDepthTolerance.hxx".} = enum
    SelectMgrTypeOfDepthToleranceUniform, 
    SelectMgrTypeOfDepthToleranceUniformPixels, 
    SelectMgrTypeOfDepthToleranceSensitivityFactor 

  SelectMgrTypeOfUpdate* {.size: sizeof(cint), importcpp: "SelectMgr_TypeOfUpdate",
                          header: "SelectMgr_TypeOfUpdate.hxx".} = enum
    SelectMgrTOU_Full, SelectMgrTOU_Partial, SelectMgrTOU_None

  SelectMgr* {.importcpp: "SelectMgr", header: "SelectMgr.hxx", bycopy.} = object 

  SelectMgrBVHThreadPoolSentry* {.importcpp: "SelectMgr_BVHThreadPool::Sentry",
                                 header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object 

  SelectMgrSelectableObjectSet* {.importcpp: "SelectMgr_SelectableObjectSet",
                                 header: "SelectMgr_SelectableObjectSet.hxx",
                                 bycopy.} = object 

  SelectMgrSelectableObjectSetBVHSubset* {.size: sizeof(cint),
      importcpp: "SelectMgr_SelectableObjectSet::BVHSubset",
      header: "SelectMgr_SelectableObjectSet.hxx".} = enum
    BVHSubset3d, BVHSubset3dPersistent, BVHSubset2dPersistent, BVHSubsetNb

  SelectMgrSelectableObjectSetIterator* {.
      importcpp: "SelectMgr_SelectableObjectSet::Iterator",
      header: "SelectMgr_SelectableObjectSet.hxx", bycopy.} = object 

  SelectMgrIndexedMapOfHSensitive*[HandleSelectMgrSensitiveEntity] {.importcpp:"NCollection_IndexedMap<'0>", header:"SelectMgr_SensitiveEntitySet.hxx", bycopy.} = object

  SelectMgrSortCriterion* {.importcpp: "SelectMgr_SortCriterion",
                           header: "SelectMgr_SortCriterion.hxx", bycopy.} = object 
    entity* {.importc: "Entity".}: Handle[Select3D_SensitiveEntity] 
    point* {.importc: "Point".}: gp_Pnt 
    normal* {.importc: "Normal".}: Graphic3dVec3 
    depth* {.importc: "Depth".}: cfloat 
    minDist* {.importc: "MinDist".}: cfloat 
    tolerance* {.importc: "Tolerance".}: cfloat 
    priority* {.importc: "Priority".}: cint 
    zLayerPosition* {.importc: "ZLayerPosition".}: cint 
    nbOwnerMatches* {.importc: "NbOwnerMatches".}: cint 

  SelectMgrToleranceMap* {.importcpp: "SelectMgr_ToleranceMap",
                          header: "SelectMgr_ToleranceMap.hxx", bycopy.} = object 

  SelectMgrTriangFrustumsIter*[HandleSelectMgrTriangularFrustum] {.importcpp:"NCollection_List<'0>::Iterator", header:"SelectMgr_TriangularFrustumSet.hxx", bycopy.} = object

  SelectMgrViewClipRange* {.importcpp: "SelectMgr_ViewClipRange",
                           header: "SelectMgr_ViewClipRange.hxx", bycopy.} = object 

  SelectMgrMapOfObjectSensitives*[HandleSelectMgrSelectableObject, HandleSelectMgrSensitiveEntitySet] {.importcpp:"NCollection_DataMap< '0, '1 >", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object

  SelectMgrMapOfObjectSensitivesIterator*[HandleSelectMgrSelectableObject, HandleSelectMgrSensitiveEntitySet] {.importcpp:"NCollection_DataMap< '0, '1 >::Iterator", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object

  SelectMgrFrustumCache*[cint, SelectMgrSelectingVolumeManager] {.importcpp:"NCollection_DataMap< '0, '1 >", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object

  SelectMgrIndexedDataMapOfOwnerCriterion* = NCollectionIndexedDataMap[
      Handle[SelectMgrEntityOwner], SelectMgrSortCriterion,
      TColStdMapTransientHasher]

  SelectMgrListOfFilter* = NCollectionList[Handle[SelectMgrFilter]]

  SelectMgrSequenceOfFilter* = NCollectionSequence[Handle[SelectMgrFilter]]

  SelectMgrSequenceOfOwner* = NCollectionSequence[Handle[SelectMgrEntityOwner]]

  SelectMgrSequenceOfSelection* = NCollectionSequence[Handle[SelectMgrSelection]]

  SelectMgrTriangFrustums* = NCollectionList[Handle[SelectMgrTriangularFrustum]]

  SelectMgrVec3* = NCollectionVec3[cfloat]

  SelectMgrVec4* = NCollectionVec4[cfloat]

  SelectMgrMat4* = NCollectionMat4[cfloat]

  SelectMgrBaseFrustum* {.importcpp: "SelectMgr_BaseFrustum",
                         header: "SelectMgr_BaseFrustum.hxx", bycopy.} = object of StandardTransient 

  SelectMgrBVHThreadPool* {.importcpp: "SelectMgr_BVHThreadPool",
                           header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of StandardTransient 

  SelectMgrBVHThreadPoolBVHThread* {.importcpp: "SelectMgr_BVHThreadPool::BVHThread",
                                    header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of OSD_Thread 

  SelectMgrEntityOwner* {.importcpp: "SelectMgr_EntityOwner",
                         header: "SelectMgr_EntityOwner.hxx", bycopy.} = object of StandardTransient 

  HandleSelectMgrEntityOwner* = Handle[SelectMgrEntityOwner]

  SelectMgrFilter* {.importcpp: "SelectMgr_Filter", header: "SelectMgr_Filter.hxx",
                    bycopy.} = object of StandardTransient 

  SelectMgrCompositionFilter* {.importcpp: "SelectMgr_CompositionFilter",
                               header: "SelectMgr_CompositionFilter.hxx", bycopy.} = object of SelectMgrFilter 

  HandleSelectMgrCompositionFilter* = Handle[SelectMgrCompositionFilter]

  SelectMgrAndFilter* {.importcpp: "SelectMgr_AndFilter",
                       header: "SelectMgr_AndFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter 

  HandleSelectMgrAndFilter* = Handle[SelectMgrAndFilter]

  SelectMgrAndOrFilter* {.importcpp: "SelectMgr_AndOrFilter",
                         header: "SelectMgr_AndOrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter 

  HandleSelectMgrAndOrFilter* = Handle[SelectMgrAndOrFilter]

  HandleSelectMgrFilter* = Handle[SelectMgrFilter]

  SelectMgrFrustum*[N: static[cint]] {.importcpp: "SelectMgr_Frustum<\'0>",
                                     header: "SelectMgr_Frustum.hxx", bycopy.} = object of SelectMgrBaseFrustum 

  SelectMgrFrustumBuilder* {.importcpp: "SelectMgr_FrustumBuilder",
                            header: "SelectMgr_FrustumBuilder.hxx", bycopy.} = object of StandardTransient 

  SelectMgrOrFilter* {.importcpp: "SelectMgr_OrFilter",
                      header: "SelectMgr_OrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter 

  HandleSelectMgrOrFilter* = Handle[SelectMgrOrFilter]

  SelectMgrRectangularFrustum* {.importcpp: "SelectMgr_RectangularFrustum",
                                header: "SelectMgr_RectangularFrustum.hxx", bycopy.} = object of SelectMgrFrustum[
      4]

  SelectMgrSelectableObject* {.importcpp: "SelectMgr_SelectableObject",
                              header: "SelectMgr_SelectableObject.hxx", bycopy.} = object of PrsMgrPresentableObject 

  SelectMgrSelectingVolumeManager* {.importcpp: "SelectMgr_SelectingVolumeManager", header: "SelectMgr_SelectingVolumeManager.hxx",
                                    bycopy.} = object of SelectBasicsSelectingVolumeManager 

  SelectMgrSelection* {.importcpp: "SelectMgr_Selection",
                       header: "SelectMgr_Selection.hxx", bycopy.} = object of StandardTransient 

  SelectMgrSelectionImageFiller* {.importcpp: "SelectMgr_SelectionImageFiller",
                                  header: "SelectMgr_SelectionImageFiller.hxx",
                                  bycopy.} = object of StandardTransient 

  SelectMgrSelectionManager* {.importcpp: "SelectMgr_SelectionManager",
                              header: "SelectMgr_SelectionManager.hxx", bycopy.} = object of StandardTransient 

  SelectMgrSensitiveEntity* {.importcpp: "SelectMgr_SensitiveEntity",
                             header: "SelectMgr_SensitiveEntity.hxx", bycopy.} = object of StandardTransient 

  SelectMgrSensitiveEntitySet* {.importcpp: "SelectMgr_SensitiveEntitySet",
                                header: "SelectMgr_SensitiveEntitySet.hxx", bycopy.} = object of BVH_PrimitiveSet3d 

  SelectMgrTriangularFrustum* {.importcpp: "SelectMgr_TriangularFrustum",
                               header: "SelectMgr_TriangularFrustum.hxx", bycopy.} = object of SelectMgrFrustum[
      3] 

  SelectMgrTriangularFrustumSet* {.importcpp: "SelectMgr_TriangularFrustumSet",
                                  header: "SelectMgr_TriangularFrustumSet.hxx",
                                  bycopy.} = object of SelectMgrBaseFrustum 

  SelectMgrViewerSelector* {.importcpp: "SelectMgr_ViewerSelector",
                            header: "SelectMgr_ViewerSelector.hxx", bycopy.} = object of StandardTransient 
                            #header: "SelectMgr_ViewerSelector.hxx", bycopy.} = object of StandardTransient 

                            #header: "SelectMgr_ViewerSelector.hxx", bycopy.} = object of StandardTransient 
  SelectMgrViewerSelector3d* {.importcpp: "SelectMgr_ViewerSelector3d",
                              header: "SelectMgr_ViewerSelector3d.hxx", bycopy.} = object of SelectMgrViewerSelector 

