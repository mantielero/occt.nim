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

import
  ../Standard/Standard_Real, ../Standard/Standard_ConstructionError,
  ../NCollection/NCollection_List

## ! This class describes a range in 1D space restricted
## ! by two real values.
## ! A range can be void indicating there is no point included in the range.

type
  Bnd_Range* {.importcpp: "Bnd_Range", header: "Bnd_Range.hxx", bycopy.} = object ## !
                                                                          ## Default
                                                                          ## constructor.
                                                                          ## Creates VOID range.
    ## !< Start of range
    ## !< End   of range


proc constructBnd_Range*(): Bnd_Range {.constructor, importcpp: "Bnd_Range(@)",
                                     header: "Bnd_Range.hxx".}
proc constructBnd_Range*(theMin: Standard_Real; theMax: Standard_Real): Bnd_Range {.
    constructor, importcpp: "Bnd_Range(@)", header: "Bnd_Range.hxx".}
proc Common*(this: var Bnd_Range; theOther: Bnd_Range) {.importcpp: "Common",
    header: "Bnd_Range.hxx".}
proc Union*(this: var Bnd_Range; theOther: Bnd_Range): Standard_Boolean {.
    importcpp: "Union", header: "Bnd_Range.hxx".}
proc Split*(this: Bnd_Range; theVal: Standard_Real;
           theList: var NCollection_List[Bnd_Range]; thePeriod: Standard_Real = 0.0) {.
    noSideEffect, importcpp: "Split", header: "Bnd_Range.hxx".}
proc IsIntersected*(this: Bnd_Range; theVal: Standard_Real;
                   thePeriod: Standard_Real = 0.0): Standard_Integer {.noSideEffect,
    importcpp: "IsIntersected", header: "Bnd_Range.hxx".}
proc Add*(this: var Bnd_Range; theParameter: Standard_Real) {.importcpp: "Add",
    header: "Bnd_Range.hxx".}
proc Add*(this: var Bnd_Range; theRange: Bnd_Range) {.importcpp: "Add",
    header: "Bnd_Range.hxx".}
proc GetMin*(this: Bnd_Range; thePar: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetMin", header: "Bnd_Range.hxx".}
proc GetMax*(this: Bnd_Range; thePar: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetMax", header: "Bnd_Range.hxx".}
proc GetBounds*(this: Bnd_Range; theFirstPar: var Standard_Real;
               theLastPar: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "GetBounds", header: "Bnd_Range.hxx".}
proc GetIntermediatePoint*(this: Bnd_Range; theLambda: Standard_Real;
                          theParameter: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "GetIntermediatePoint", header: "Bnd_Range.hxx".}
proc Delta*(this: Bnd_Range): Standard_Real {.noSideEffect, importcpp: "Delta",
    header: "Bnd_Range.hxx".}
proc IsVoid*(this: Bnd_Range): Standard_Boolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_Range.hxx".}
proc SetVoid*(this: var Bnd_Range) {.importcpp: "SetVoid", header: "Bnd_Range.hxx".}
proc Enlarge*(this: var Bnd_Range; theDelta: Standard_Real) {.importcpp: "Enlarge",
    header: "Bnd_Range.hxx".}
proc Shifted*(this: Bnd_Range; theVal: Standard_Real): Bnd_Range {.noSideEffect,
    importcpp: "Shifted", header: "Bnd_Range.hxx".}
proc Shift*(this: var Bnd_Range; theVal: Standard_Real) {.importcpp: "Shift",
    header: "Bnd_Range.hxx".}
proc TrimFrom*(this: var Bnd_Range; theValLower: Standard_Real) {.
    importcpp: "TrimFrom", header: "Bnd_Range.hxx".}
proc TrimTo*(this: var Bnd_Range; theValUpper: Standard_Real) {.importcpp: "TrimTo",
    header: "Bnd_Range.hxx".}
proc IsOut*(this: Bnd_Range; theValue: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsOut", header: "Bnd_Range.hxx".}
proc IsOut*(this: Bnd_Range; theRange: Bnd_Range): Standard_Boolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_Range.hxx".}
proc `==`*(this: Bnd_Range; theOther: Bnd_Range): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "Bnd_Range.hxx".}
proc DumpJson*(this: Bnd_Range; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Bnd_Range.hxx".}