##  Created on: 1991-12-13
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Intrv_SequenceOfInterval,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intrv_Interval"
type
  Intrv_Intervals* {.importcpp: "Intrv_Intervals", header: "Intrv_Intervals.hxx",
                    bycopy.} = object ## ! Creates a void sequence of intervals.


proc constructIntrv_Intervals*(): Intrv_Intervals {.constructor,
    importcpp: "Intrv_Intervals(@)", header: "Intrv_Intervals.hxx".}
proc constructIntrv_Intervals*(Int: Intrv_Interval): Intrv_Intervals {.constructor,
    importcpp: "Intrv_Intervals(@)", header: "Intrv_Intervals.hxx".}
proc Intersect*(this: var Intrv_Intervals; Tool: Intrv_Interval) {.
    importcpp: "Intersect", header: "Intrv_Intervals.hxx".}
proc Intersect*(this: var Intrv_Intervals; Tool: Intrv_Intervals) {.
    importcpp: "Intersect", header: "Intrv_Intervals.hxx".}
proc Subtract*(this: var Intrv_Intervals; Tool: Intrv_Interval) {.
    importcpp: "Subtract", header: "Intrv_Intervals.hxx".}
proc Subtract*(this: var Intrv_Intervals; Tool: Intrv_Intervals) {.
    importcpp: "Subtract", header: "Intrv_Intervals.hxx".}
proc Unite*(this: var Intrv_Intervals; Tool: Intrv_Interval) {.importcpp: "Unite",
    header: "Intrv_Intervals.hxx".}
proc Unite*(this: var Intrv_Intervals; Tool: Intrv_Intervals) {.importcpp: "Unite",
    header: "Intrv_Intervals.hxx".}
proc XUnite*(this: var Intrv_Intervals; Tool: Intrv_Interval) {.importcpp: "XUnite",
    header: "Intrv_Intervals.hxx".}
proc XUnite*(this: var Intrv_Intervals; Tool: Intrv_Intervals) {.importcpp: "XUnite",
    header: "Intrv_Intervals.hxx".}
proc NbIntervals*(this: Intrv_Intervals): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "Intrv_Intervals.hxx".}
proc Value*(this: Intrv_Intervals; Index: Standard_Integer): Intrv_Interval {.
    noSideEffect, importcpp: "Value", header: "Intrv_Intervals.hxx".}