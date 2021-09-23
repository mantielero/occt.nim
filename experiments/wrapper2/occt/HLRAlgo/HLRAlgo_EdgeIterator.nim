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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_ShortReal,
  ../Standard/Standard_Boolean

discard "forward decl of HLRAlgo_EdgeStatus"
type
  HLRAlgo_EdgeIterator* {.importcpp: "HLRAlgo_EdgeIterator",
                         header: "HLRAlgo_EdgeIterator.hxx", bycopy.} = object ## !
                                                                          ## Iterator  on the
                                                                          ## visible or  hidden  parts of  an
                                                                          ## ! edge.


proc constructHLRAlgo_EdgeIterator*(): HLRAlgo_EdgeIterator {.constructor,
    importcpp: "HLRAlgo_EdgeIterator(@)", header: "HLRAlgo_EdgeIterator.hxx".}
proc InitHidden*(this: var HLRAlgo_EdgeIterator; status: var HLRAlgo_EdgeStatus) {.
    importcpp: "InitHidden", header: "HLRAlgo_EdgeIterator.hxx".}
proc MoreHidden*(this: HLRAlgo_EdgeIterator): Standard_Boolean {.noSideEffect,
    importcpp: "MoreHidden", header: "HLRAlgo_EdgeIterator.hxx".}
proc NextHidden*(this: var HLRAlgo_EdgeIterator) {.importcpp: "NextHidden",
    header: "HLRAlgo_EdgeIterator.hxx".}
proc Hidden*(this: HLRAlgo_EdgeIterator; Start: var Standard_Real;
            TolStart: var Standard_ShortReal; End: var Standard_Real;
            TolEnd: var Standard_ShortReal) {.noSideEffect, importcpp: "Hidden",
    header: "HLRAlgo_EdgeIterator.hxx".}
proc InitVisible*(this: var HLRAlgo_EdgeIterator; status: var HLRAlgo_EdgeStatus) {.
    importcpp: "InitVisible", header: "HLRAlgo_EdgeIterator.hxx".}
proc MoreVisible*(this: HLRAlgo_EdgeIterator): Standard_Boolean {.noSideEffect,
    importcpp: "MoreVisible", header: "HLRAlgo_EdgeIterator.hxx".}
proc NextVisible*(this: var HLRAlgo_EdgeIterator) {.importcpp: "NextVisible",
    header: "HLRAlgo_EdgeIterator.hxx".}
proc Visible*(this: var HLRAlgo_EdgeIterator; Start: var Standard_Real;
             TolStart: var Standard_ShortReal; End: var Standard_Real;
             TolEnd: var Standard_ShortReal) {.importcpp: "Visible",
    header: "HLRAlgo_EdgeIterator.hxx".}