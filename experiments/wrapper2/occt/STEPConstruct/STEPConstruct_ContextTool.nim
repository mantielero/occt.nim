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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_SequenceOfInteger,
  STEPConstruct_AP203Context, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfTransient

discard "forward decl of StepBasic_ApplicationProtocolDefinition"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepData_StepModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of STEPConstruct_AP203Context"
discard "forward decl of STEPConstruct_Part"
discard "forward decl of STEPConstruct_Assembly"
type
  STEPConstruct_ContextTool* {.importcpp: "STEPConstruct_ContextTool",
                              header: "STEPConstruct_ContextTool.hxx", bycopy.} = object


proc constructSTEPConstruct_ContextTool*(): STEPConstruct_ContextTool {.
    constructor, importcpp: "STEPConstruct_ContextTool(@)",
    header: "STEPConstruct_ContextTool.hxx".}
proc constructSTEPConstruct_ContextTool*(aStepModel: handle[StepData_StepModel]): STEPConstruct_ContextTool {.
    constructor, importcpp: "STEPConstruct_ContextTool(@)",
    header: "STEPConstruct_ContextTool.hxx".}
proc SetModel*(this: var STEPConstruct_ContextTool;
              aStepModel: handle[StepData_StepModel]) {.importcpp: "SetModel",
    header: "STEPConstruct_ContextTool.hxx".}
proc GetAPD*(this: var STEPConstruct_ContextTool): handle[
    StepBasic_ApplicationProtocolDefinition] {.importcpp: "GetAPD",
    header: "STEPConstruct_ContextTool.hxx".}
proc AddAPD*(this: var STEPConstruct_ContextTool;
            enforce: Standard_Boolean = Standard_False) {.importcpp: "AddAPD",
    header: "STEPConstruct_ContextTool.hxx".}
proc IsAP203*(this: STEPConstruct_ContextTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsAP203", header: "STEPConstruct_ContextTool.hxx".}
proc IsAP214*(this: STEPConstruct_ContextTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsAP214", header: "STEPConstruct_ContextTool.hxx".}
proc IsAP242*(this: STEPConstruct_ContextTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsAP242", header: "STEPConstruct_ContextTool.hxx".}
proc GetACstatus*(this: var STEPConstruct_ContextTool): handle[
    TCollection_HAsciiString] {.importcpp: "GetACstatus",
                               header: "STEPConstruct_ContextTool.hxx".}
proc GetACschemaName*(this: var STEPConstruct_ContextTool): handle[
    TCollection_HAsciiString] {.importcpp: "GetACschemaName",
                               header: "STEPConstruct_ContextTool.hxx".}
proc GetACyear*(this: var STEPConstruct_ContextTool): Standard_Integer {.
    importcpp: "GetACyear", header: "STEPConstruct_ContextTool.hxx".}
proc GetACname*(this: var STEPConstruct_ContextTool): handle[
    TCollection_HAsciiString] {.importcpp: "GetACname",
                               header: "STEPConstruct_ContextTool.hxx".}
proc SetACstatus*(this: var STEPConstruct_ContextTool;
                 status: handle[TCollection_HAsciiString]) {.
    importcpp: "SetACstatus", header: "STEPConstruct_ContextTool.hxx".}
proc SetACschemaName*(this: var STEPConstruct_ContextTool;
                     schemaName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetACschemaName", header: "STEPConstruct_ContextTool.hxx".}
proc SetACyear*(this: var STEPConstruct_ContextTool; year: Standard_Integer) {.
    importcpp: "SetACyear", header: "STEPConstruct_ContextTool.hxx".}
proc SetACname*(this: var STEPConstruct_ContextTool;
               name: handle[TCollection_HAsciiString]) {.importcpp: "SetACname",
    header: "STEPConstruct_ContextTool.hxx".}
proc GetDefaultAxis*(this: var STEPConstruct_ContextTool): handle[
    StepGeom_Axis2Placement3d] {.importcpp: "GetDefaultAxis",
                                header: "STEPConstruct_ContextTool.hxx".}
proc AP203Context*(this: var STEPConstruct_ContextTool): var STEPConstruct_AP203Context {.
    importcpp: "AP203Context", header: "STEPConstruct_ContextTool.hxx".}
proc Level*(this: STEPConstruct_ContextTool): Standard_Integer {.noSideEffect,
    importcpp: "Level", header: "STEPConstruct_ContextTool.hxx".}
proc NextLevel*(this: var STEPConstruct_ContextTool) {.importcpp: "NextLevel",
    header: "STEPConstruct_ContextTool.hxx".}
proc PrevLevel*(this: var STEPConstruct_ContextTool) {.importcpp: "PrevLevel",
    header: "STEPConstruct_ContextTool.hxx".}
proc SetLevel*(this: var STEPConstruct_ContextTool; lev: Standard_Integer) {.
    importcpp: "SetLevel", header: "STEPConstruct_ContextTool.hxx".}
proc Index*(this: STEPConstruct_ContextTool): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "STEPConstruct_ContextTool.hxx".}
proc NextIndex*(this: var STEPConstruct_ContextTool) {.importcpp: "NextIndex",
    header: "STEPConstruct_ContextTool.hxx".}
proc PrevIndex*(this: var STEPConstruct_ContextTool) {.importcpp: "PrevIndex",
    header: "STEPConstruct_ContextTool.hxx".}
proc SetIndex*(this: var STEPConstruct_ContextTool; ind: Standard_Integer) {.
    importcpp: "SetIndex", header: "STEPConstruct_ContextTool.hxx".}
proc GetProductName*(this: STEPConstruct_ContextTool): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "GetProductName",
                               header: "STEPConstruct_ContextTool.hxx".}
proc GetRootsForPart*(this: var STEPConstruct_ContextTool;
                     SDRTool: STEPConstruct_Part): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "GetRootsForPart",
                                   header: "STEPConstruct_ContextTool.hxx".}
proc GetRootsForAssemblyLink*(this: var STEPConstruct_ContextTool;
                             assembly: STEPConstruct_Assembly): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "GetRootsForAssemblyLink",
                                   header: "STEPConstruct_ContextTool.hxx".}