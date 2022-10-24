type
  SelectMgr* {.importcpp: "SelectMgr", header: "SelectMgr.hxx", bycopy.} = object ## !
                                                                          ## Compute debug
                                                                          ## presentation for
                                                                          ## sensitive
                                                                          ## objects.
type
  HandleSelectMgrAndFilter* = Handle[SelectMgrAndFilter]
## ! A framework to define a selection filter for two or
## ! more types of entity.
type
  SelectMgrAndFilter* {.importcpp: "SelectMgr_AndFilter",
                       header: "SelectMgr_AndFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## an
                                                                                                   ## empty
                                                                                                   ## selection
                                                                                                   ## filter
                                                                                                   ## object
                                                                                                   ## for
                                                                                                   ## two
                                                                                                   ## or
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## more
                                                                                                   ## types
                                                                                                   ## of
                                                                                                   ## entity.
type
  HandleSelectMgrAndOrFilter* = Handle[SelectMgrAndOrFilter]
## ! A framework to define an OR or AND selection filter.
## ! To use an AND selection filter call SetUseOrFilter with False parameter.
## ! By default the OR selection filter is used.
type
  SelectMgrAndOrFilter* {.importcpp: "SelectMgr_AndOrFilter",
                         header: "SelectMgr_AndOrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter ##
                                                                                                       ## !
                                                                                                       ## Constructs
                                                                                                       ## an
                                                                                                       ## empty
                                                                                                       ## selection
                                                                                                       ## filter.
    ## !< disabled objects.
    ## !  Selection isn't applied to these objects.
    ## !< selection filter type. SelectMgr_TypeFilter_OR by default.
type
  SelectMgrBaseFrustum* {.importcpp: "SelectMgr_BaseFrustum",
                         header: "SelectMgr_BaseFrustum.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## new
                                                                                              ## selecting
                                                                                              ## volume
                                                                                              ## with
                                                                                              ## pixel
                                                                                              ## toletance
                                                                                              ## set
                                                                                              ## to
                                                                                              ## 2,
                                                                                              ##
                                                                                              ## !
                                                                                              ## orthographic
                                                                                              ## camera
                                                                                              ## and
                                                                                              ## empty
                                                                                              ## frustum
                                                                                              ## builder
    ## !< Pixel tolerance
    ## !< Defines if current camera is orthographic
    ## !< A tool implementing methods for volume build
    ## !< camera definition
type
  SelectMgrBVHThreadPool* {.importcpp: "SelectMgr_BVHThreadPool",
                           header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Main
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Thread
                                                                                                  ## with
                                                                                                  ## back
                                                                                                  ## reference
                                                                                                  ## to
                                                                                                  ## thread
                                                                                                  ## pool
                                                                                                  ## and
                                                                                                  ## thread
                                                                                                  ## mutex
                                                                                                  ## in
                                                                                                  ## it.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Queue
                                                                                                  ## a
                                                                                                  ## sensitive
                                                                                                  ## entity
                                                                                                  ## to
                                                                                                  ## build
                                                                                                  ## its
                                                                                                  ## BVH
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Class
                                                                                                  ## providing
                                                                                                  ## a
                                                                                                  ## simple
                                                                                                  ## interface
                                                                                                  ## to
                                                                                                  ## mutexes
                                                                                                  ## for
                                                                                                  ## list
                                                                                                  ## of
                                                                                                  ## BVHThread
    ## !< list of queued sensitive entities
    ## !< threads to build BVH
    ## !< flag to stop BVH threads
    ## !< mutex for interaction with myBVHToBuildList
    ## !< raises when any sensitive is added to the BVH list
    ## !< raises when BVH list become empty
    ## !< indicates that threads are running
type
  SelectMgrBVHThreadPoolBVHThread* {.importcpp: "SelectMgr_BVHThreadPool::BVHThread",
                                    header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object of OSD_Thread ##
                                                                                                    ## !
                                                                                                    ## Method
                                                                                                    ## is
                                                                                                    ## executed
                                                                                                    ## in
                                                                                                    ## the
                                                                                                    ## context
                                                                                                    ## of
                                                                                                    ## thread.
type
  SelectMgrBVHThreadPoolSentry* {.importcpp: "SelectMgr_BVHThreadPool::Sentry",
                                 header: "SelectMgr_BVHThreadPool.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructor
                                                                                     ## -
                                                                                     ## initializes
                                                                                     ## the
                                                                                     ## sentry
                                                                                     ## object
                                                                                     ## and
                                                                                     ## locks
                                                                                     ## list
                                                                                     ## of
                                                                                     ## mutexes
                                                                                     ## immediately
type
  HandleSelectMgrCompositionFilter* = Handle[SelectMgrCompositionFilter]
## ! A framework to define a compound filter composed of
## ! two or more simple filters.
type
  SelectMgrCompositionFilter* {.importcpp: "SelectMgr_CompositionFilter",
                               header: "SelectMgr_CompositionFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                                        ## !
                                                                                                        ## Adds
                                                                                                        ## the
                                                                                                        ## filter
                                                                                                        ## afilter
                                                                                                        ## to
                                                                                                        ## a
                                                                                                        ## filter
                                                                                                        ## object
                                                                                                        ## created
                                                                                                        ## by
                                                                                                        ## a
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## filter
                                                                                                        ## class
                                                                                                        ## inheriting
                                                                                                        ## this
                                                                                                        ## framework.
type
  SelectMgrEntityOwner* {.importcpp: "SelectMgr_EntityOwner",
                         header: "SelectMgr_EntityOwner.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Initializes
                                                                                              ## the
                                                                                              ## selection
                                                                                              ## priority
                                                                                              ## aPriority.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Sets
                                                                                              ## the
                                                                                              ## selectable
                                                                                              ## object.
    ## !< raw pointer to selectable object
    ## !< selection priority (for result with the same depth)
    ## !< flag indicating selected state
    ## !< flag indicating this owner points to a part of object (TRUE) or to entire object (FALSE)
type
  HandleSelectMgrEntityOwner* = Handle[SelectMgrEntityOwner]
##  for porting old code
type
  HandleSelectMgrFilter* = Handle[SelectMgrFilter]
## ! The root class to define filter objects for selection.
## ! Advance handling of objects requires the services of
## ! filters. These only allow dynamic detection and
## ! selection of objects which correspond to the criteria defined in each.
## ! Eight standard filters inheriting SelectMgr_Filter are
## ! defined in Open CASCADE.
## ! You can create your own filters by defining new filter
## ! classes inheriting this framework. You use these
## ! filters by loading them into an AIS interactive context.
type
  SelectMgrFilter* {.importcpp: "SelectMgr_Filter", header: "SelectMgr_Filter.hxx",
                    bycopy.} = object of StandardTransient ## ! Indicates that the selected Interactive Object
                                                      ## ! passes the filter. The owner, anObj, can be either
                                                      ## ! direct or user. A direct owner is the corresponding
                                                      ## ! construction element, whereas a user is the
                                                      ## ! compound shape of which the entity forms a part.
                                                      ## ! When an object is detected by the mouse - in AIS,
                                                      ## ! this is done through a context selector - its owner
                                                      ## ! is passed to the filter as an argument.
                                                      ## ! If the object returns Standard_True, it is kept; if
                                                      ## ! not, it is rejected.
                                                      ## ! If you are creating a filter class inheriting this
                                                      ## ! framework, and the daughter class is to be used in
                                                      ## ! an AIS local context, you will need to implement the
                                                      ## ! virtual function ActsOn.
type
  SelectMgrFrustum*[N: static[cint]] {.importcpp: "SelectMgr_Frustum<\'0>",
                                     header: "SelectMgr_Frustum.hxx", bycopy.} = object of SelectMgrBaseFrustum ##  SAT Tests for different objects
                                                                                                         ## ! Returns true if selecting volume is overlapped by axis-aligned bounding box
                                                                                                         ## ! with minimum corner at point theMinPt and maximum at point theMaxPt
                                                                                                         ## ! Checks if AABB and frustum are separated along the given axis
    ## !< Plane equations
    ## !< Vertices coordinates
    ## !< Cached projections of vertices onto frustum plane directions
    ## !< Cached projections of vertices onto frustum plane directions
    ## !< Cached projections of vertices onto directions of ortho unit vectors
    ## !< Cached projections of vertices onto directions of ortho unit vectors
    ## !< Cached edge directions
type
  SelectMgrFrustumBuilder* {.importcpp: "SelectMgr_FrustumBuilder",
                            header: "SelectMgr_FrustumBuilder.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## new
                                                                                                    ## frustum
                                                                                                    ## builder
                                                                                                    ## with
                                                                                                    ## empty
                                                                                                    ## matrices
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Unprojects
                                                                                                    ## point
                                                                                                    ## from
                                                                                                    ## NDC
                                                                                                    ## coords
                                                                                                    ## to
                                                                                                    ## 3d
                                                                                                    ## world
                                                                                                    ## space
type
  HandleSelectMgrOrFilter* = Handle[SelectMgrOrFilter]
## ! A framework to define an or selection filter.
## ! This selects one or another type of sensitive entity.
type
  SelectMgrOrFilter* {.importcpp: "SelectMgr_OrFilter",
                      header: "SelectMgr_OrFilter.hxx", bycopy.} = object of SelectMgrCompositionFilter ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## an
                                                                                                 ## empty
                                                                                                 ## or
                                                                                                 ## selection
                                                                                                 ## filter.
type
  SelectMgrRectangularFrustum* {.importcpp: "SelectMgr_RectangularFrustum",
                                header: "SelectMgr_RectangularFrustum.hxx", bycopy.} = object of SelectMgrFrustum[
      4]
    ## !< 3d projection of user-picked selection point onto near view plane
    ## !< 3d projection of user-picked selection point onto far view plane
    ## !< Mouse coordinates
    ## !< Scale factor of applied transformation, if there was any
type
  SelectMgrSelectableObject* {.importcpp: "SelectMgr_SelectableObject",
                              header: "SelectMgr_SelectableObject.hxx", bycopy.} = object of PrsMgrPresentableObject ##
                                                                                                              ## !
                                                                                                              ## Clears
                                                                                                              ## all
                                                                                                              ## selections
                                                                                                              ## of
                                                                                                              ## the
                                                                                                              ## object
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Protected
                                                                                                              ## empty
                                                                                                              ## constructor.
    ## !< list of selections
    ## !< optional presentation for highlighting selected object
    ## !< optional presentation for highlighting detected object
    ## !< global selection mode
    ## !< auto-highlighting flag defining
type
  SelectMgrSelectableObjectSet* {.importcpp: "SelectMgr_SelectableObjectSet",
                                 header: "SelectMgr_SelectableObjectSet.hxx",
                                 bycopy.} = object ## ! This enumeration declares names for subsets of selectable objects. Each subset has independent BVH tree.
                                                ## ! The class maintains subsets of selectable objects by their persistence flag. This allows to restric
                                                ## ! rebuilding of the trees for particular subset when the camera change does not implicitly require it:
                                                ## ! - BVHSubset_3d refers to the subset of normal world-space 3D objects. Associated BVH tree does not depend
                                                ## ! on the camera's state at all.
                                                ## ! This subset uses binned BVH builder with 32 bins and 1 element per leaf.
                                                ## ! - BVHSubset_3dPersistent refers to the subset of 3D persistent selectable objects (rotate, pan, zoom persistence).
                                                ## ! Associated BVH tree needs to be updated when either the camera's projection and position change.
                                                ## ! This subset uses linear BVH builder with 32 levels of depth and 1 element per leaf.
                                                ## ! - BVHSubset_2dPersistent refers to the subset of 2D persistent selectable objects. Associated BVH tree
                                                ## ! needs to be updated only when camera's projection changes. Bounding volumes for this object subclass
                                                ## ! is represented directly in eye space coordinates.
                                                ## ! This subset uses linear BVH builder with 32 levels of depth and 1 element per leaf.
                                                ## ! Class to iterate sequentually over all objects from every subset.
                                                ## ! Creates new empty objects set and initializes BVH tree builders for each subset.
                                                ## ! Returns an appropriate subset of theObject given depending on its persistence type.
    ## !< Map of objects for each subset
    ## !< BVH tree computed for each subset
    ## !< Builder allocated for each subset
    ## !< Dirty flag for each subset
    ## !< Last view-projection state used for construction of BVH
    ## !< Last viewport's (window's) width used for construction of BVH
    ## !< Last viewport's (window's) height used for construction of BVH
  SelectMgrSelectableObjectSetBVHSubset* {.size: sizeof(cint),
      importcpp: "SelectMgr_SelectableObjectSet::BVHSubset",
      header: "SelectMgr_SelectableObjectSet.hxx".} = enum
    BVHSubset3d, BVHSubset3dPersistent, BVHSubset2dPersistent, BVHSubsetNb
type
  SelectMgrSelectableObjectSetIterator* {.
      importcpp: "SelectMgr_SelectableObjectSet::Iterator",
      header: "SelectMgr_SelectableObjectSet.hxx", bycopy.} = object ## ! Short-cut definition of map iterator type
                                                                ## ! Default constructor without initialization.
type
  SelectMgrSelectingVolumeManager* {.importcpp: "SelectMgr_SelectingVolumeManager", header: "SelectMgr_SelectingVolumeManager.hxx",
                                    bycopy.} = object of SelectBasicsSelectingVolumeManager ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## instances
                                                                                       ## of
                                                                                       ## all
                                                                                       ## available
                                                                                       ## selecting
                                                                                       ## volume
                                                                                       ## types
    ## !< Array of selecting volumes
    ## !< view clipping planes
    ## !< object clipping planes
    ## !< Defines if partially overlapped entities will me detected or not
type
  SelectMgrSelection* {.importcpp: "SelectMgr_Selection",
                       header: "SelectMgr_Selection.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Constructs
                                                                                          ## a
                                                                                          ## selection
                                                                                          ## object
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## the
                                                                                          ## selection
                                                                                          ## mode
                                                                                          ## IdMode.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## default
                                                                                          ## setting
                                                                                          ## 0
                                                                                          ## is
                                                                                          ## the
                                                                                          ## selection
                                                                                          ## mode
                                                                                          ## for
                                                                                          ## a
                                                                                          ## shape
                                                                                          ## in
                                                                                          ## its
                                                                                          ## entirety.
type
  SelectMgrSelectionImageFiller* {.importcpp: "SelectMgr_SelectionImageFiller",
                                  header: "SelectMgr_SelectionImageFiller.hxx",
                                  bycopy.} = object of StandardTransient ## ! Create filler of specified type.
                                                                    ## ! Main constructor.
                                                                    ## ! Find the new unique random color.
type
  SelectMgrSelectionManager* {.importcpp: "SelectMgr_SelectionManager",
                              header: "SelectMgr_SelectionManager.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Constructs
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## selection
                                                                                                        ## manager
                                                                                                        ## object.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Recomputes
                                                                                                        ## given
                                                                                                        ## selection
                                                                                                        ## mode
                                                                                                        ## and
                                                                                                        ## updates
                                                                                                        ## BVHs
                                                                                                        ## in
                                                                                                        ## all
                                                                                                        ## viewer
                                                                                                        ## selectors
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Loads
                                                                                                        ## and
                                                                                                        ## creates
                                                                                                        ## selection
                                                                                                        ## structures
                                                                                                        ## for
                                                                                                        ## object
                                                                                                        ## theObject
                                                                                                        ## with
                                                                                                        ## mode
                                                                                                        ## theMode
                                                                                                        ## in
                                                                                                        ## specified
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## viewer
                                                                                                        ## selector
                                                                                                        ## theSelector.
                                                                                                        ## If
                                                                                                        ## theSelector
                                                                                                        ## is
                                                                                                        ## set
                                                                                                        ## to
                                                                                                        ## default
                                                                                                        ## value
                                                                                                        ## (NULL),
                                                                                                        ## the
                                                                                                        ## selection
                                                                                                        ## mode
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## created
                                                                                                        ## will
                                                                                                        ## be
                                                                                                        ## added
                                                                                                        ## to
                                                                                                        ## all
                                                                                                        ## known
                                                                                                        ## viewer
                                                                                                        ## selectors.
type
  SelectMgrSensitiveEntity* {.importcpp: "SelectMgr_SensitiveEntity",
                             header: "SelectMgr_SensitiveEntity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## new
                                                                                                      ## inactive
                                                                                                      ## for
                                                                                                      ## selection
                                                                                                      ## object
                                                                                                      ## with
                                                                                                      ## base
                                                                                                      ## entity
                                                                                                      ## theEntity
    ## !< Related SelectBasics entity
    ## !< Selection activity status
type
  SelectMgrIndexedMapOfHSensitive*[HandleSelectMgrSensitiveEntity] {.importcpp:"NCollection_IndexedMap<'0>", header:"SelectMgr_SensitiveEntitySet.hxx", bycopy.} = object
## ! This class is used to store all calculated sensitive entites of one selectable
## ! object. It provides an interface for building BVH tree which is used to speed-up
## ! the performance of searching for overlap among sensitives of one selectable object
type
  SelectMgrSensitiveEntitySet* {.importcpp: "SelectMgr_SensitiveEntitySet",
                                header: "SelectMgr_SensitiveEntitySet.hxx", bycopy.} = object of BVH_PrimitiveSet3d ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor.
    ## !< Map of entities and its corresponding index in BVH
type
  SelectMgrSortCriterion* {.importcpp: "SelectMgr_SortCriterion",
                           header: "SelectMgr_SortCriterion.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor.
    entity* {.importc: "Entity".}: Handle[Select3D_SensitiveEntity] ## !< detected entity
    point* {.importc: "Point".}: PntObj ## !< 3D point
    normal* {.importc: "Normal".}: Graphic3dVec3 ## !< surface normal or 0 vector if undefined
    depth* {.importc: "Depth".}: cfloat ## !< distance from the view plane to the entity
    minDist* {.importc: "MinDist".}: cfloat ## !< distance from the clicked point to the entity on the view plane
    tolerance* {.importc: "Tolerance".}: cfloat ## !< tolerance used for selecting candidates
    priority* {.importc: "Priority".}: cint ## !< selection priority
    zLayerPosition* {.importc: "ZLayerPosition".}: cint ## !< ZLayer rendering order index, stronger than a depth
    nbOwnerMatches* {.importc: "NbOwnerMatches".}: cint ## !< overall number of entities collected for the same owner
type
  SelectMgrToleranceMap* {.importcpp: "SelectMgr_ToleranceMap",
                          header: "SelectMgr_ToleranceMap.hxx", bycopy.} = object ## !
                                                                             ## Sets
                                                                             ## tolerance
                                                                             ## values to
                                                                             ## -1.0
type
  SelectMgrTriangularFrustum* {.importcpp: "SelectMgr_TriangularFrustum",
                               header: "SelectMgr_TriangularFrustum.hxx", bycopy.} = object of SelectMgrFrustum[
      3] ## ! Creates new triangular frustum with bases of triangles with vertices theP1,
        ## ! theP2 and theP3 projections onto near and far view frustum planes
type
  SelectMgrTriangFrustums* = NCollectionList[Handle[SelectMgrTriangularFrustum]]
  SelectMgrTriangFrustumsIter*[HandleSelectMgrTriangularFrustum] {.importcpp:"NCollection_List<'0>::Iterator", header:"SelectMgr_TriangularFrustumSet.hxx", bycopy.} = object
## ! This class is used to handle polyline selection. The main principle of polyline selection
## ! algorithm is to split the polygon defined by polyline onto triangles. Than each of
## ! them is considered as a base for triangular frustum building. In other
## ! words, each triangle vertiex will be projected from 2d screen space to 3d world space
## ! onto near and far view frustum planes. Thus, the projected triangles make up the bases of
## ! selecting frustum. When the set of such frustums is created, the function determining
## ! selection iterates through triangular frustum set and searches for overlap with any
## ! frustum.
type
  SelectMgrTriangularFrustumSet* {.importcpp: "SelectMgr_TriangularFrustumSet",
                                  header: "SelectMgr_TriangularFrustumSet.hxx",
                                  bycopy.} = object of SelectMgrBaseFrustum ## ! Checks whether the segment
                                                                       ## intersects with the boundary of the current volume selection
type
  SelectMgrVec3* = NCollectionVec3[cfloat]
  SelectMgrVec4* = NCollectionVec4[cfloat]
  SelectMgrMat4* = NCollectionMat4[cfloat]
type
  SelectMgrViewClipRange* {.importcpp: "SelectMgr_ViewClipRange",
                           header: "SelectMgr_ViewClipRange.hxx", bycopy.} = object ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## empty
                                                                               ## clip
                                                                               ## range.
                                                                               ## !
                                                                               ## Clears
                                                                               ## clipping
                                                                               ## range.
type
  SelectMgrMapOfObjectSensitives*[HandleSelectMgrSelectableObject, HandleSelectMgrSensitiveEntitySet] {.importcpp:"NCollection_DataMap< '0, '1 >", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object
  SelectMgrMapOfObjectSensitivesIterator*[HandleSelectMgrSelectableObject, HandleSelectMgrSensitiveEntitySet] {.importcpp:"NCollection_DataMap< '0, '1 >::Iterator", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object
  SelectMgrFrustumCache*[cint, SelectMgrSelectingVolumeManager] {.importcpp:"NCollection_DataMap< '0, '1 >", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object
## ! A framework to define finding, sorting the sensitive
## ! primitives in a view. Services are also provided to
## ! define the return of the owners of those primitives
## ! selected. The primitives are sorted by criteria such
## ! as priority of the primitive or its depth in the view
## ! relative to that of other primitives.
## ! Note that in 3D, the inheriting framework
## ! StdSelect_ViewerSelector3d   is only to be used
## ! if you do not want to use the services provided by
## ! AIS.
## ! Two tools are available to find and select objects
## ! found at a given position in the view. If you want to
## ! select the owners of all the objects detected at
## ! point x,y,z you use the Init - More - Next - Picked
## ! loop. If, on the other hand, you want to select only
## ! one object detected at that point, you use the Init -
## ! More - OnePicked loop. In this iteration, More is
## ! used to see if an object was picked and
## ! OnePicked, to get the object closest to the pick position.
## ! Viewer selectors are driven by
## ! SelectMgr_SelectionManager, and manipulate
## ! the SelectMgr_Selection objects given to them by
## ! the selection manager.
## !
## ! Tolerances are applied to the entities in the following way:
## ! 1. tolerance value stored in mytolerance will be used to calculate initial
## !    selecting frustum, which will be applied for intersection testing during
## !    BVH traverse;
## ! 2. if tolerance of sensitive entity is less than mytolerance, the frustum for
## !    intersection detection will be resized according to its sensitivity.
type
  SelectMgrViewerSelector* {.importcpp: "SelectMgr_ViewerSelector",
                            header: "SelectMgr_ViewerSelector.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Empties
                                                                                                    ## all
                                                                                                    ## the
                                                                                                    ## tables,
                                                                                                    ## removes
                                                                                                    ## all
                                                                                                    ## selections...
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Begins
                                                                                                    ## an
                                                                                                    ## iteration
                                                                                                    ## scanning
                                                                                                    ## for
                                                                                                    ## the
                                                                                                    ## owners
                                                                                                    ## detected
                                                                                                    ## at
                                                                                                    ## a
                                                                                                    ## position
                                                                                                    ## in
                                                                                                    ## the
                                                                                                    ## view.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Enables/disables
                                                                                                    ## building
                                                                                                    ## BVH
                                                                                                    ## for
                                                                                                    ## sensitives
                                                                                                    ## in
                                                                                                    ## separate
                                                                                                    ## threads
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Checks
                                                                                                    ## if
                                                                                                    ## the
                                                                                                    ## entity
                                                                                                    ## given
                                                                                                    ## requires
                                                                                                    ## to
                                                                                                    ## scale
                                                                                                    ## current
                                                                                                    ## selecting
                                                                                                    ## frustum
                                                                                                    ##
                                                                                                    ## implementation
                                                                                                    ## of
                                                                                                    ## deprecated
                                                                                                    ## methods
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## internal
                                                                                                    ## iterator
                                                                                                    ## for
                                                                                                    ## stored
                                                                                                    ## detected
                                                                                                    ## sensitive
                                                                                                    ## entities
type
  SelectMgrViewerSelector3d* {.importcpp: "SelectMgr_ViewerSelector3d",
                              header: "SelectMgr_ViewerSelector3d.hxx", bycopy.} = object of SelectMgrViewerSelector ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## 3D
                                                                                                              ## selector
                                                                                                              ## object.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Displays
                                                                                                              ## sensitives
                                                                                                              ## in
                                                                                                              ## view
                                                                                                              ## <theView>.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Update
                                                                                                              ## z-layers
                                                                                                              ## order
                                                                                                              ## map.
    ## !< list of debug presentations
