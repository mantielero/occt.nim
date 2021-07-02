##  Created on: 1992-02-18
##  Created by: Christophe MARION
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

discard "forward decl of Standard_OutOfRange"
type
  HLRAlgoEdgeStatus* {.importcpp: "HLRAlgo_EdgeStatus",
                      header: "HLRAlgo_EdgeStatus.hxx", bycopy.} = object


proc constructHLRAlgoEdgeStatus*(): HLRAlgoEdgeStatus {.constructor,
    importcpp: "HLRAlgo_EdgeStatus(@)", header: "HLRAlgo_EdgeStatus.hxx".}
proc constructHLRAlgoEdgeStatus*(start: StandardReal; tolStart: StandardShortReal;
                                `end`: StandardReal; tolEnd: StandardShortReal): HLRAlgoEdgeStatus {.
    constructor, importcpp: "HLRAlgo_EdgeStatus(@)",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc initialize*(this: var HLRAlgoEdgeStatus; start: StandardReal;
                tolStart: StandardShortReal; `end`: StandardReal;
                tolEnd: StandardShortReal) {.importcpp: "Initialize",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc bounds*(this: HLRAlgoEdgeStatus; theStart: var StandardReal;
            theTolStart: var StandardShortReal; theEnd: var StandardReal;
            theTolEnd: var StandardShortReal) {.noSideEffect, importcpp: "Bounds",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc nbVisiblePart*(this: HLRAlgoEdgeStatus): StandardInteger {.noSideEffect,
    importcpp: "NbVisiblePart", header: "HLRAlgo_EdgeStatus.hxx".}
proc visiblePart*(this: HLRAlgoEdgeStatus; index: StandardInteger;
                 start: var StandardReal; tolStart: var StandardShortReal;
                 `end`: var StandardReal; tolEnd: var StandardShortReal) {.
    noSideEffect, importcpp: "VisiblePart", header: "HLRAlgo_EdgeStatus.hxx".}
proc hide*(this: var HLRAlgoEdgeStatus; start: StandardReal;
          tolStart: StandardShortReal; `end`: StandardReal;
          tolEnd: StandardShortReal; onFace: StandardBoolean;
          onBoundary: StandardBoolean) {.importcpp: "Hide",
                                       header: "HLRAlgo_EdgeStatus.hxx".}
proc hideAll*(this: var HLRAlgoEdgeStatus) {.importcpp: "HideAll",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc showAll*(this: var HLRAlgoEdgeStatus) {.importcpp: "ShowAll",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc allHidden*(this: HLRAlgoEdgeStatus): StandardBoolean {.noSideEffect,
    importcpp: "AllHidden", header: "HLRAlgo_EdgeStatus.hxx".}
proc allHidden*(this: var HLRAlgoEdgeStatus; b: StandardBoolean) {.
    importcpp: "AllHidden", header: "HLRAlgo_EdgeStatus.hxx".}
proc allVisible*(this: HLRAlgoEdgeStatus): StandardBoolean {.noSideEffect,
    importcpp: "AllVisible", header: "HLRAlgo_EdgeStatus.hxx".}
proc allVisible*(this: var HLRAlgoEdgeStatus; b: StandardBoolean) {.
    importcpp: "AllVisible", header: "HLRAlgo_EdgeStatus.hxx".}

