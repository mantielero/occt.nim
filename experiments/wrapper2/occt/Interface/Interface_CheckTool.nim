##  Created on: 1993-02-02
##  Created by: Christian CAILLET
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
  ../Standard/Standard_Handle, Interface_ShareTool, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_GTool"
discard "forward decl of Interface_CheckFailure"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_HGraph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_EntityIterator"
type
  Interface_CheckTool* {.importcpp: "Interface_CheckTool",
                        header: "Interface_CheckTool.hxx", bycopy.} = object ## ! Creates a
                                                                        ## CheckTool, by calling the General Service Library
                                                                        ## ! and Modules, selected through a
                                                                        ## Protocol, to work on a Model
                                                                        ## !
                                                                        ## Moreover, Protocol
                                                                        ## recognizes Unknown Entities


proc constructInterface_CheckTool*(model: handle[Interface_InterfaceModel];
                                  protocol: handle[Interface_Protocol]): Interface_CheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc constructInterface_CheckTool*(model: handle[Interface_InterfaceModel]): Interface_CheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc constructInterface_CheckTool*(graph: Interface_Graph): Interface_CheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc constructInterface_CheckTool*(hgraph: handle[Interface_HGraph]): Interface_CheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc FillCheck*(this: var Interface_CheckTool; ent: handle[Standard_Transient];
               sh: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    importcpp: "FillCheck", header: "Interface_CheckTool.hxx".}
proc Print*(this: Interface_CheckTool; ach: handle[Interface_Check];
           S: var Standard_OStream) {.noSideEffect, importcpp: "Print",
                                   header: "Interface_CheckTool.hxx".}
proc Print*(this: Interface_CheckTool; list: Interface_CheckIterator;
           S: var Standard_OStream) {.noSideEffect, importcpp: "Print",
                                   header: "Interface_CheckTool.hxx".}
proc Check*(this: var Interface_CheckTool; num: Standard_Integer): handle[
    Interface_Check] {.importcpp: "Check", header: "Interface_CheckTool.hxx".}
proc CheckSuccess*(this: var Interface_CheckTool;
                  reset: Standard_Boolean = Standard_False) {.
    importcpp: "CheckSuccess", header: "Interface_CheckTool.hxx".}
proc CompleteCheckList*(this: var Interface_CheckTool): Interface_CheckIterator {.
    importcpp: "CompleteCheckList", header: "Interface_CheckTool.hxx".}
proc CheckList*(this: var Interface_CheckTool): Interface_CheckIterator {.
    importcpp: "CheckList", header: "Interface_CheckTool.hxx".}
proc AnalyseCheckList*(this: var Interface_CheckTool): Interface_CheckIterator {.
    importcpp: "AnalyseCheckList", header: "Interface_CheckTool.hxx".}
proc VerifyCheckList*(this: var Interface_CheckTool): Interface_CheckIterator {.
    importcpp: "VerifyCheckList", header: "Interface_CheckTool.hxx".}
proc WarningCheckList*(this: var Interface_CheckTool): Interface_CheckIterator {.
    importcpp: "WarningCheckList", header: "Interface_CheckTool.hxx".}
proc UnknownEntities*(this: var Interface_CheckTool): Interface_EntityIterator {.
    importcpp: "UnknownEntities", header: "Interface_CheckTool.hxx".}