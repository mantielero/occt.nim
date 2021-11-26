##  Created on: 2016-06-07
##  Created by: Nikolai BUKHALOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! This class describes a range in 1D space restricted
## ! by two real values.
## ! A range can be void indicating there is no point included in the range.

type
  BndRange* {.importcpp: "Bnd_Range", header: "Bnd_Range.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor. Creates VOID range.
    ## !< Start of range
    ## !< End   of range


proc newBndRange*(): BndRange {.cdecl, constructor, importcpp: "Bnd_Range(@)",
                             dynlib: tkmath.}
proc newBndRange*(theMin: cfloat; theMax: cfloat): BndRange {.cdecl, constructor,
    importcpp: "Bnd_Range(@)", dynlib: tkmath.}
proc common*(this: var BndRange; theOther: BndRange) {.cdecl, importcpp: "Common",
    dynlib: tkmath.}
proc union*(this: var BndRange; theOther: BndRange): bool {.cdecl, importcpp: "Union",
    dynlib: tkmath.}
proc split*(this: BndRange; theVal: cfloat; theList: var NCollectionList[BndRange];
           thePeriod: cfloat = 0.0) {.noSideEffect, cdecl, importcpp: "Split",
                                  dynlib: tkmath.}
proc isIntersected*(this: BndRange; theVal: cfloat; thePeriod: cfloat = 0.0): cint {.
    noSideEffect, cdecl, importcpp: "IsIntersected", dynlib: tkmath.}
proc add*(this: var BndRange; theParameter: cfloat) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc add*(this: var BndRange; theRange: BndRange) {.cdecl, importcpp: "Add",
    dynlib: tkmath.}
proc getMin*(this: BndRange; thePar: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GetMin", dynlib: tkmath.}
proc getMax*(this: BndRange; thePar: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GetMax", dynlib: tkmath.}
proc getBounds*(this: BndRange; theFirstPar: var cfloat; theLastPar: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "GetBounds", dynlib: tkmath.}
proc getIntermediatePoint*(this: BndRange; theLambda: cfloat;
                          theParameter: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GetIntermediatePoint", dynlib: tkmath.}
proc delta*(this: BndRange): cfloat {.noSideEffect, cdecl, importcpp: "Delta",
                                  dynlib: tkmath.}
proc isVoid*(this: BndRange): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                                 dynlib: tkmath.}
proc setVoid*(this: var BndRange) {.cdecl, importcpp: "SetVoid", dynlib: tkmath.}
proc enlarge*(this: var BndRange; theDelta: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc shifted*(this: BndRange; theVal: cfloat): BndRange {.noSideEffect, cdecl,
    importcpp: "Shifted", dynlib: tkmath.}
proc shift*(this: var BndRange; theVal: cfloat) {.cdecl, importcpp: "Shift",
    dynlib: tkmath.}
proc trimFrom*(this: var BndRange; theValLower: cfloat) {.cdecl, importcpp: "TrimFrom",
    dynlib: tkmath.}
proc trimTo*(this: var BndRange; theValUpper: cfloat) {.cdecl, importcpp: "TrimTo",
    dynlib: tkmath.}
proc isOut*(this: BndRange; theValue: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndRange; theRange: BndRange): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc `==`*(this: BndRange; theOther: BndRange): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkmath.}
proc dumpJson*(this: BndRange; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}