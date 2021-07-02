##  Created on: 1995-02-15
##  Created by: Roberc Coublanc
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of SelectMgr_SelectionManager"
discard "forward decl of SelectMgr_SensitiveEntitySet"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of Select3D_SensitiveEntity"
# when defined(Status):
#   discard
type
  SelectMgrMapOfObjectSensitives* = NCollectionDataMap[
      Handle[SelectMgrSelectableObject], Handle[SelectMgrSensitiveEntitySet]]
  SelectMgrMapOfObjectSensitivesIterator* = Iterator[
      Handle[SelectMgrSelectableObject], Handle[SelectMgrSensitiveEntitySet]]
  SelectMgrFrustumCache* = NCollectionDataMap[StandardInteger,
      SelectMgrSelectingVolumeManager]

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

  SelectMgrViewerSelectorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_ViewerSelector::get_type_name(@)",
                            header: "SelectMgr_ViewerSelector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_ViewerSelector::get_type_descriptor(@)",
    header: "SelectMgr_ViewerSelector.hxx".}
proc dynamicType*(this: SelectMgrViewerSelector): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_ViewerSelector.hxx".}
proc clear*(this: var SelectMgrViewerSelector) {.importcpp: "Clear",
    header: "SelectMgr_ViewerSelector.hxx".}
proc customPixelTolerance*(this: SelectMgrViewerSelector): StandardInteger {.
    noSideEffect, importcpp: "CustomPixelTolerance",
    header: "SelectMgr_ViewerSelector.hxx".}
proc setPixelTolerance*(this: var SelectMgrViewerSelector;
                       theTolerance: StandardInteger) {.
    importcpp: "SetPixelTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc sensitivity*(this: SelectMgrViewerSelector): StandardReal {.noSideEffect,
    importcpp: "Sensitivity", header: "SelectMgr_ViewerSelector.hxx".}
proc pixelTolerance*(this: SelectMgrViewerSelector): StandardInteger {.noSideEffect,
    importcpp: "PixelTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc sortResult*(this: var SelectMgrViewerSelector) {.importcpp: "SortResult",
    header: "SelectMgr_ViewerSelector.hxx".}
proc onePicked*(this: SelectMgrViewerSelector): Handle[SelectMgrEntityOwner] {.
    noSideEffect, importcpp: "OnePicked", header: "SelectMgr_ViewerSelector.hxx".}
proc toPickClosest*(this: SelectMgrViewerSelector): bool {.noSideEffect,
    importcpp: "ToPickClosest", header: "SelectMgr_ViewerSelector.hxx".}
proc setPickClosest*(this: var SelectMgrViewerSelector; theToPreferClosest: bool) {.
    importcpp: "SetPickClosest", header: "SelectMgr_ViewerSelector.hxx".}
proc depthToleranceType*(this: SelectMgrViewerSelector): SelectMgrTypeOfDepthTolerance {.
    noSideEffect, importcpp: "DepthToleranceType",
    header: "SelectMgr_ViewerSelector.hxx".}
proc depthTolerance*(this: SelectMgrViewerSelector): StandardReal {.noSideEffect,
    importcpp: "DepthTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc setDepthTolerance*(this: var SelectMgrViewerSelector;
                       theType: SelectMgrTypeOfDepthTolerance;
                       theTolerance: StandardReal) {.
    importcpp: "SetDepthTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc nbPicked*(this: SelectMgrViewerSelector): StandardInteger {.noSideEffect,
    importcpp: "NbPicked", header: "SelectMgr_ViewerSelector.hxx".}
proc clearPicked*(this: var SelectMgrViewerSelector) {.importcpp: "ClearPicked",
    header: "SelectMgr_ViewerSelector.hxx".}
proc picked*(this: SelectMgrViewerSelector; theRank: StandardInteger): Handle[
    SelectMgrEntityOwner] {.noSideEffect, importcpp: "Picked",
                           header: "SelectMgr_ViewerSelector.hxx".}
proc pickedData*(this: SelectMgrViewerSelector; theRank: StandardInteger): SelectMgrSortCriterion {.
    noSideEffect, importcpp: "PickedData", header: "SelectMgr_ViewerSelector.hxx".}
proc pickedEntity*(this: SelectMgrViewerSelector; theRank: StandardInteger): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "PickedEntity",
                               header: "SelectMgr_ViewerSelector.hxx".}
proc pickedPoint*(this: SelectMgrViewerSelector; theRank: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "PickedPoint", header: "SelectMgr_ViewerSelector.hxx".}
proc contains*(this: SelectMgrViewerSelector;
              theObject: Handle[SelectMgrSelectableObject]): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "SelectMgr_ViewerSelector.hxx".}
proc entitySetBuilder*(this: var SelectMgrViewerSelector): Handle[
    Select3D_BVHBuilder3d] {.importcpp: "EntitySetBuilder",
                            header: "SelectMgr_ViewerSelector.hxx".}
proc setEntitySetBuilder*(this: var SelectMgrViewerSelector;
                         theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetEntitySetBuilder", header: "SelectMgr_ViewerSelector.hxx".}
proc modes*(this: SelectMgrViewerSelector;
           theSelectableObject: Handle[SelectMgrSelectableObject];
           theModeList: var TColStdListOfInteger;
           theWantedState: SelectMgrStateOfSelection = selectMgrSOS_Any): StandardBoolean {.
    noSideEffect, importcpp: "Modes", header: "SelectMgr_ViewerSelector.hxx".}
proc isActive*(this: SelectMgrViewerSelector;
              theSelectableObject: Handle[SelectMgrSelectableObject];
              theMode: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsActive", header: "SelectMgr_ViewerSelector.hxx".}
proc isInside*(this: SelectMgrViewerSelector;
              theSelectableObject: Handle[SelectMgrSelectableObject];
              theMode: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsInside", header: "SelectMgr_ViewerSelector.hxx".}
proc status*(this: SelectMgrViewerSelector;
            theSelection: Handle[SelectMgrSelection]): SelectMgrStateOfSelection {.
    noSideEffect, importcpp: "Status", header: "SelectMgr_ViewerSelector.hxx".}
proc status*(this: SelectMgrViewerSelector;
            theSelectableObject: Handle[SelectMgrSelectableObject]): TCollectionAsciiString {.
    noSideEffect, importcpp: "Status", header: "SelectMgr_ViewerSelector.hxx".}
proc activeOwners*(this: SelectMgrViewerSelector;
                  theOwners: var NCollectionList[Handle[SelectMgrEntityOwner]]) {.
    noSideEffect, importcpp: "ActiveOwners", header: "SelectMgr_ViewerSelector.hxx".}
proc addSelectableObject*(this: var SelectMgrViewerSelector;
                         theObject: Handle[SelectMgrSelectableObject]) {.
    importcpp: "AddSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc addSelectionToObject*(this: var SelectMgrViewerSelector;
                          theObject: Handle[SelectMgrSelectableObject];
                          theSelection: Handle[SelectMgrSelection]) {.
    importcpp: "AddSelectionToObject", header: "SelectMgr_ViewerSelector.hxx".}
proc moveSelectableObject*(this: var SelectMgrViewerSelector;
                          theObject: Handle[SelectMgrSelectableObject]) {.
    importcpp: "MoveSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc removeSelectableObject*(this: var SelectMgrViewerSelector;
                            theObject: Handle[SelectMgrSelectableObject]) {.
    importcpp: "RemoveSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc removeSelectionOfObject*(this: var SelectMgrViewerSelector;
                             theObject: Handle[SelectMgrSelectableObject];
                             theSelection: Handle[SelectMgrSelection]) {.
    importcpp: "RemoveSelectionOfObject", header: "SelectMgr_ViewerSelector.hxx".}
proc rebuildObjectsTree*(this: var SelectMgrViewerSelector;
                        theIsForce: StandardBoolean = standardFalse) {.
    importcpp: "RebuildObjectsTree", header: "SelectMgr_ViewerSelector.hxx".}
proc rebuildSensitivesTree*(this: var SelectMgrViewerSelector;
                           theObject: Handle[SelectMgrSelectableObject];
                           theIsForce: StandardBoolean = standardFalse) {.
    importcpp: "RebuildSensitivesTree", header: "SelectMgr_ViewerSelector.hxx".}
proc getManager*(this: var SelectMgrViewerSelector): var SelectMgrSelectingVolumeManager {.
    importcpp: "GetManager", header: "SelectMgr_ViewerSelector.hxx".}
proc selectableObjects*(this: SelectMgrViewerSelector): SelectMgrSelectableObjectSet {.
    noSideEffect, importcpp: "SelectableObjects",
    header: "SelectMgr_ViewerSelector.hxx".}
proc resetSelectionActivationStatus*(this: var SelectMgrViewerSelector) {.
    importcpp: "ResetSelectionActivationStatus",
    header: "SelectMgr_ViewerSelector.hxx".}
proc allowOverlapDetection*(this: var SelectMgrViewerSelector;
                           theIsToAllow: StandardBoolean) {.
    importcpp: "AllowOverlapDetection", header: "SelectMgr_ViewerSelector.hxx".}
proc dumpJson*(this: SelectMgrViewerSelector; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_ViewerSelector.hxx".}
## !!!Ignored construct:  public : ! Begins an iteration scanning for the owners detected at a position in the view. Standard_DEPRECATED ( Deprecated method Init() ) void Init ( ) { initPicked ( ) ; } ! Continues the interation scanning for the owners detected at a position in the view,
## ! or continues the iteration scanning for the owner closest to the position in the view. Standard_DEPRECATED ( Deprecated method More() ) Standard_Boolean More ( ) { return morePicked ( ) ; } ! Returns the next owner found in the iteration. This is
## ! a scan for the owners detected at a position in the view. Standard_DEPRECATED ( Deprecated method Next() ) void Next ( ) { nextPicked ( ) ; } ! Returns the current selected entity detected by the selector; Standard_DEPRECATED ( Deprecated method Picked() ) opencascade :: handle < SelectMgr_EntityOwner > [end of template] Picked ( ) const ;
## Error: identifier expected, but got: Deprecated method Init()!!!

## !!!Ignored construct:  ! Initializes internal iterator for stored detected sensitive entities Standard_DEPRECATED ( Deprecated method InitDetected() ) void InitDetected ( ) { initPicked ( ) ; } ! Makes a step along the map of detected sensitive entities and their owners Standard_DEPRECATED ( Deprecated method NextDetected() ) void NextDetected ( ) { nextPicked ( ) ; } ! Returns true if iterator of map of detected sensitive entities has reached its end Standard_DEPRECATED ( Deprecated method MoreDetected() ) Standard_Boolean MoreDetected ( ) { return morePicked ( ) ; } ! Returns sensitive entity that was detected during the previous run of selection algorithm Standard_DEPRECATED ( Deprecated method DetectedEntity() should be replaced by DetectedEntity(int) ) const opencascade :: handle < Select3D_SensitiveEntity > [end of template] & DetectedEntity ( ) const ;
## Error: identifier expected, but got: Deprecated method InitDetected()!!!

proc setToPrebuildBVH*(this: var SelectMgrViewerSelector;
                      theToPrebuild: StandardBoolean;
                      theThreadsNum: StandardInteger = -1) {.
    importcpp: "SetToPrebuildBVH", header: "SelectMgr_ViewerSelector.hxx".}
proc queueBVHBuild*(this: var SelectMgrViewerSelector;
                   theEntity: Handle[Select3D_SensitiveEntity]) {.
    importcpp: "QueueBVHBuild", header: "SelectMgr_ViewerSelector.hxx".}
proc waitForBVHBuild*(this: var SelectMgrViewerSelector) {.
    importcpp: "WaitForBVHBuild", header: "SelectMgr_ViewerSelector.hxx".}
proc toPrebuildBVH*(this: SelectMgrViewerSelector): StandardBoolean {.noSideEffect,
    importcpp: "ToPrebuildBVH", header: "SelectMgr_ViewerSelector.hxx".}
discard "forward decl of SelectMgr_ViewerSelector"
type
  HandleSelectMgrViewerSelector* = Handle[SelectMgrViewerSelector]


