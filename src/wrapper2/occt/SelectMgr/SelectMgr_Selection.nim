##  Created on: 1995-02-16
##  Created by: Mister rmi
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

discard "forward decl of Select3D_SensitiveEntity"
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

  SelectMgrSelectionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_Selection::get_type_name(@)",
                            header: "SelectMgr_Selection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_Selection::get_type_descriptor(@)",
    header: "SelectMgr_Selection.hxx".}
proc dynamicType*(this: SelectMgrSelection): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_Selection.hxx".}
proc constructSelectMgrSelection*(theModeIdx: StandardInteger = 0): SelectMgrSelection {.
    constructor, importcpp: "SelectMgr_Selection(@)",
    header: "SelectMgr_Selection.hxx".}
proc destroySelectMgrSelection*(this: var SelectMgrSelection) {.
    importcpp: "#.~SelectMgr_Selection()", header: "SelectMgr_Selection.hxx".}
proc destroy*(this: var SelectMgrSelection) {.importcpp: "Destroy",
    header: "SelectMgr_Selection.hxx".}
proc add*(this: var SelectMgrSelection;
         theSensitive: Handle[Select3D_SensitiveEntity]) {.importcpp: "Add",
    header: "SelectMgr_Selection.hxx".}
proc clear*(this: var SelectMgrSelection) {.importcpp: "Clear",
                                        header: "SelectMgr_Selection.hxx".}
proc isEmpty*(this: SelectMgrSelection): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "SelectMgr_Selection.hxx".}
proc mode*(this: SelectMgrSelection): StandardInteger {.noSideEffect,
    importcpp: "Mode", header: "SelectMgr_Selection.hxx".}
proc entities*(this: SelectMgrSelection): NCollectionVector[
    Handle[SelectMgrSensitiveEntity]] {.noSideEffect, importcpp: "Entities",
                                       header: "SelectMgr_Selection.hxx".}
proc changeEntities*(this: var SelectMgrSelection): var NCollectionVector[
    Handle[SelectMgrSensitiveEntity]] {.importcpp: "ChangeEntities",
                                       header: "SelectMgr_Selection.hxx".}
proc updateStatus*(this: SelectMgrSelection): SelectMgrTypeOfUpdate {.noSideEffect,
    importcpp: "UpdateStatus", header: "SelectMgr_Selection.hxx".}
proc updateStatus*(this: var SelectMgrSelection; theStatus: SelectMgrTypeOfUpdate) {.
    importcpp: "UpdateStatus", header: "SelectMgr_Selection.hxx".}
proc updateBVHStatus*(this: var SelectMgrSelection;
                     theStatus: SelectMgrTypeOfBVHUpdate) {.
    importcpp: "UpdateBVHStatus", header: "SelectMgr_Selection.hxx".}
proc bVHUpdateStatus*(this: SelectMgrSelection): SelectMgrTypeOfBVHUpdate {.
    noSideEffect, importcpp: "BVHUpdateStatus", header: "SelectMgr_Selection.hxx".}
proc getSelectionState*(this: SelectMgrSelection): SelectMgrStateOfSelection {.
    noSideEffect, importcpp: "GetSelectionState", header: "SelectMgr_Selection.hxx".}
proc setSelectionState*(this: SelectMgrSelection;
                       theState: SelectMgrStateOfSelection) {.noSideEffect,
    importcpp: "SetSelectionState", header: "SelectMgr_Selection.hxx".}
proc sensitivity*(this: SelectMgrSelection): StandardInteger {.noSideEffect,
    importcpp: "Sensitivity", header: "SelectMgr_Selection.hxx".}
proc setSensitivity*(this: var SelectMgrSelection; theNewSens: StandardInteger) {.
    importcpp: "SetSensitivity", header: "SelectMgr_Selection.hxx".}
proc dumpJson*(this: SelectMgrSelection; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_Selection.hxx".}
discard "forward decl of SelectMgr_Selection"
type
  HandleSelectMgrSelection* = Handle[SelectMgrSelection]


