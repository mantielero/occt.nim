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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intrv_Interval"
type
  IntrvIntervals* {.importcpp: "Intrv_Intervals", header: "Intrv_Intervals.hxx",
                   bycopy.} = object ## ! Creates a void sequence of intervals.


proc constructIntrvIntervals*(): IntrvIntervals {.constructor,
    importcpp: "Intrv_Intervals(@)", header: "Intrv_Intervals.hxx".}
proc constructIntrvIntervals*(int: IntrvInterval): IntrvIntervals {.constructor,
    importcpp: "Intrv_Intervals(@)", header: "Intrv_Intervals.hxx".}
proc intersect*(this: var IntrvIntervals; tool: IntrvInterval) {.
    importcpp: "Intersect", header: "Intrv_Intervals.hxx".}
proc intersect*(this: var IntrvIntervals; tool: IntrvIntervals) {.
    importcpp: "Intersect", header: "Intrv_Intervals.hxx".}
proc subtract*(this: var IntrvIntervals; tool: IntrvInterval) {.importcpp: "Subtract",
    header: "Intrv_Intervals.hxx".}
proc subtract*(this: var IntrvIntervals; tool: IntrvIntervals) {.
    importcpp: "Subtract", header: "Intrv_Intervals.hxx".}
proc unite*(this: var IntrvIntervals; tool: IntrvInterval) {.importcpp: "Unite",
    header: "Intrv_Intervals.hxx".}
proc unite*(this: var IntrvIntervals; tool: IntrvIntervals) {.importcpp: "Unite",
    header: "Intrv_Intervals.hxx".}
proc xUnite*(this: var IntrvIntervals; tool: IntrvInterval) {.importcpp: "XUnite",
    header: "Intrv_Intervals.hxx".}
proc xUnite*(this: var IntrvIntervals; tool: IntrvIntervals) {.importcpp: "XUnite",
    header: "Intrv_Intervals.hxx".}
proc nbIntervals*(this: IntrvIntervals): int {.noSideEffect,
    importcpp: "NbIntervals", header: "Intrv_Intervals.hxx".}
proc value*(this: IntrvIntervals; index: int): IntrvInterval {.noSideEffect,
    importcpp: "Value", header: "Intrv_Intervals.hxx".}
