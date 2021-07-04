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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_ShortReal, ../Standard/Standard_Boolean, Intrv_Position

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
  Intrv_Interval* {.importcpp: "Intrv_Interval", header: "Intrv_Interval.hxx", bycopy.} = object


proc constructIntrv_Interval*(): Intrv_Interval {.constructor,
    importcpp: "Intrv_Interval(@)", header: "Intrv_Interval.hxx".}
proc constructIntrv_Interval*(Start: Standard_Real; End: Standard_Real): Intrv_Interval {.
    constructor, importcpp: "Intrv_Interval(@)", header: "Intrv_Interval.hxx".}
proc constructIntrv_Interval*(Start: Standard_Real; TolStart: Standard_ShortReal;
                             End: Standard_Real; TolEnd: Standard_ShortReal): Intrv_Interval {.
    constructor, importcpp: "Intrv_Interval(@)", header: "Intrv_Interval.hxx".}
proc Start*(this: Intrv_Interval): Standard_Real {.noSideEffect, importcpp: "Start",
    header: "Intrv_Interval.hxx".}
proc End*(this: Intrv_Interval): Standard_Real {.noSideEffect, importcpp: "End",
    header: "Intrv_Interval.hxx".}
proc TolStart*(this: Intrv_Interval): Standard_ShortReal {.noSideEffect,
    importcpp: "TolStart", header: "Intrv_Interval.hxx".}
proc TolEnd*(this: Intrv_Interval): Standard_ShortReal {.noSideEffect,
    importcpp: "TolEnd", header: "Intrv_Interval.hxx".}
proc Bounds*(this: Intrv_Interval; Start: var Standard_Real;
            TolStart: var Standard_ShortReal; End: var Standard_Real;
            TolEnd: var Standard_ShortReal) {.noSideEffect, importcpp: "Bounds",
    header: "Intrv_Interval.hxx".}
proc SetStart*(this: var Intrv_Interval; Start: Standard_Real;
              TolStart: Standard_ShortReal) {.importcpp: "SetStart",
    header: "Intrv_Interval.hxx".}
proc FuseAtStart*(this: var Intrv_Interval; Start: Standard_Real;
                 TolStart: Standard_ShortReal) {.importcpp: "FuseAtStart",
    header: "Intrv_Interval.hxx".}
proc CutAtStart*(this: var Intrv_Interval; Start: Standard_Real;
                TolStart: Standard_ShortReal) {.importcpp: "CutAtStart",
    header: "Intrv_Interval.hxx".}
proc SetEnd*(this: var Intrv_Interval; End: Standard_Real; TolEnd: Standard_ShortReal) {.
    importcpp: "SetEnd", header: "Intrv_Interval.hxx".}
proc FuseAtEnd*(this: var Intrv_Interval; End: Standard_Real;
               TolEnd: Standard_ShortReal) {.importcpp: "FuseAtEnd",
    header: "Intrv_Interval.hxx".}
proc CutAtEnd*(this: var Intrv_Interval; End: Standard_Real;
              TolEnd: Standard_ShortReal) {.importcpp: "CutAtEnd",
    header: "Intrv_Interval.hxx".}
proc IsProbablyEmpty*(this: Intrv_Interval): Standard_Boolean {.noSideEffect,
    importcpp: "IsProbablyEmpty", header: "Intrv_Interval.hxx".}
proc Position*(this: Intrv_Interval; Other: Intrv_Interval): Intrv_Position {.
    noSideEffect, importcpp: "Position", header: "Intrv_Interval.hxx".}
proc IsBefore*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsBefore", header: "Intrv_Interval.hxx".}
proc IsAfter*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsAfter", header: "Intrv_Interval.hxx".}
proc IsInside*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsInside", header: "Intrv_Interval.hxx".}
proc IsEnclosing*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsEnclosing", header: "Intrv_Interval.hxx".}
proc IsJustEnclosingAtStart*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsJustEnclosingAtStart", header: "Intrv_Interval.hxx".}
proc IsJustEnclosingAtEnd*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsJustEnclosingAtEnd", header: "Intrv_Interval.hxx".}
proc IsJustBefore*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsJustBefore", header: "Intrv_Interval.hxx".}
proc IsJustAfter*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsJustAfter", header: "Intrv_Interval.hxx".}
proc IsOverlappingAtStart*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsOverlappingAtStart", header: "Intrv_Interval.hxx".}
proc IsOverlappingAtEnd*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsOverlappingAtEnd", header: "Intrv_Interval.hxx".}
proc IsJustOverlappingAtStart*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsJustOverlappingAtStart",
    header: "Intrv_Interval.hxx".}
proc IsJustOverlappingAtEnd*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsJustOverlappingAtEnd", header: "Intrv_Interval.hxx".}
proc IsSimilar*(this: Intrv_Interval; Other: Intrv_Interval): Standard_Boolean {.
    noSideEffect, importcpp: "IsSimilar", header: "Intrv_Interval.hxx".}