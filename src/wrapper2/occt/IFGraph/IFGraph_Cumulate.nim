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
  IFGraphCumulate* {.importcpp: "IFGraph_Cumulate", header: "IFGraph_Cumulate.hxx",
                    bycopy.} = object of InterfaceGraphContent ## ! creates empty Cumulate, ready to work


proc constructIFGraphCumulate*(agraph: InterfaceGraph): IFGraphCumulate {.
    constructor, importcpp: "IFGraph_Cumulate(@)", header: "IFGraph_Cumulate.hxx".}
proc getFromEntity*(this: var IFGraphCumulate; ent: Handle[StandardTransient]) {.
    importcpp: "GetFromEntity", header: "IFGraph_Cumulate.hxx".}
proc getFromIter*(this: var IFGraphCumulate; iter: InterfaceEntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_Cumulate.hxx".}
proc resetData*(this: var IFGraphCumulate) {.importcpp: "ResetData",
    header: "IFGraph_Cumulate.hxx".}
proc evaluate*(this: var IFGraphCumulate) {.importcpp: "Evaluate",
                                        header: "IFGraph_Cumulate.hxx".}
proc overlapped*(this: IFGraphCumulate): InterfaceEntityIterator {.noSideEffect,
    importcpp: "Overlapped", header: "IFGraph_Cumulate.hxx".}
proc forgotten*(this: IFGraphCumulate): InterfaceEntityIterator {.noSideEffect,
    importcpp: "Forgotten", header: "IFGraph_Cumulate.hxx".}
proc perCount*(this: IFGraphCumulate; count: StandardInteger = 1): InterfaceEntityIterator {.
    noSideEffect, importcpp: "PerCount", header: "IFGraph_Cumulate.hxx".}
proc nbTimes*(this: IFGraphCumulate; ent: Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "NbTimes", header: "IFGraph_Cumulate.hxx".}
proc highestNbTimes*(this: IFGraphCumulate): StandardInteger {.noSideEffect,
    importcpp: "HighestNbTimes", header: "IFGraph_Cumulate.hxx".}

