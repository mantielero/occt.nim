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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Interface_EntityIterator,
  ../Standard/Standard_Integer

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  Interface_GraphContent* {.importcpp: "Interface_GraphContent",
                           header: "Interface_GraphContent.hxx", bycopy.} = object of Interface_EntityIterator ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## GraphContent,
                                                                                                        ## ready
                                                                                                        ## to
                                                                                                        ## be
                                                                                                        ## filled


proc constructInterface_GraphContent*(): Interface_GraphContent {.constructor,
    importcpp: "Interface_GraphContent(@)", header: "Interface_GraphContent.hxx".}
proc constructInterface_GraphContent*(agraph: Interface_Graph): Interface_GraphContent {.
    constructor, importcpp: "Interface_GraphContent(@)",
    header: "Interface_GraphContent.hxx".}
proc constructInterface_GraphContent*(agraph: Interface_Graph;
                                     stat: Standard_Integer): Interface_GraphContent {.
    constructor, importcpp: "Interface_GraphContent(@)",
    header: "Interface_GraphContent.hxx".}
proc constructInterface_GraphContent*(agraph: Interface_Graph;
                                     ent: handle[Standard_Transient]): Interface_GraphContent {.
    constructor, importcpp: "Interface_GraphContent(@)",
    header: "Interface_GraphContent.hxx".}
proc GetFromGraph*(this: var Interface_GraphContent; agraph: Interface_Graph) {.
    importcpp: "GetFromGraph", header: "Interface_GraphContent.hxx".}
proc GetFromGraph*(this: var Interface_GraphContent; agraph: Interface_Graph;
                  stat: Standard_Integer) {.importcpp: "GetFromGraph",
    header: "Interface_GraphContent.hxx".}
proc Result*(this: var Interface_GraphContent): Interface_EntityIterator {.
    importcpp: "Result", header: "Interface_GraphContent.hxx".}
proc Begin*(this: var Interface_GraphContent) {.importcpp: "Begin",
    header: "Interface_GraphContent.hxx".}
proc Evaluate*(this: var Interface_GraphContent) {.importcpp: "Evaluate",
    header: "Interface_GraphContent.hxx".}