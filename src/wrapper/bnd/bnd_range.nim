import bnd_types
import ../standard/standard_types
#import ../tcolstd/tcolstd_types
import ../ncollection/ncollection_types
#import ../gp/gp_types
#import ../tcolgp/tcolgp_types
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



proc newBndRange*(): BndRange {.cdecl, constructor, importcpp: "Bnd_Range(@)",
                             header: "Bnd_Range.hxx".}
proc newBndRange*(theMin: cfloat; theMax: cfloat): BndRange {.cdecl, constructor,
    importcpp: "Bnd_Range(@)", header: "Bnd_Range.hxx".}
proc common*(this: var BndRange; theOther: BndRange) {.cdecl, importcpp: "Common",
    header: "Bnd_Range.hxx".}
proc union*(this: var BndRange; theOther: BndRange): bool {.cdecl, importcpp: "Union",
    header: "Bnd_Range.hxx".}
proc split*(this: BndRange; theVal: cfloat; theList: var NCollectionList[BndRange];
           thePeriod: cfloat = 0.0) {.noSideEffect, cdecl, importcpp: "Split",
                                  header: "Bnd_Range.hxx".}
proc isIntersected*(this: BndRange; theVal: cfloat; thePeriod: cfloat = 0.0): cint {.
    noSideEffect, cdecl, importcpp: "IsIntersected", header: "Bnd_Range.hxx".}
proc add*(this: var BndRange; theParameter: cfloat) {.cdecl, importcpp: "Add",
    header: "Bnd_Range.hxx".}
proc add*(this: var BndRange; theRange: BndRange) {.cdecl, importcpp: "Add",
    header: "Bnd_Range.hxx".}
proc getMin*(this: BndRange; thePar: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GetMin", header: "Bnd_Range.hxx".}
proc getMax*(this: BndRange; thePar: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GetMax", header: "Bnd_Range.hxx".}
proc getBounds*(this: BndRange; theFirstPar: var cfloat; theLastPar: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "GetBounds", header: "Bnd_Range.hxx".}
proc getIntermediatePoint*(this: BndRange; theLambda: cfloat;
                          theParameter: var cfloat): bool {.noSideEffect, cdecl,
    importcpp: "GetIntermediatePoint", header: "Bnd_Range.hxx".}
proc delta*(this: BndRange): cfloat {.noSideEffect, cdecl, importcpp: "Delta",
                                  header: "Bnd_Range.hxx".}
proc isVoid*(this: BndRange): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                                 header: "Bnd_Range.hxx".}
proc setVoid*(this: var BndRange) {.cdecl, importcpp: "SetVoid", header: "Bnd_Range.hxx".}
proc enlarge*(this: var BndRange; theDelta: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_Range.hxx".}
proc shifted*(this: BndRange; theVal: cfloat): BndRange {.noSideEffect, cdecl,
    importcpp: "Shifted", header: "Bnd_Range.hxx".}
proc shift*(this: var BndRange; theVal: cfloat) {.cdecl, importcpp: "Shift",
    header: "Bnd_Range.hxx".}
proc trimFrom*(this: var BndRange; theValLower: cfloat) {.cdecl, importcpp: "TrimFrom",
    header: "Bnd_Range.hxx".}
proc trimTo*(this: var BndRange; theValUpper: cfloat) {.cdecl, importcpp: "TrimTo",
    header: "Bnd_Range.hxx".}
proc isOut*(this: BndRange; theValue: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Range.hxx".}
proc isOut*(this: BndRange; theRange: BndRange): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_Range.hxx".}
proc `==`*(this: BndRange; theOther: BndRange): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", header: "Bnd_Range.hxx".}
proc dumpJson*(this: BndRange; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Bnd_Range.hxx".}
