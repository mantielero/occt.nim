import interface_types

import ../../tkernel/standard/standard_types




##  Created on: 1992-09-23
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newInterfaceGraphContent*(): InterfaceGraphContent {.cdecl, constructor,
    importcpp: "Interface_GraphContent(@)", header: "Interface_GraphContent.hxx".}
proc newInterfaceGraphContent*(agraph: InterfaceGraph): InterfaceGraphContent {.
    cdecl, constructor, importcpp: "Interface_GraphContent(@)", header: "Interface_GraphContent.hxx".}
proc newInterfaceGraphContent*(agraph: InterfaceGraph; stat: cint): InterfaceGraphContent {.
    cdecl, constructor, importcpp: "Interface_GraphContent(@)", header: "Interface_GraphContent.hxx".}
proc newInterfaceGraphContent*(agraph: InterfaceGraph;
                              ent: Handle[StandardTransient]): InterfaceGraphContent {.
    cdecl, constructor, importcpp: "Interface_GraphContent(@)", header: "Interface_GraphContent.hxx".}
proc getFromGraph*(this: var InterfaceGraphContent; agraph: InterfaceGraph) {.cdecl,
    importcpp: "GetFromGraph", header: "Interface_GraphContent.hxx".}
proc getFromGraph*(this: var InterfaceGraphContent; agraph: InterfaceGraph; stat: cint) {.
    cdecl, importcpp: "GetFromGraph", header: "Interface_GraphContent.hxx".}
proc result*(this: var InterfaceGraphContent): InterfaceEntityIterator {.cdecl,
    importcpp: "Result", header: "Interface_GraphContent.hxx".}
proc begin*(this: var InterfaceGraphContent) {.cdecl, importcpp: "Begin",
    header: "Interface_GraphContent.hxx".}
proc evaluate*(this: var InterfaceGraphContent) {.cdecl, importcpp: "Evaluate",
    header: "Interface_GraphContent.hxx".}


