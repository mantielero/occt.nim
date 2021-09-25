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
  InterfaceCheckTool* {.importcpp: "Interface_CheckTool",
                       header: "Interface_CheckTool.hxx", bycopy.} = object ## ! Creates a
                                                                       ## CheckTool, by calling the General Service Library
                                                                       ## ! and Modules, selected through a Protocol, to work on a Model
                                                                       ## ! Moreover, Protocol
                                                                       ## recognizes Unknown Entities


proc constructInterfaceCheckTool*(model: Handle[InterfaceInterfaceModel];
                                 protocol: Handle[InterfaceProtocol]): InterfaceCheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc constructInterfaceCheckTool*(model: Handle[InterfaceInterfaceModel]): InterfaceCheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc constructInterfaceCheckTool*(graph: InterfaceGraph): InterfaceCheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc constructInterfaceCheckTool*(hgraph: Handle[InterfaceHGraph]): InterfaceCheckTool {.
    constructor, importcpp: "Interface_CheckTool(@)",
    header: "Interface_CheckTool.hxx".}
proc fillCheck*(this: var InterfaceCheckTool; ent: Handle[StandardTransient];
               sh: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    importcpp: "FillCheck", header: "Interface_CheckTool.hxx".}
proc print*(this: InterfaceCheckTool; ach: Handle[InterfaceCheck];
           s: var StandardOStream) {.noSideEffect, importcpp: "Print",
                                  header: "Interface_CheckTool.hxx".}
proc print*(this: InterfaceCheckTool; list: InterfaceCheckIterator;
           s: var StandardOStream) {.noSideEffect, importcpp: "Print",
                                  header: "Interface_CheckTool.hxx".}
proc check*(this: var InterfaceCheckTool; num: int): Handle[InterfaceCheck] {.
    importcpp: "Check", header: "Interface_CheckTool.hxx".}
proc checkSuccess*(this: var InterfaceCheckTool; reset: bool = false) {.
    importcpp: "CheckSuccess", header: "Interface_CheckTool.hxx".}
proc completeCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.
    importcpp: "CompleteCheckList", header: "Interface_CheckTool.hxx".}
proc checkList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.
    importcpp: "CheckList", header: "Interface_CheckTool.hxx".}
proc analyseCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.
    importcpp: "AnalyseCheckList", header: "Interface_CheckTool.hxx".}
proc verifyCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.
    importcpp: "VerifyCheckList", header: "Interface_CheckTool.hxx".}
proc warningCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.
    importcpp: "WarningCheckList", header: "Interface_CheckTool.hxx".}
proc unknownEntities*(this: var InterfaceCheckTool): InterfaceEntityIterator {.
    importcpp: "UnknownEntities", header: "Interface_CheckTool.hxx".}
