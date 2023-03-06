import interface_types
import ../standard/standard_types







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



proc newInterfaceCheckTool*(model: Handle[InterfaceInterfaceModel];
                           protocol: Handle[InterfaceProtocol]): InterfaceCheckTool {.
    cdecl, constructor, importcpp: "Interface_CheckTool(@)", header: "Interface_CheckTool.hxx".}
proc newInterfaceCheckTool*(model: Handle[InterfaceInterfaceModel]): InterfaceCheckTool {.
    cdecl, constructor, importcpp: "Interface_CheckTool(@)", header: "Interface_CheckTool.hxx".}
proc newInterfaceCheckTool*(graph: InterfaceGraph): InterfaceCheckTool {.cdecl,
    constructor, importcpp: "Interface_CheckTool(@)", header: "Interface_CheckTool.hxx".}
proc newInterfaceCheckTool*(hgraph: Handle[InterfaceHGraph]): InterfaceCheckTool {.
    cdecl, constructor, importcpp: "Interface_CheckTool(@)", header: "Interface_CheckTool.hxx".}
proc fillCheck*(this: var InterfaceCheckTool; ent: Handle[StandardTransient];
               sh: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.cdecl,
    importcpp: "FillCheck", header: "Interface_CheckTool.hxx".}
proc print*(this: InterfaceCheckTool; ach: Handle[InterfaceCheck];
           s: var StandardOStream) {.noSideEffect, cdecl, importcpp: "Print",
                                  header: "Interface_CheckTool.hxx".}
proc print*(this: InterfaceCheckTool; list: InterfaceCheckIterator;
           s: var StandardOStream) {.noSideEffect, cdecl, importcpp: "Print",
                                  header: "Interface_CheckTool.hxx".}
proc check*(this: var InterfaceCheckTool; num: cint): Handle[InterfaceCheck] {.cdecl,
    importcpp: "Check", header: "Interface_CheckTool.hxx".}
proc checkSuccess*(this: var InterfaceCheckTool; reset: bool = false) {.cdecl,
    importcpp: "CheckSuccess", header: "Interface_CheckTool.hxx".}
proc completeCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.
    cdecl, importcpp: "CompleteCheckList", header: "Interface_CheckTool.hxx".}
proc checkList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.cdecl,
    importcpp: "CheckList", header: "Interface_CheckTool.hxx".}
proc analyseCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.cdecl,
    importcpp: "AnalyseCheckList", header: "Interface_CheckTool.hxx".}
proc verifyCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.cdecl,
    importcpp: "VerifyCheckList", header: "Interface_CheckTool.hxx".}
proc warningCheckList*(this: var InterfaceCheckTool): InterfaceCheckIterator {.cdecl,
    importcpp: "WarningCheckList", header: "Interface_CheckTool.hxx".}
proc unknownEntities*(this: var InterfaceCheckTool): InterfaceEntityIterator {.cdecl,
    importcpp: "UnknownEntities", header: "Interface_CheckTool.hxx".}



