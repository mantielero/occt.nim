##  Created on: 1993-01-11
##  Created by: Christophe MARION
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

discard "forward decl of HLRAlgo_EdgeStatus"
type
  HLRAlgoEdgeIterator* {.importcpp: "HLRAlgo_EdgeIterator",
                        header: "HLRAlgo_EdgeIterator.hxx", bycopy.} = object ## !
                                                                         ## Iterator  on the  visible or  hidden  parts of  an
                                                                         ## ! edge.


proc constructHLRAlgoEdgeIterator*(): HLRAlgoEdgeIterator {.constructor,
    importcpp: "HLRAlgo_EdgeIterator(@)", header: "HLRAlgo_EdgeIterator.hxx".}
proc initHidden*(this: var HLRAlgoEdgeIterator; status: var HLRAlgoEdgeStatus) {.
    importcpp: "InitHidden", header: "HLRAlgo_EdgeIterator.hxx".}
proc moreHidden*(this: HLRAlgoEdgeIterator): bool {.noSideEffect,
    importcpp: "MoreHidden", header: "HLRAlgo_EdgeIterator.hxx".}
proc nextHidden*(this: var HLRAlgoEdgeIterator) {.importcpp: "NextHidden",
    header: "HLRAlgo_EdgeIterator.hxx".}
proc hidden*(this: HLRAlgoEdgeIterator; start: var cfloat;
            tolStart: var StandardShortReal; `end`: var cfloat;
            tolEnd: var StandardShortReal) {.noSideEffect, importcpp: "Hidden",
    header: "HLRAlgo_EdgeIterator.hxx".}
proc initVisible*(this: var HLRAlgoEdgeIterator; status: var HLRAlgoEdgeStatus) {.
    importcpp: "InitVisible", header: "HLRAlgo_EdgeIterator.hxx".}
proc moreVisible*(this: HLRAlgoEdgeIterator): bool {.noSideEffect,
    importcpp: "MoreVisible", header: "HLRAlgo_EdgeIterator.hxx".}
proc nextVisible*(this: var HLRAlgoEdgeIterator) {.importcpp: "NextVisible",
    header: "HLRAlgo_EdgeIterator.hxx".}
proc visible*(this: var HLRAlgoEdgeIterator; start: var cfloat;
             tolStart: var StandardShortReal; `end`: var cfloat;
             tolEnd: var StandardShortReal) {.importcpp: "Visible",
    header: "HLRAlgo_EdgeIterator.hxx".}

























