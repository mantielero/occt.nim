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
  IFGraphCompare* {.importcpp: "IFGraph_Compare", header: "IFGraph_Compare.hxx",
                   bycopy.} = object of InterfaceGraphContent ## ! creates empty Compare, ready to work


proc constructIFGraphCompare*(agraph: InterfaceGraph): IFGraphCompare {.constructor,
    importcpp: "IFGraph_Compare(@)", header: "IFGraph_Compare.hxx".}
proc getFromEntity*(this: var IFGraphCompare; ent: Handle[StandardTransient];
                   first: StandardBoolean) {.importcpp: "GetFromEntity",
    header: "IFGraph_Compare.hxx".}
proc getFromIter*(this: var IFGraphCompare; iter: InterfaceEntityIterator;
                 first: StandardBoolean) {.importcpp: "GetFromIter",
    header: "IFGraph_Compare.hxx".}
proc merge*(this: var IFGraphCompare) {.importcpp: "Merge",
                                    header: "IFGraph_Compare.hxx".}
proc removeSecond*(this: var IFGraphCompare) {.importcpp: "RemoveSecond",
    header: "IFGraph_Compare.hxx".}
proc keepCommon*(this: var IFGraphCompare) {.importcpp: "KeepCommon",
    header: "IFGraph_Compare.hxx".}
proc resetData*(this: var IFGraphCompare) {.importcpp: "ResetData",
                                        header: "IFGraph_Compare.hxx".}
proc evaluate*(this: var IFGraphCompare) {.importcpp: "Evaluate",
                                       header: "IFGraph_Compare.hxx".}
proc common*(this: IFGraphCompare): InterfaceEntityIterator {.noSideEffect,
    importcpp: "Common", header: "IFGraph_Compare.hxx".}
proc firstOnly*(this: IFGraphCompare): InterfaceEntityIterator {.noSideEffect,
    importcpp: "FirstOnly", header: "IFGraph_Compare.hxx".}
proc secondOnly*(this: IFGraphCompare): InterfaceEntityIterator {.noSideEffect,
    importcpp: "SecondOnly", header: "IFGraph_Compare.hxx".}

