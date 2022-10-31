import ../../tkernel/standard/standard_types
import ../../tkernel/ncollection/ncollection_types
import selectmgr_types



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



proc newSelectMgrSelection*(theModeIdx: cint = 0): SelectMgrSelection {.cdecl,
    constructor, importcpp: "SelectMgr_Selection(@)", header: "SelectMgr_Selection.hxx".}
proc destroySelectMgrSelection*(this: var SelectMgrSelection) {.cdecl,
    importcpp: "#.~SelectMgr_Selection()", header: "SelectMgr_Selection.hxx".}
proc destroy*(this: var SelectMgrSelection) {.cdecl, importcpp: "Destroy",
    header: "SelectMgr_Selection.hxx".}
proc add*(this: var SelectMgrSelection;
         theSensitive: Handle[Select3D_SensitiveEntity]) {.cdecl, importcpp: "Add",
    header: "SelectMgr_Selection.hxx".}
proc clear*(this: var SelectMgrSelection) {.cdecl, importcpp: "Clear", header: "SelectMgr_Selection.hxx".}
proc isEmpty*(this: SelectMgrSelection): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "SelectMgr_Selection.hxx".}
proc mode*(this: SelectMgrSelection): cint {.noSideEffect, cdecl, importcpp: "Mode",
    header: "SelectMgr_Selection.hxx".}
proc entities*(this: SelectMgrSelection): NCollectionVector[
    Handle[SelectMgrSensitiveEntity]] {.noSideEffect, cdecl, importcpp: "Entities",
                                       header: "SelectMgr_Selection.hxx".}
proc changeEntities*(this: var SelectMgrSelection): var NCollectionVector[
    Handle[SelectMgrSensitiveEntity]] {.cdecl, importcpp: "ChangeEntities",
                                       header: "SelectMgr_Selection.hxx".}
proc updateStatus*(this: SelectMgrSelection): SelectMgrTypeOfUpdate {.noSideEffect,
    cdecl, importcpp: "UpdateStatus", header: "SelectMgr_Selection.hxx".}
proc updateStatus*(this: var SelectMgrSelection; theStatus: SelectMgrTypeOfUpdate) {.
    cdecl, importcpp: "UpdateStatus", header: "SelectMgr_Selection.hxx".}
proc updateBVHStatus*(this: var SelectMgrSelection;
                     theStatus: SelectMgrTypeOfBVHUpdate) {.cdecl,
    importcpp: "UpdateBVHStatus", header: "SelectMgr_Selection.hxx".}
proc bVHUpdateStatus*(this: SelectMgrSelection): SelectMgrTypeOfBVHUpdate {.
    noSideEffect, cdecl, importcpp: "BVHUpdateStatus", header: "SelectMgr_Selection.hxx".}
proc getSelectionState*(this: SelectMgrSelection): SelectMgrStateOfSelection {.
    noSideEffect, cdecl, importcpp: "GetSelectionState", header: "SelectMgr_Selection.hxx".}
proc setSelectionState*(this: SelectMgrSelection;
                       theState: SelectMgrStateOfSelection) {.noSideEffect, cdecl,
    importcpp: "SetSelectionState", header: "SelectMgr_Selection.hxx".}
proc sensitivity*(this: SelectMgrSelection): cint {.noSideEffect, cdecl,
    importcpp: "Sensitivity", header: "SelectMgr_Selection.hxx".}
proc setSensitivity*(this: var SelectMgrSelection; theNewSens: cint) {.cdecl,
    importcpp: "SetSensitivity", header: "SelectMgr_Selection.hxx".}
proc dumpJson*(this: SelectMgrSelection; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_Selection.hxx".}


