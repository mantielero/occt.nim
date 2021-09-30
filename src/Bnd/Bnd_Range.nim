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


proc constructBndRange*(): BndRange {.constructor, importcpp: "Bnd_Range(@)",
                                   header: "Bnd_Range.hxx".}
proc constructBndRange*(theMin: cfloat; theMax: cfloat): BndRange {.constructor,
    importcpp: "Bnd_Range(@)", header: "Bnd_Range.hxx".}
proc common*(this: var BndRange; theOther: BndRange) {.importcpp: "Common",
    header: "Bnd_Range.hxx".}
proc union*(this: var BndRange; theOther: BndRange): bool {.importcpp: "Union",
    header: "Bnd_Range.hxx".}
proc split*(this: BndRange; theVal: cfloat; theList: var NCollectionList[BndRange];
           thePeriod: cfloat = 0.0) {.noSideEffect, importcpp: "Split",
                                  header: "Bnd_Range.hxx".}
proc isIntersected*(this: BndRange; theVal: cfloat; thePeriod: cfloat = 0.0): cint {.
    noSideEffect, importcpp: "IsIntersected", header: "Bnd_Range.hxx".}
proc add*(this: var BndRange; theParameter: cfloat) {.importcpp: "Add",
    header: "Bnd_Range.hxx".}
proc add*(this: var BndRange; theRange: BndRange) {.importcpp: "Add",
    header: "Bnd_Range.hxx".}
proc getMin*(this: BndRange; thePar: var cfloat): bool {.noSideEffect,
    importcpp: "GetMin", header: "Bnd_Range.hxx".}
proc getMax*(this: BndRange; thePar: var cfloat): bool {.noSideEffect,
    importcpp: "GetMax", header: "Bnd_Range.hxx".}
proc getBounds*(this: BndRange; theFirstPar: var cfloat; theLastPar: var cfloat): bool {.
    noSideEffect, importcpp: "GetBounds", header: "Bnd_Range.hxx".}
proc getIntermediatePoint*(this: BndRange; theLambda: cfloat;
                          theParameter: var cfloat): bool {.noSideEffect,
    importcpp: "GetIntermediatePoint", header: "Bnd_Range.hxx".}
proc delta*(this: BndRange): cfloat {.noSideEffect, importcpp: "Delta",
                                  header: "Bnd_Range.hxx".}
proc isVoid*(this: BndRange): bool {.noSideEffect, importcpp: "IsVoid",
                                 header: "Bnd_Range.hxx".}
proc setVoid*(this: var BndRange) {.importcpp: "SetVoid", header: "Bnd_Range.hxx".}
proc enlarge*(this: var BndRange; theDelta: cfloat) {.importcpp: "Enlarge",
    header: "Bnd_Range.hxx".}
proc shifted*(this: BndRange; theVal: cfloat): BndRange {.noSideEffect,
    importcpp: "Shifted", header: "Bnd_Range.hxx".}
proc shift*(this: var BndRange; theVal: cfloat) {.importcpp: "Shift",
    header: "Bnd_Range.hxx".}
proc trimFrom*(this: var BndRange; theValLower: cfloat) {.importcpp: "TrimFrom",
    header: "Bnd_Range.hxx".}
proc trimTo*(this: var BndRange; theValUpper: cfloat) {.importcpp: "TrimTo",
    header: "Bnd_Range.hxx".}
proc isOut*(this: BndRange; theValue: cfloat): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_Range.hxx".}
proc isOut*(this: BndRange; theRange: BndRange): bool {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Range.hxx".}
proc `==`*(this: BndRange; theOther: BndRange): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Bnd_Range.hxx".}
proc dumpJson*(this: BndRange; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Bnd_Range.hxx".}

























