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
  ../Standard/Standard_Handle, ../Interface/Interface_Graph,
  ../Interface/Interface_GraphContent, ../Standard/Standard_Integer

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  IFGraph_Cumulate* {.importcpp: "IFGraph_Cumulate",
                     header: "IFGraph_Cumulate.hxx", bycopy.} = object of Interface_GraphContent ##
                                                                                          ## !
                                                                                          ## creates
                                                                                          ## empty
                                                                                          ## Cumulate,
                                                                                          ## ready
                                                                                          ## to
                                                                                          ## work


proc constructIFGraph_Cumulate*(agraph: Interface_Graph): IFGraph_Cumulate {.
    constructor, importcpp: "IFGraph_Cumulate(@)", header: "IFGraph_Cumulate.hxx".}
proc GetFromEntity*(this: var IFGraph_Cumulate; ent: handle[Standard_Transient]) {.
    importcpp: "GetFromEntity", header: "IFGraph_Cumulate.hxx".}
proc GetFromIter*(this: var IFGraph_Cumulate; iter: Interface_EntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_Cumulate.hxx".}
proc ResetData*(this: var IFGraph_Cumulate) {.importcpp: "ResetData",
    header: "IFGraph_Cumulate.hxx".}
proc Evaluate*(this: var IFGraph_Cumulate) {.importcpp: "Evaluate",
    header: "IFGraph_Cumulate.hxx".}
proc Overlapped*(this: IFGraph_Cumulate): Interface_EntityIterator {.noSideEffect,
    importcpp: "Overlapped", header: "IFGraph_Cumulate.hxx".}
proc Forgotten*(this: IFGraph_Cumulate): Interface_EntityIterator {.noSideEffect,
    importcpp: "Forgotten", header: "IFGraph_Cumulate.hxx".}
proc PerCount*(this: IFGraph_Cumulate; count: Standard_Integer = 1): Interface_EntityIterator {.
    noSideEffect, importcpp: "PerCount", header: "IFGraph_Cumulate.hxx".}
proc NbTimes*(this: IFGraph_Cumulate; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "NbTimes", header: "IFGraph_Cumulate.hxx".}
proc HighestNbTimes*(this: IFGraph_Cumulate): Standard_Integer {.noSideEffect,
    importcpp: "HighestNbTimes", header: "IFGraph_Cumulate.hxx".}