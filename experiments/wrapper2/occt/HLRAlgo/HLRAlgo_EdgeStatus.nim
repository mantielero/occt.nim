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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_ShortReal, ../Standard/Standard_Boolean,
  ../Intrv/Intrv_Intervals, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
type
  HLRAlgo_EdgeStatus* {.importcpp: "HLRAlgo_EdgeStatus",
                       header: "HLRAlgo_EdgeStatus.hxx", bycopy.} = object


proc constructHLRAlgo_EdgeStatus*(): HLRAlgo_EdgeStatus {.constructor,
    importcpp: "HLRAlgo_EdgeStatus(@)", header: "HLRAlgo_EdgeStatus.hxx".}
proc constructHLRAlgo_EdgeStatus*(Start: Standard_Real;
                                 TolStart: Standard_ShortReal; End: Standard_Real;
                                 TolEnd: Standard_ShortReal): HLRAlgo_EdgeStatus {.
    constructor, importcpp: "HLRAlgo_EdgeStatus(@)",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc Initialize*(this: var HLRAlgo_EdgeStatus; Start: Standard_Real;
                TolStart: Standard_ShortReal; End: Standard_Real;
                TolEnd: Standard_ShortReal) {.importcpp: "Initialize",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc Bounds*(this: HLRAlgo_EdgeStatus; theStart: var Standard_Real;
            theTolStart: var Standard_ShortReal; theEnd: var Standard_Real;
            theTolEnd: var Standard_ShortReal) {.noSideEffect, importcpp: "Bounds",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc NbVisiblePart*(this: HLRAlgo_EdgeStatus): Standard_Integer {.noSideEffect,
    importcpp: "NbVisiblePart", header: "HLRAlgo_EdgeStatus.hxx".}
proc VisiblePart*(this: HLRAlgo_EdgeStatus; Index: Standard_Integer;
                 Start: var Standard_Real; TolStart: var Standard_ShortReal;
                 End: var Standard_Real; TolEnd: var Standard_ShortReal) {.
    noSideEffect, importcpp: "VisiblePart", header: "HLRAlgo_EdgeStatus.hxx".}
proc Hide*(this: var HLRAlgo_EdgeStatus; Start: Standard_Real;
          TolStart: Standard_ShortReal; End: Standard_Real;
          TolEnd: Standard_ShortReal; OnFace: Standard_Boolean;
          OnBoundary: Standard_Boolean) {.importcpp: "Hide",
                                        header: "HLRAlgo_EdgeStatus.hxx".}
proc HideAll*(this: var HLRAlgo_EdgeStatus) {.importcpp: "HideAll",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc ShowAll*(this: var HLRAlgo_EdgeStatus) {.importcpp: "ShowAll",
    header: "HLRAlgo_EdgeStatus.hxx".}
proc AllHidden*(this: HLRAlgo_EdgeStatus): Standard_Boolean {.noSideEffect,
    importcpp: "AllHidden", header: "HLRAlgo_EdgeStatus.hxx".}
proc AllHidden*(this: var HLRAlgo_EdgeStatus; B: Standard_Boolean) {.
    importcpp: "AllHidden", header: "HLRAlgo_EdgeStatus.hxx".}
proc AllVisible*(this: HLRAlgo_EdgeStatus): Standard_Boolean {.noSideEffect,
    importcpp: "AllVisible", header: "HLRAlgo_EdgeStatus.hxx".}
proc AllVisible*(this: var HLRAlgo_EdgeStatus; B: Standard_Boolean) {.
    importcpp: "AllVisible", header: "HLRAlgo_EdgeStatus.hxx".}