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

## ! **-----------****             Other
## ! ***---*                                   IsBefore
## ! ***----------*                            IsJustBefore
## ! ***---------------*                       IsOverlappingAtStart
## ! ***------------------------*              IsJustEnclosingAtEnd
## ! ***-----------------------------------*   IsEnclosing
## ! ***----*                       IsJustOverlappingAtStart
## ! ***-------------*              IsSimilar
## ! ***------------------------*   IsJustEnclosingAtStart
## ! ***-*                   IsInside
## ! ***------*              IsJustOverlappingAtEnd
## ! ***-----------------*   IsOverlappingAtEnd
## ! ***--------*   IsJustAfter
## ! ***---*   IsAfter

type
  IntrvInterval* {.importcpp: "Intrv_Interval", header: "Intrv_Interval.hxx", bycopy.} = object


proc constructIntrvInterval*(): IntrvInterval {.constructor,
    importcpp: "Intrv_Interval(@)", header: "Intrv_Interval.hxx".}
proc constructIntrvInterval*(start: cfloat; `end`: cfloat): IntrvInterval {.
    constructor, importcpp: "Intrv_Interval(@)", header: "Intrv_Interval.hxx".}
proc constructIntrvInterval*(start: cfloat; tolStart: StandardShortReal;
                            `end`: cfloat; tolEnd: StandardShortReal): IntrvInterval {.
    constructor, importcpp: "Intrv_Interval(@)", header: "Intrv_Interval.hxx".}
proc start*(this: IntrvInterval): cfloat {.noSideEffect, importcpp: "Start",
                                       header: "Intrv_Interval.hxx".}
proc `end`*(this: IntrvInterval): cfloat {.noSideEffect, importcpp: "End",
                                       header: "Intrv_Interval.hxx".}
proc tolStart*(this: IntrvInterval): StandardShortReal {.noSideEffect,
    importcpp: "TolStart", header: "Intrv_Interval.hxx".}
proc tolEnd*(this: IntrvInterval): StandardShortReal {.noSideEffect,
    importcpp: "TolEnd", header: "Intrv_Interval.hxx".}
proc bounds*(this: IntrvInterval; start: var cfloat; tolStart: var StandardShortReal;
            `end`: var cfloat; tolEnd: var StandardShortReal) {.noSideEffect,
    importcpp: "Bounds", header: "Intrv_Interval.hxx".}
proc setStart*(this: var IntrvInterval; start: cfloat; tolStart: StandardShortReal) {.
    importcpp: "SetStart", header: "Intrv_Interval.hxx".}
proc fuseAtStart*(this: var IntrvInterval; start: cfloat; tolStart: StandardShortReal) {.
    importcpp: "FuseAtStart", header: "Intrv_Interval.hxx".}
proc cutAtStart*(this: var IntrvInterval; start: cfloat; tolStart: StandardShortReal) {.
    importcpp: "CutAtStart", header: "Intrv_Interval.hxx".}
proc setEnd*(this: var IntrvInterval; `end`: cfloat; tolEnd: StandardShortReal) {.
    importcpp: "SetEnd", header: "Intrv_Interval.hxx".}
proc fuseAtEnd*(this: var IntrvInterval; `end`: cfloat; tolEnd: StandardShortReal) {.
    importcpp: "FuseAtEnd", header: "Intrv_Interval.hxx".}
proc cutAtEnd*(this: var IntrvInterval; `end`: cfloat; tolEnd: StandardShortReal) {.
    importcpp: "CutAtEnd", header: "Intrv_Interval.hxx".}
proc isProbablyEmpty*(this: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsProbablyEmpty", header: "Intrv_Interval.hxx".}
proc position*(this: IntrvInterval; other: IntrvInterval): IntrvPosition {.
    noSideEffect, importcpp: "Position", header: "Intrv_Interval.hxx".}
proc isBefore*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsBefore", header: "Intrv_Interval.hxx".}
proc isAfter*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsAfter", header: "Intrv_Interval.hxx".}
proc isInside*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsInside", header: "Intrv_Interval.hxx".}
proc isEnclosing*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsEnclosing", header: "Intrv_Interval.hxx".}
proc isJustEnclosingAtStart*(this: IntrvInterval; other: IntrvInterval): bool {.
    noSideEffect, importcpp: "IsJustEnclosingAtStart", header: "Intrv_Interval.hxx".}
proc isJustEnclosingAtEnd*(this: IntrvInterval; other: IntrvInterval): bool {.
    noSideEffect, importcpp: "IsJustEnclosingAtEnd", header: "Intrv_Interval.hxx".}
proc isJustBefore*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsJustBefore", header: "Intrv_Interval.hxx".}
proc isJustAfter*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsJustAfter", header: "Intrv_Interval.hxx".}
proc isOverlappingAtStart*(this: IntrvInterval; other: IntrvInterval): bool {.
    noSideEffect, importcpp: "IsOverlappingAtStart", header: "Intrv_Interval.hxx".}
proc isOverlappingAtEnd*(this: IntrvInterval; other: IntrvInterval): bool {.
    noSideEffect, importcpp: "IsOverlappingAtEnd", header: "Intrv_Interval.hxx".}
proc isJustOverlappingAtStart*(this: IntrvInterval; other: IntrvInterval): bool {.
    noSideEffect, importcpp: "IsJustOverlappingAtStart",
    header: "Intrv_Interval.hxx".}
proc isJustOverlappingAtEnd*(this: IntrvInterval; other: IntrvInterval): bool {.
    noSideEffect, importcpp: "IsJustOverlappingAtEnd", header: "Intrv_Interval.hxx".}
proc isSimilar*(this: IntrvInterval; other: IntrvInterval): bool {.noSideEffect,
    importcpp: "IsSimilar", header: "Intrv_Interval.hxx".}

























