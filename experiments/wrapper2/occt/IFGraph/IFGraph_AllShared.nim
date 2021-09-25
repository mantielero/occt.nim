##  Created on: 1992-09-30
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
  IFGraphAllShared* {.importcpp: "IFGraph_AllShared",
                     header: "IFGraph_AllShared.hxx", bycopy.} = object of InterfaceGraphContent ##
                                                                                          ## !
                                                                                          ## creates
                                                                                          ## an
                                                                                          ## AllShared
                                                                                          ## from
                                                                                          ## a
                                                                                          ## graph,
                                                                                          ## empty
                                                                                          ## ready
                                                                                          ## to
                                                                                          ## be
                                                                                          ## filled


proc constructIFGraphAllShared*(agraph: InterfaceGraph): IFGraphAllShared {.
    constructor, importcpp: "IFGraph_AllShared(@)", header: "IFGraph_AllShared.hxx".}
proc constructIFGraphAllShared*(agraph: InterfaceGraph;
                               ent: Handle[StandardTransient]): IFGraphAllShared {.
    constructor, importcpp: "IFGraph_AllShared(@)", header: "IFGraph_AllShared.hxx".}
proc getFromEntity*(this: var IFGraphAllShared; ent: Handle[StandardTransient]) {.
    importcpp: "GetFromEntity", header: "IFGraph_AllShared.hxx".}
proc getFromIter*(this: var IFGraphAllShared; iter: InterfaceEntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_AllShared.hxx".}
proc resetData*(this: var IFGraphAllShared) {.importcpp: "ResetData",
    header: "IFGraph_AllShared.hxx".}
proc evaluate*(this: var IFGraphAllShared) {.importcpp: "Evaluate",
    header: "IFGraph_AllShared.hxx".}
