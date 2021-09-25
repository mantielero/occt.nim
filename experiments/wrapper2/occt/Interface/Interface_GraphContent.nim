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

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  InterfaceGraphContent* {.importcpp: "Interface_GraphContent",
                          header: "Interface_GraphContent.hxx", bycopy.} = object of InterfaceEntityIterator ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## GraphContent,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## be
                                                                                                      ## filled


proc constructInterfaceGraphContent*(): InterfaceGraphContent {.constructor,
    importcpp: "Interface_GraphContent(@)", header: "Interface_GraphContent.hxx".}
proc constructInterfaceGraphContent*(agraph: InterfaceGraph): InterfaceGraphContent {.
    constructor, importcpp: "Interface_GraphContent(@)",
    header: "Interface_GraphContent.hxx".}
proc constructInterfaceGraphContent*(agraph: InterfaceGraph; stat: int): InterfaceGraphContent {.
    constructor, importcpp: "Interface_GraphContent(@)",
    header: "Interface_GraphContent.hxx".}
proc constructInterfaceGraphContent*(agraph: InterfaceGraph;
                                    ent: Handle[StandardTransient]): InterfaceGraphContent {.
    constructor, importcpp: "Interface_GraphContent(@)",
    header: "Interface_GraphContent.hxx".}
proc getFromGraph*(this: var InterfaceGraphContent; agraph: InterfaceGraph) {.
    importcpp: "GetFromGraph", header: "Interface_GraphContent.hxx".}
proc getFromGraph*(this: var InterfaceGraphContent; agraph: InterfaceGraph; stat: int) {.
    importcpp: "GetFromGraph", header: "Interface_GraphContent.hxx".}
proc result*(this: var InterfaceGraphContent): InterfaceEntityIterator {.
    importcpp: "Result", header: "Interface_GraphContent.hxx".}
proc begin*(this: var InterfaceGraphContent) {.importcpp: "Begin",
    header: "Interface_GraphContent.hxx".}
proc evaluate*(this: var InterfaceGraphContent) {.importcpp: "Evaluate",
    header: "Interface_GraphContent.hxx".}
