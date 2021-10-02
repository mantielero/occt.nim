##  Created on: 1993-09-14
##  Created by: Frederic MAUPAS
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StepBasic_ApplicationProtocolDefinition"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepData_StepModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of STEPConstruct_AP203Context"
discard "forward decl of STEPConstruct_Part"
discard "forward decl of STEPConstruct_Assembly"
type
  STEPConstructContextTool* {.importcpp: "STEPConstruct_ContextTool",
                             header: "STEPConstruct_ContextTool.hxx", bycopy.} = object


proc `new`*(this: var STEPConstructContextTool; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_ContextTool::operator new",
    header: "STEPConstruct_ContextTool.hxx".}
proc `delete`*(this: var STEPConstructContextTool; theAddress: pointer) {.
    importcpp: "STEPConstruct_ContextTool::operator delete",
    header: "STEPConstruct_ContextTool.hxx".}
proc `new[]`*(this: var STEPConstructContextTool; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_ContextTool::operator new[]",
    header: "STEPConstruct_ContextTool.hxx".}
proc `delete[]`*(this: var STEPConstructContextTool; theAddress: pointer) {.
    importcpp: "STEPConstruct_ContextTool::operator delete[]",
    header: "STEPConstruct_ContextTool.hxx".}
proc `new`*(this: var STEPConstructContextTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "STEPConstruct_ContextTool::operator new",
    header: "STEPConstruct_ContextTool.hxx".}
proc `delete`*(this: var STEPConstructContextTool; a2: pointer; a3: pointer) {.
    importcpp: "STEPConstruct_ContextTool::operator delete",
    header: "STEPConstruct_ContextTool.hxx".}
proc constructSTEPConstructContextTool*(): STEPConstructContextTool {.constructor,
    importcpp: "STEPConstruct_ContextTool(@)",
    header: "STEPConstruct_ContextTool.hxx".}
proc constructSTEPConstructContextTool*(aStepModel: Handle[StepDataStepModel]): STEPConstructContextTool {.
    constructor, importcpp: "STEPConstruct_ContextTool(@)",
    header: "STEPConstruct_ContextTool.hxx".}
proc setModel*(this: var STEPConstructContextTool;
              aStepModel: Handle[StepDataStepModel]) {.importcpp: "SetModel",
    header: "STEPConstruct_ContextTool.hxx".}
proc getAPD*(this: var STEPConstructContextTool): Handle[
    StepBasicApplicationProtocolDefinition] {.importcpp: "GetAPD",
    header: "STEPConstruct_ContextTool.hxx".}
proc addAPD*(this: var STEPConstructContextTool; enforce: StandardBoolean = false) {.
    importcpp: "AddAPD", header: "STEPConstruct_ContextTool.hxx".}
proc isAP203*(this: STEPConstructContextTool): StandardBoolean {.noSideEffect,
    importcpp: "IsAP203", header: "STEPConstruct_ContextTool.hxx".}
proc isAP214*(this: STEPConstructContextTool): StandardBoolean {.noSideEffect,
    importcpp: "IsAP214", header: "STEPConstruct_ContextTool.hxx".}
proc isAP242*(this: STEPConstructContextTool): StandardBoolean {.noSideEffect,
    importcpp: "IsAP242", header: "STEPConstruct_ContextTool.hxx".}
proc getACstatus*(this: var STEPConstructContextTool): Handle[
    TCollectionHAsciiString] {.importcpp: "GetACstatus",
                              header: "STEPConstruct_ContextTool.hxx".}
proc getACschemaName*(this: var STEPConstructContextTool): Handle[
    TCollectionHAsciiString] {.importcpp: "GetACschemaName",
                              header: "STEPConstruct_ContextTool.hxx".}
proc getACyear*(this: var STEPConstructContextTool): int {.importcpp: "GetACyear",
    header: "STEPConstruct_ContextTool.hxx".}
proc getACname*(this: var STEPConstructContextTool): Handle[TCollectionHAsciiString] {.
    importcpp: "GetACname", header: "STEPConstruct_ContextTool.hxx".}
proc setACstatus*(this: var STEPConstructContextTool;
                 status: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetACstatus", header: "STEPConstruct_ContextTool.hxx".}
proc setACschemaName*(this: var STEPConstructContextTool;
                     schemaName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetACschemaName", header: "STEPConstruct_ContextTool.hxx".}
proc setACyear*(this: var STEPConstructContextTool; year: int) {.
    importcpp: "SetACyear", header: "STEPConstruct_ContextTool.hxx".}
proc setACname*(this: var STEPConstructContextTool;
               name: Handle[TCollectionHAsciiString]) {.importcpp: "SetACname",
    header: "STEPConstruct_ContextTool.hxx".}
proc getDefaultAxis*(this: var STEPConstructContextTool): Handle[
    StepGeomAxis2Placement3d] {.importcpp: "GetDefaultAxis",
                               header: "STEPConstruct_ContextTool.hxx".}
proc aP203Context*(this: var STEPConstructContextTool): var STEPConstructAP203Context {.
    importcpp: "AP203Context", header: "STEPConstruct_ContextTool.hxx".}
proc level*(this: STEPConstructContextTool): int {.noSideEffect, importcpp: "Level",
    header: "STEPConstruct_ContextTool.hxx".}
proc nextLevel*(this: var STEPConstructContextTool) {.importcpp: "NextLevel",
    header: "STEPConstruct_ContextTool.hxx".}
proc prevLevel*(this: var STEPConstructContextTool) {.importcpp: "PrevLevel",
    header: "STEPConstruct_ContextTool.hxx".}
proc setLevel*(this: var STEPConstructContextTool; lev: int) {.importcpp: "SetLevel",
    header: "STEPConstruct_ContextTool.hxx".}
proc index*(this: STEPConstructContextTool): int {.noSideEffect, importcpp: "Index",
    header: "STEPConstruct_ContextTool.hxx".}
proc nextIndex*(this: var STEPConstructContextTool) {.importcpp: "NextIndex",
    header: "STEPConstruct_ContextTool.hxx".}
proc prevIndex*(this: var STEPConstructContextTool) {.importcpp: "PrevIndex",
    header: "STEPConstruct_ContextTool.hxx".}
proc setIndex*(this: var STEPConstructContextTool; ind: int) {.importcpp: "SetIndex",
    header: "STEPConstruct_ContextTool.hxx".}
proc getProductName*(this: STEPConstructContextTool): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "GetProductName",
                              header: "STEPConstruct_ContextTool.hxx".}
proc getRootsForPart*(this: var STEPConstructContextTool; sDRTool: STEPConstructPart): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "GetRootsForPart",
                                  header: "STEPConstruct_ContextTool.hxx".}
proc getRootsForAssemblyLink*(this: var STEPConstructContextTool;
                             assembly: STEPConstructAssembly): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "GetRootsForAssemblyLink",
                                  header: "STEPConstruct_ContextTool.hxx".}