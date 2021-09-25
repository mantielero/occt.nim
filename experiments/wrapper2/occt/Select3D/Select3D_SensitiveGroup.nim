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

  Select3D_SensitiveGroupbaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveGroup::get_type_name(@)",
                            header: "Select3D_SensitiveGroup.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveGroup::get_type_descriptor(@)",
    header: "Select3D_SensitiveGroup.hxx".}
proc dynamicType*(this: Select3D_SensitiveGroup): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveGroup.hxx".}
proc constructSelect3D_SensitiveGroup*(theOwnerId: Handle[SelectMgrEntityOwner];
                                      theIsMustMatchAll: bool = true): Select3D_SensitiveGroup {.
    constructor, importcpp: "Select3D_SensitiveGroup(@)",
    header: "Select3D_SensitiveGroup.hxx".}
proc constructSelect3D_SensitiveGroup*(theOwnerId: Handle[SelectMgrEntityOwner];
                                      theEntities: var Select3D_EntitySequence;
                                      theIsMustMatchAll: bool = true): Select3D_SensitiveGroup {.
    constructor, importcpp: "Select3D_SensitiveGroup(@)",
    header: "Select3D_SensitiveGroup.hxx".}
proc entities*(this: Select3D_SensitiveGroup): Select3D_IndexedMapOfEntity {.
    noSideEffect, importcpp: "Entities", header: "Select3D_SensitiveGroup.hxx".}
proc subEntity*(this: Select3D_SensitiveGroup; theIndex: int): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "SubEntity",
                               header: "Select3D_SensitiveGroup.hxx".}
proc lastDetectedEntity*(this: Select3D_SensitiveGroup): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "LastDetectedEntity",
                               header: "Select3D_SensitiveGroup.hxx".}
proc lastDetectedEntityIndex*(this: Select3D_SensitiveGroup): int {.noSideEffect,
    importcpp: "LastDetectedEntityIndex", header: "Select3D_SensitiveGroup.hxx".}
proc add*(this: var Select3D_SensitiveGroup;
         theEntities: var Select3D_EntitySequence) {.importcpp: "Add",
    header: "Select3D_SensitiveGroup.hxx".}
proc add*(this: var Select3D_SensitiveGroup;
         theSensitive: Handle[Select3D_SensitiveEntity]) {.importcpp: "Add",
    header: "Select3D_SensitiveGroup.hxx".}
proc remove*(this: var Select3D_SensitiveGroup;
            theSensitive: Handle[Select3D_SensitiveEntity]) {.importcpp: "Remove",
    header: "Select3D_SensitiveGroup.hxx".}
proc clear*(this: var Select3D_SensitiveGroup) {.importcpp: "Clear",
    header: "Select3D_SensitiveGroup.hxx".}
proc isIn*(this: Select3D_SensitiveGroup;
          theSensitive: Handle[Select3D_SensitiveEntity]): bool {.noSideEffect,
    importcpp: "IsIn", header: "Select3D_SensitiveGroup.hxx".}
proc setMatchType*(this: var Select3D_SensitiveGroup; theIsMustMatchAll: bool) {.
    importcpp: "SetMatchType", header: "Select3D_SensitiveGroup.hxx".}
proc mustMatchAll*(this: Select3D_SensitiveGroup): bool {.noSideEffect,
    importcpp: "MustMatchAll", header: "Select3D_SensitiveGroup.hxx".}
proc toCheckOverlapAll*(this: Select3D_SensitiveGroup): bool {.noSideEffect,
    importcpp: "ToCheckOverlapAll", header: "Select3D_SensitiveGroup.hxx".}
proc setCheckOverlapAll*(this: var Select3D_SensitiveGroup; theToCheckAll: bool) {.
    importcpp: "SetCheckOverlapAll", header: "Select3D_SensitiveGroup.hxx".}
proc matches*(this: var Select3D_SensitiveGroup;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "Select3D_SensitiveGroup.hxx".}
proc nbSubElements*(this: Select3D_SensitiveGroup): int {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveGroup.hxx".}
proc getConnected*(this: var Select3D_SensitiveGroup): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveGroup.hxx".}
proc set*(this: var Select3D_SensitiveGroup;
         theOwnerId: Handle[SelectMgrEntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitiveGroup.hxx".}
proc boundingBox*(this: var Select3D_SensitiveGroup): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveGroup.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveGroup): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveGroup.hxx".}
proc box*(this: Select3D_SensitiveGroup; theIdx: int): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveGroup.hxx".}
proc center*(this: Select3D_SensitiveGroup; theIdx: int; theAxis: int): float {.
    noSideEffect, importcpp: "Center", header: "Select3D_SensitiveGroup.hxx".}
proc swap*(this: var Select3D_SensitiveGroup; theIdx1: int; theIdx2: int) {.
    importcpp: "Swap", header: "Select3D_SensitiveGroup.hxx".}
proc size*(this: Select3D_SensitiveGroup): int {.noSideEffect, importcpp: "Size",
    header: "Select3D_SensitiveGroup.hxx".}
proc dumpJson*(this: Select3D_SensitiveGroup; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Select3D_SensitiveGroup.hxx".}
discard "forward decl of Select3D_SensitiveGroup"
type
  HandleSelect3D_SensitiveGroup* = Handle[Select3D_SensitiveGroup]

