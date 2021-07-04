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

import
  ../NCollection/NCollection_Vector, SelectMgr_SensitiveEntity,
  SelectMgr_StateOfSelection, SelectMgr_TypeOfBVHUpdate, SelectMgr_TypeOfUpdate

discard "forward decl of Select3D_SensitiveEntity"
type
  SelectMgr_Selection* {.importcpp: "SelectMgr_Selection",
                        header: "SelectMgr_Selection.hxx", bycopy.} = object of Standard_Transient ##
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

  SelectMgr_Selectionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_Selection::get_type_name(@)",
                              header: "SelectMgr_Selection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_Selection::get_type_descriptor(@)",
    header: "SelectMgr_Selection.hxx".}
proc DynamicType*(this: SelectMgr_Selection): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_Selection.hxx".}
proc constructSelectMgr_Selection*(theModeIdx: Standard_Integer = 0): SelectMgr_Selection {.
    constructor, importcpp: "SelectMgr_Selection(@)",
    header: "SelectMgr_Selection.hxx".}
proc destroySelectMgr_Selection*(this: var SelectMgr_Selection) {.
    importcpp: "#.~SelectMgr_Selection()", header: "SelectMgr_Selection.hxx".}
proc Destroy*(this: var SelectMgr_Selection) {.importcpp: "Destroy",
    header: "SelectMgr_Selection.hxx".}
proc Add*(this: var SelectMgr_Selection;
         theSensitive: handle[Select3D_SensitiveEntity]) {.importcpp: "Add",
    header: "SelectMgr_Selection.hxx".}
proc Clear*(this: var SelectMgr_Selection) {.importcpp: "Clear",
    header: "SelectMgr_Selection.hxx".}
proc IsEmpty*(this: SelectMgr_Selection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "SelectMgr_Selection.hxx".}
proc Mode*(this: SelectMgr_Selection): Standard_Integer {.noSideEffect,
    importcpp: "Mode", header: "SelectMgr_Selection.hxx".}
proc Entities*(this: SelectMgr_Selection): NCollection_Vector[
    handle[SelectMgr_SensitiveEntity]] {.noSideEffect, importcpp: "Entities",
                                        header: "SelectMgr_Selection.hxx".}
proc ChangeEntities*(this: var SelectMgr_Selection): var NCollection_Vector[
    handle[SelectMgr_SensitiveEntity]] {.importcpp: "ChangeEntities",
                                        header: "SelectMgr_Selection.hxx".}
proc UpdateStatus*(this: SelectMgr_Selection): SelectMgr_TypeOfUpdate {.
    noSideEffect, importcpp: "UpdateStatus", header: "SelectMgr_Selection.hxx".}
proc UpdateStatus*(this: var SelectMgr_Selection; theStatus: SelectMgr_TypeOfUpdate) {.
    importcpp: "UpdateStatus", header: "SelectMgr_Selection.hxx".}
proc UpdateBVHStatus*(this: var SelectMgr_Selection;
                     theStatus: SelectMgr_TypeOfBVHUpdate) {.
    importcpp: "UpdateBVHStatus", header: "SelectMgr_Selection.hxx".}
proc BVHUpdateStatus*(this: SelectMgr_Selection): SelectMgr_TypeOfBVHUpdate {.
    noSideEffect, importcpp: "BVHUpdateStatus", header: "SelectMgr_Selection.hxx".}
proc GetSelectionState*(this: SelectMgr_Selection): SelectMgr_StateOfSelection {.
    noSideEffect, importcpp: "GetSelectionState", header: "SelectMgr_Selection.hxx".}
proc SetSelectionState*(this: SelectMgr_Selection;
                       theState: SelectMgr_StateOfSelection) {.noSideEffect,
    importcpp: "SetSelectionState", header: "SelectMgr_Selection.hxx".}
proc Sensitivity*(this: SelectMgr_Selection): Standard_Integer {.noSideEffect,
    importcpp: "Sensitivity", header: "SelectMgr_Selection.hxx".}
proc SetSensitivity*(this: var SelectMgr_Selection; theNewSens: Standard_Integer) {.
    importcpp: "SetSensitivity", header: "SelectMgr_Selection.hxx".}
proc DumpJson*(this: SelectMgr_Selection; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_Selection.hxx".}
discard "forward decl of SelectMgr_Selection"
type
  Handle_SelectMgr_Selection* = handle[SelectMgr_Selection]
