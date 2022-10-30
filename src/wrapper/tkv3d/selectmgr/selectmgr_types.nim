# PROVIDES: SelectMgrFilterType SelectMgrListIteratorOfListOfFilter SelectMgrPickingStrategy SelectMgrStateOfSelection SelectMgrTypeOfBVHUpdate SelectMgrTypeOfDepthTolerance SelectMgrTypeOfUpdate SelectMgr SelectMgrBVHThreadPoolSentry SelectMgrSelectableObjectSet SelectMgrSelectableObjectSetBVHSubset SelectMgrSelectableObjectSetIterator SelectMgrIndexedMapOfHSensitive SelectMgrSortCriterion SelectMgrToleranceMap SelectMgrTriangFrustumsIter SelectMgrViewClipRange SelectMgrMapOfObjectSensitives SelectMgrMapOfObjectSensitivesIterator SelectMgrFrustumCache
# DEPENDS:  NCollectionIndexedDataMap[  NCollectionList[Handle[SelectMgrFilter]]  NCollectionSequence[Handle[SelectMgrFilter]]  NCollectionSequence[Handle[SelectMgrEntityOwner]]  NCollectionSequence[Handle[SelectMgrSelection]]  Handle[SelectMgrAndFilter]  Handle[SelectMgrAndOrFilter]  Handle[SelectMgrCompositionFilter]  Handle[SelectMgrEntityOwner]  Handle[SelectMgrFilter]  Handle[SelectMgrOrFilter]  NCollectionList[Handle[SelectMgrTriangularFrustum]]  NCollectionVec3[cfloat]  NCollectionVec4[cfloat]  NCollectionMat4[cfloat] SelectMgrCompositionFilter SelectMgrCompositionFilter StandardTransient StandardTransient OSD_Thread SelectMgrFilter StandardTransient StandardTransient SelectMgrBaseFrustum StandardTransient SelectMgrCompositionFilter SelectMgrFrustum PrsMgrPresentableObject SelectBasicsSelectingVolumeManager StandardTransient StandardTransient StandardTransient StandardTransient BVH_PrimitiveSet3d SelectMgrFrustum SelectMgrBaseFrustum StandardTransient SelectMgrViewerSelector

import tkv3d/selectmgr/selectmgr_types
import tkv3d/prsmgr/prsmgr_types
import tkmath/bvh/bvh_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
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
    point* {.importc: "Point".}: PntObj 
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

  HandleSelectMgrAndFilter* = Handle[SelectMgrAndFilter]

  HandleSelectMgrAndOrFilter* = Handle[SelectMgrAndOrFilter]

  HandleSelectMgrCompositionFilter* = Handle[SelectMgrCompositionFilter]

  HandleSelectMgrEntityOwner* = Handle[SelectMgrEntityOwner]

  HandleSelectMgrFilter* = Handle[SelectMgrFilter]

  HandleSelectMgrOrFilter* = Handle[SelectMgrOrFilter]

  SelectMgrTriangFrustums* = NCollectionList[Handle[SelectMgrTriangularFrustum]]

  SelectMgrVec3* = NCollectionVec3[cfloat]

  SelectMgrVec4* = NCollectionVec4[cfloat]

  SelectMgrMat4* = NCollectionMat4[cfloat]

  SelectMgrAndFilter* {.importcpp: "SelectMgr_AndFilter",
                       header: "SelectMgr_AndFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter 

  SelectMgrAndOrFilter* {.importcpp: "SelectMgr_AndOrFilter",
                         header: "SelectMgr_AndOrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter 

  SelectMgrBaseFrustum* {.importcpp: "SelectMgr_BaseFrustum",
                         header: "SelectMgr_BaseFrustum.hxx", bycopy.} = object of StandardTransient 

  SelectMgrBVHThreadPool* {.importcpp: "SelectMgr_BVHThreadPool",
                           header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of StandardTransient 

  SelectMgrBVHThreadPoolBVHThread* {.importcpp: "SelectMgr_BVHThreadPool::BVHThread",
                                    header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of OSD_Thread 

  SelectMgrCompositionFilter* {.importcpp: "SelectMgr_CompositionFilter",
                               header: "SelectMgr_CompositionFilter.hxx", bycopy.} = object of SelectMgrFilter 

  SelectMgrEntityOwner* {.importcpp: "SelectMgr_EntityOwner",
                         header: "SelectMgr_EntityOwner.hxx", bycopy.} = object of StandardTransient 

  SelectMgrFilter* {.importcpp: "SelectMgr_Filter", header: "SelectMgr_Filter.hxx",
                    bycopy.} = object of StandardTransient 

  SelectMgrFrustum*[N: static[cint]] {.importcpp: "SelectMgr_Frustum<\'0>",
                                     header: "SelectMgr_Frustum.hxx", bycopy.} = object of SelectMgrBaseFrustum 

  SelectMgrFrustumBuilder* {.importcpp: "SelectMgr_FrustumBuilder",
                            header: "SelectMgr_FrustumBuilder.hxx", bycopy.} = object of StandardTransient 

  SelectMgrOrFilter* {.importcpp: "SelectMgr_OrFilter",
                      header: "SelectMgr_OrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter 

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

                            header: "SelectMgr_ViewerSelector.hxx", bycopy.} = object of StandardTransient 
  SelectMgrViewerSelector3d* {.importcpp: "SelectMgr_ViewerSelector3d",
                              header: "SelectMgr_ViewerSelector3d.hxx", bycopy.} = object of SelectMgrViewerSelector 


