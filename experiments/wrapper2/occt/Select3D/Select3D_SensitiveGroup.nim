##  Created on: 1998-04-16
##  Created by: Robert COUBLANC
##  Copyright (c) 1998-1999 Matra Datavision
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
  Select3D_EntitySequence, Select3D_IndexedMapOfEntity, Select3D_SensitiveEntity,
  Select3D_SensitiveSet, ../SelectMgr/SelectMgr_SelectingVolumeManager

## ! A framework to define selection of a sensitive group
## !          by a sensitive entity which is a set of 3D sensitive entities.
## !          Remark: 2 modes are possible for rectangle selection
## !          the group is considered selected
## !          1) when all the entities inside are selected in the rectangle
## !          2) only one entity inside is selected by the rectangle
## !          By default the "Match All entities" mode is set.

type
  Select3D_SensitiveGroup* {.importcpp: "Select3D_SensitiveGroup",
                            header: "Select3D_SensitiveGroup.hxx", bycopy.} = object of Select3D_SensitiveSet ##
                                                                                                       ## !
                                                                                                       ## Constructs
                                                                                                       ## an
                                                                                                       ## empty
                                                                                                       ## sensitive
                                                                                                       ## group
                                                                                                       ## object.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## This
                                                                                                       ## is
                                                                                                       ## a
                                                                                                       ## set
                                                                                                       ## of
                                                                                                       ## sensitive
                                                                                                       ## 3D
                                                                                                       ## entities.
                                                                                                       ## The
                                                                                                       ## sensitive
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## entities
                                                                                                       ## will
                                                                                                       ## be
                                                                                                       ## defined
                                                                                                       ## using
                                                                                                       ## the
                                                                                                       ## function
                                                                                                       ## Add
                                                                                                       ## to
                                                                                                       ## fill
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## the
                                                                                                       ## entity
                                                                                                       ## owner
                                                                                                       ## OwnerId.
                                                                                                       ## If
                                                                                                       ## MatchAll
                                                                                                       ## is
                                                                                                       ## false,
                                                                                                       ## nothing
                                                                                                       ## can
                                                                                                       ## be
                                                                                                       ## added.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Checks
                                                                                                       ## whether
                                                                                                       ## the
                                                                                                       ## entity
                                                                                                       ## with
                                                                                                       ## index
                                                                                                       ## theIdx
                                                                                                       ## overlaps
                                                                                                       ## the
                                                                                                       ## current
                                                                                                       ## selecting
                                                                                                       ## volume
    ## !< Grouped sensitive entities
    ## !< Determines whether all entities in the group should be overlapped or not
    ## !< flag to check overlapping with all entities within rectangular/polygonal selection
    ## !< Center of geometry of the group
    ## !< Bounding box of the group
    ## !< Vector of sub-entities indexes for BVH tree build

  Select3D_SensitiveGroupbase_type* = Select3D_SensitiveSet

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveGroup::get_type_name(@)",
                              header: "Select3D_SensitiveGroup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveGroup::get_type_descriptor(@)",
    header: "Select3D_SensitiveGroup.hxx".}
proc DynamicType*(this: Select3D_SensitiveGroup): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveGroup.hxx".}
proc constructSelect3D_SensitiveGroup*(theOwnerId: handle[SelectMgr_EntityOwner];
    theIsMustMatchAll: Standard_Boolean = Standard_True): Select3D_SensitiveGroup {.
    constructor, importcpp: "Select3D_SensitiveGroup(@)",
    header: "Select3D_SensitiveGroup.hxx".}
proc constructSelect3D_SensitiveGroup*(theOwnerId: handle[SelectMgr_EntityOwner];
                                      theEntities: var Select3D_EntitySequence;
    theIsMustMatchAll: Standard_Boolean = Standard_True): Select3D_SensitiveGroup {.
    constructor, importcpp: "Select3D_SensitiveGroup(@)",
    header: "Select3D_SensitiveGroup.hxx".}
proc Entities*(this: Select3D_SensitiveGroup): Select3D_IndexedMapOfEntity {.
    noSideEffect, importcpp: "Entities", header: "Select3D_SensitiveGroup.hxx".}
proc SubEntity*(this: Select3D_SensitiveGroup; theIndex: Standard_Integer): handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "SubEntity",
                               header: "Select3D_SensitiveGroup.hxx".}
proc LastDetectedEntity*(this: Select3D_SensitiveGroup): handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "LastDetectedEntity",
                               header: "Select3D_SensitiveGroup.hxx".}
proc LastDetectedEntityIndex*(this: Select3D_SensitiveGroup): Standard_Integer {.
    noSideEffect, importcpp: "LastDetectedEntityIndex",
    header: "Select3D_SensitiveGroup.hxx".}
proc Add*(this: var Select3D_SensitiveGroup;
         theEntities: var Select3D_EntitySequence) {.importcpp: "Add",
    header: "Select3D_SensitiveGroup.hxx".}
proc Add*(this: var Select3D_SensitiveGroup;
         theSensitive: handle[Select3D_SensitiveEntity]) {.importcpp: "Add",
    header: "Select3D_SensitiveGroup.hxx".}
proc Remove*(this: var Select3D_SensitiveGroup;
            theSensitive: handle[Select3D_SensitiveEntity]) {.importcpp: "Remove",
    header: "Select3D_SensitiveGroup.hxx".}
proc Clear*(this: var Select3D_SensitiveGroup) {.importcpp: "Clear",
    header: "Select3D_SensitiveGroup.hxx".}
proc IsIn*(this: Select3D_SensitiveGroup;
          theSensitive: handle[Select3D_SensitiveEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIn", header: "Select3D_SensitiveGroup.hxx".}
proc SetMatchType*(this: var Select3D_SensitiveGroup;
                  theIsMustMatchAll: Standard_Boolean) {.
    importcpp: "SetMatchType", header: "Select3D_SensitiveGroup.hxx".}
proc MustMatchAll*(this: Select3D_SensitiveGroup): Standard_Boolean {.noSideEffect,
    importcpp: "MustMatchAll", header: "Select3D_SensitiveGroup.hxx".}
proc ToCheckOverlapAll*(this: Select3D_SensitiveGroup): Standard_Boolean {.
    noSideEffect, importcpp: "ToCheckOverlapAll",
    header: "Select3D_SensitiveGroup.hxx".}
proc SetCheckOverlapAll*(this: var Select3D_SensitiveGroup;
                        theToCheckAll: Standard_Boolean) {.
    importcpp: "SetCheckOverlapAll", header: "Select3D_SensitiveGroup.hxx".}
proc Matches*(this: var Select3D_SensitiveGroup;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveGroup.hxx".}
proc NbSubElements*(this: Select3D_SensitiveGroup): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveGroup.hxx".}
proc GetConnected*(this: var Select3D_SensitiveGroup): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveGroup.hxx".}
proc Set*(this: var Select3D_SensitiveGroup;
         theOwnerId: handle[SelectMgr_EntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitiveGroup.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveGroup): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveGroup.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveGroup): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveGroup.hxx".}
proc Box*(this: Select3D_SensitiveGroup; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveGroup.hxx".}
proc Center*(this: Select3D_SensitiveGroup; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitiveGroup.hxx".}
proc Swap*(this: var Select3D_SensitiveGroup; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap",
                                     header: "Select3D_SensitiveGroup.hxx".}
proc Size*(this: Select3D_SensitiveGroup): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitiveGroup.hxx".}
proc DumpJson*(this: Select3D_SensitiveGroup; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveGroup.hxx".}
discard "forward decl of Select3D_SensitiveGroup"
type
  Handle_Select3D_SensitiveGroup* = handle[Select3D_SensitiveGroup]
