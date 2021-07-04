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
  ../Interface/Interface_GraphContent, ../Standard/Standard_Boolean

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  IFGraph_Compare* {.importcpp: "IFGraph_Compare", header: "IFGraph_Compare.hxx",
                    bycopy.} = object of Interface_GraphContent ## ! creates empty Compare, ready to work


proc constructIFGraph_Compare*(agraph: Interface_Graph): IFGraph_Compare {.
    constructor, importcpp: "IFGraph_Compare(@)", header: "IFGraph_Compare.hxx".}
proc GetFromEntity*(this: var IFGraph_Compare; ent: handle[Standard_Transient];
                   first: Standard_Boolean) {.importcpp: "GetFromEntity",
    header: "IFGraph_Compare.hxx".}
proc GetFromIter*(this: var IFGraph_Compare; iter: Interface_EntityIterator;
                 first: Standard_Boolean) {.importcpp: "GetFromIter",
    header: "IFGraph_Compare.hxx".}
proc Merge*(this: var IFGraph_Compare) {.importcpp: "Merge",
                                     header: "IFGraph_Compare.hxx".}
proc RemoveSecond*(this: var IFGraph_Compare) {.importcpp: "RemoveSecond",
    header: "IFGraph_Compare.hxx".}
proc KeepCommon*(this: var IFGraph_Compare) {.importcpp: "KeepCommon",
    header: "IFGraph_Compare.hxx".}
proc ResetData*(this: var IFGraph_Compare) {.importcpp: "ResetData",
    header: "IFGraph_Compare.hxx".}
proc Evaluate*(this: var IFGraph_Compare) {.importcpp: "Evaluate",
                                        header: "IFGraph_Compare.hxx".}
proc Common*(this: IFGraph_Compare): Interface_EntityIterator {.noSideEffect,
    importcpp: "Common", header: "IFGraph_Compare.hxx".}
proc FirstOnly*(this: IFGraph_Compare): Interface_EntityIterator {.noSideEffect,
    importcpp: "FirstOnly", header: "IFGraph_Compare.hxx".}
proc SecondOnly*(this: IFGraph_Compare): Interface_EntityIterator {.noSideEffect,
    importcpp: "SecondOnly", header: "IFGraph_Compare.hxx".}