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

import
  ../Standard/Standard_Transient, ../NCollection/NCollection_DataMap,
  ../OSD/OSD_Chronometer, ../TColStd/TColStd_SequenceOfInteger,
  ../TColStd/TColStd_HArray1OfInteger, ../Select3D/Select3D_BVHBuilder3d,
  SelectMgr_IndexedDataMapOfOwnerCriterion, SelectMgr_SelectingVolumeManager,
  SelectMgr_Selection, SelectMgr_SelectableObject, SelectMgr_SelectableObjectSet,
  SelectMgr_StateOfSelection, SelectMgr_ToleranceMap,
  SelectMgr_TypeOfDepthTolerance, ../Standard/Standard_OStream,
  SelectMgr_BVHThreadPool

discard "forward decl of SelectMgr_SelectionManager"
discard "forward decl of SelectMgr_SensitiveEntitySet"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of Select3D_SensitiveEntity"
when defined(Status):
  discard
type
  SelectMgr_MapOfObjectSensitives* = NCollection_DataMap[
      handle[SelectMgr_SelectableObject], handle[SelectMgr_SensitiveEntitySet]]
  SelectMgr_MapOfObjectSensitivesIterator* = Iterator[
      handle[SelectMgr_SelectableObject], handle[SelectMgr_SensitiveEntitySet]]
  SelectMgr_FrustumCache* = NCollection_DataMap[Standard_Integer,
      SelectMgr_SelectingVolumeManager]

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
  SelectMgr_ViewerSelector* {.importcpp: "SelectMgr_ViewerSelector",
                             header: "SelectMgr_ViewerSelector.hxx", bycopy.} = object of Standard_Transient ##
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

  SelectMgr_ViewerSelectorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_ViewerSelector::get_type_name(@)",
                              header: "SelectMgr_ViewerSelector.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_ViewerSelector::get_type_descriptor(@)",
    header: "SelectMgr_ViewerSelector.hxx".}
proc DynamicType*(this: SelectMgr_ViewerSelector): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_ViewerSelector.hxx".}
proc Clear*(this: var SelectMgr_ViewerSelector) {.importcpp: "Clear",
    header: "SelectMgr_ViewerSelector.hxx".}
proc CustomPixelTolerance*(this: SelectMgr_ViewerSelector): Standard_Integer {.
    noSideEffect, importcpp: "CustomPixelTolerance",
    header: "SelectMgr_ViewerSelector.hxx".}
proc SetPixelTolerance*(this: var SelectMgr_ViewerSelector;
                       theTolerance: Standard_Integer) {.
    importcpp: "SetPixelTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc Sensitivity*(this: SelectMgr_ViewerSelector): Standard_Real {.noSideEffect,
    importcpp: "Sensitivity", header: "SelectMgr_ViewerSelector.hxx".}
proc PixelTolerance*(this: SelectMgr_ViewerSelector): Standard_Integer {.
    noSideEffect, importcpp: "PixelTolerance",
    header: "SelectMgr_ViewerSelector.hxx".}
proc SortResult*(this: var SelectMgr_ViewerSelector) {.importcpp: "SortResult",
    header: "SelectMgr_ViewerSelector.hxx".}
proc OnePicked*(this: SelectMgr_ViewerSelector): handle[SelectMgr_EntityOwner] {.
    noSideEffect, importcpp: "OnePicked", header: "SelectMgr_ViewerSelector.hxx".}
proc ToPickClosest*(this: SelectMgr_ViewerSelector): bool {.noSideEffect,
    importcpp: "ToPickClosest", header: "SelectMgr_ViewerSelector.hxx".}
proc SetPickClosest*(this: var SelectMgr_ViewerSelector; theToPreferClosest: bool) {.
    importcpp: "SetPickClosest", header: "SelectMgr_ViewerSelector.hxx".}
proc DepthToleranceType*(this: SelectMgr_ViewerSelector): SelectMgr_TypeOfDepthTolerance {.
    noSideEffect, importcpp: "DepthToleranceType",
    header: "SelectMgr_ViewerSelector.hxx".}
proc DepthTolerance*(this: SelectMgr_ViewerSelector): Standard_Real {.noSideEffect,
    importcpp: "DepthTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc SetDepthTolerance*(this: var SelectMgr_ViewerSelector;
                       theType: SelectMgr_TypeOfDepthTolerance;
                       theTolerance: Standard_Real) {.
    importcpp: "SetDepthTolerance", header: "SelectMgr_ViewerSelector.hxx".}
proc NbPicked*(this: SelectMgr_ViewerSelector): Standard_Integer {.noSideEffect,
    importcpp: "NbPicked", header: "SelectMgr_ViewerSelector.hxx".}
proc ClearPicked*(this: var SelectMgr_ViewerSelector) {.importcpp: "ClearPicked",
    header: "SelectMgr_ViewerSelector.hxx".}
proc Picked*(this: SelectMgr_ViewerSelector; theRank: Standard_Integer): handle[
    SelectMgr_EntityOwner] {.noSideEffect, importcpp: "Picked",
                            header: "SelectMgr_ViewerSelector.hxx".}
proc PickedData*(this: SelectMgr_ViewerSelector; theRank: Standard_Integer): SelectMgr_SortCriterion {.
    noSideEffect, importcpp: "PickedData", header: "SelectMgr_ViewerSelector.hxx".}
proc PickedEntity*(this: SelectMgr_ViewerSelector; theRank: Standard_Integer): handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "PickedEntity",
                               header: "SelectMgr_ViewerSelector.hxx".}
proc PickedPoint*(this: SelectMgr_ViewerSelector; theRank: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "PickedPoint", header: "SelectMgr_ViewerSelector.hxx".}
proc Contains*(this: SelectMgr_ViewerSelector;
              theObject: handle[SelectMgr_SelectableObject]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "SelectMgr_ViewerSelector.hxx".}
proc EntitySetBuilder*(this: var SelectMgr_ViewerSelector): handle[
    Select3D_BVHBuilder3d] {.importcpp: "EntitySetBuilder",
                            header: "SelectMgr_ViewerSelector.hxx".}
proc SetEntitySetBuilder*(this: var SelectMgr_ViewerSelector;
                         theBuilder: handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetEntitySetBuilder", header: "SelectMgr_ViewerSelector.hxx".}
proc Modes*(this: SelectMgr_ViewerSelector;
           theSelectableObject: handle[SelectMgr_SelectableObject];
           theModeList: var TColStd_ListOfInteger;
           theWantedState: SelectMgr_StateOfSelection = SelectMgr_SOS_Any): Standard_Boolean {.
    noSideEffect, importcpp: "Modes", header: "SelectMgr_ViewerSelector.hxx".}
proc IsActive*(this: SelectMgr_ViewerSelector;
              theSelectableObject: handle[SelectMgr_SelectableObject];
              theMode: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsActive", header: "SelectMgr_ViewerSelector.hxx".}
proc IsInside*(this: SelectMgr_ViewerSelector;
              theSelectableObject: handle[SelectMgr_SelectableObject];
              theMode: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsInside", header: "SelectMgr_ViewerSelector.hxx".}
proc Status*(this: SelectMgr_ViewerSelector;
            theSelection: handle[SelectMgr_Selection]): SelectMgr_StateOfSelection {.
    noSideEffect, importcpp: "Status", header: "SelectMgr_ViewerSelector.hxx".}
proc Status*(this: SelectMgr_ViewerSelector;
            theSelectableObject: handle[SelectMgr_SelectableObject]): TCollection_AsciiString {.
    noSideEffect, importcpp: "Status", header: "SelectMgr_ViewerSelector.hxx".}
proc ActiveOwners*(this: SelectMgr_ViewerSelector; theOwners: var NCollection_List[
    handle[SelectMgr_EntityOwner]]) {.noSideEffect, importcpp: "ActiveOwners",
                                     header: "SelectMgr_ViewerSelector.hxx".}
proc AddSelectableObject*(this: var SelectMgr_ViewerSelector;
                         theObject: handle[SelectMgr_SelectableObject]) {.
    importcpp: "AddSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc AddSelectionToObject*(this: var SelectMgr_ViewerSelector;
                          theObject: handle[SelectMgr_SelectableObject];
                          theSelection: handle[SelectMgr_Selection]) {.
    importcpp: "AddSelectionToObject", header: "SelectMgr_ViewerSelector.hxx".}
proc MoveSelectableObject*(this: var SelectMgr_ViewerSelector;
                          theObject: handle[SelectMgr_SelectableObject]) {.
    importcpp: "MoveSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc RemoveSelectableObject*(this: var SelectMgr_ViewerSelector;
                            theObject: handle[SelectMgr_SelectableObject]) {.
    importcpp: "RemoveSelectableObject", header: "SelectMgr_ViewerSelector.hxx".}
proc RemoveSelectionOfObject*(this: var SelectMgr_ViewerSelector;
                             theObject: handle[SelectMgr_SelectableObject];
                             theSelection: handle[SelectMgr_Selection]) {.
    importcpp: "RemoveSelectionOfObject", header: "SelectMgr_ViewerSelector.hxx".}
proc RebuildObjectsTree*(this: var SelectMgr_ViewerSelector;
                        theIsForce: Standard_Boolean = Standard_False) {.
    importcpp: "RebuildObjectsTree", header: "SelectMgr_ViewerSelector.hxx".}
proc RebuildSensitivesTree*(this: var SelectMgr_ViewerSelector;
                           theObject: handle[SelectMgr_SelectableObject];
                           theIsForce: Standard_Boolean = Standard_False) {.
    importcpp: "RebuildSensitivesTree", header: "SelectMgr_ViewerSelector.hxx".}
proc GetManager*(this: var SelectMgr_ViewerSelector): var SelectMgr_SelectingVolumeManager {.
    importcpp: "GetManager", header: "SelectMgr_ViewerSelector.hxx".}
proc SelectableObjects*(this: SelectMgr_ViewerSelector): SelectMgr_SelectableObjectSet {.
    noSideEffect, importcpp: "SelectableObjects",
    header: "SelectMgr_ViewerSelector.hxx".}
proc ResetSelectionActivationStatus*(this: var SelectMgr_ViewerSelector) {.
    importcpp: "ResetSelectionActivationStatus",
    header: "SelectMgr_ViewerSelector.hxx".}
proc AllowOverlapDetection*(this: var SelectMgr_ViewerSelector;
                           theIsToAllow: Standard_Boolean) {.
    importcpp: "AllowOverlapDetection", header: "SelectMgr_ViewerSelector.hxx".}
proc DumpJson*(this: SelectMgr_ViewerSelector; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_ViewerSelector.hxx".}
## !!!Ignored construct:  public : ! Begins an iteration scanning for the owners detected at a position in the view. Standard_DEPRECATED ( Deprecated method Init() ) void Init ( ) { initPicked ( ) ; } ! Continues the interation scanning for the owners detected at a position in the view,
## ! or continues the iteration scanning for the owner closest to the position in the view. Standard_DEPRECATED ( Deprecated method More() ) Standard_Boolean More ( ) { return morePicked ( ) ; } ! Returns the next owner found in the iteration. This is
## ! a scan for the owners detected at a position in the view. Standard_DEPRECATED ( Deprecated method Next() ) void Next ( ) { nextPicked ( ) ; } ! Returns the current selected entity detected by the selector; Standard_DEPRECATED ( Deprecated method Picked() ) opencascade :: handle < SelectMgr_EntityOwner > [end of template] Picked ( ) const ;
## Error: identifier expected, but got: Deprecated method Init()!!!

## !!!Ignored construct:  ! Initializes internal iterator for stored detected sensitive entities Standard_DEPRECATED ( Deprecated method InitDetected() ) void InitDetected ( ) { initPicked ( ) ; } ! Makes a step along the map of detected sensitive entities and their owners Standard_DEPRECATED ( Deprecated method NextDetected() ) void NextDetected ( ) { nextPicked ( ) ; } ! Returns true if iterator of map of detected sensitive entities has reached its end Standard_DEPRECATED ( Deprecated method MoreDetected() ) Standard_Boolean MoreDetected ( ) { return morePicked ( ) ; } ! Returns sensitive entity that was detected during the previous run of selection algorithm Standard_DEPRECATED ( Deprecated method DetectedEntity() should be replaced by DetectedEntity(int) ) const opencascade :: handle < Select3D_SensitiveEntity > [end of template] & DetectedEntity ( ) const ;
## Error: identifier expected, but got: Deprecated method InitDetected()!!!

proc SetToPrebuildBVH*(this: var SelectMgr_ViewerSelector;
                      theToPrebuild: Standard_Boolean;
                      theThreadsNum: Standard_Integer = -1) {.
    importcpp: "SetToPrebuildBVH", header: "SelectMgr_ViewerSelector.hxx".}
proc QueueBVHBuild*(this: var SelectMgr_ViewerSelector;
                   theEntity: handle[Select3D_SensitiveEntity]) {.
    importcpp: "QueueBVHBuild", header: "SelectMgr_ViewerSelector.hxx".}
proc WaitForBVHBuild*(this: var SelectMgr_ViewerSelector) {.
    importcpp: "WaitForBVHBuild", header: "SelectMgr_ViewerSelector.hxx".}
proc ToPrebuildBVH*(this: SelectMgr_ViewerSelector): Standard_Boolean {.
    noSideEffect, importcpp: "ToPrebuildBVH",
    header: "SelectMgr_ViewerSelector.hxx".}
discard "forward decl of SelectMgr_ViewerSelector"
type
  Handle_SelectMgr_ViewerSelector* = handle[SelectMgr_ViewerSelector]
