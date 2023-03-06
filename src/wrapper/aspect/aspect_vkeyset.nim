import aspect_types
import ../../tkernel/standard/standard_types





##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

## ! Structure defining key state.



proc newAspectVKeySet*(): AspectVKeySet {.cdecl, constructor,
                                       importcpp: "Aspect_VKeySet(@)",
                                       .}
proc modifiers*(this: AspectVKeySet): AspectVKeyFlags {.noSideEffect, cdecl,
    importcpp: "Modifiers".}
proc downTime*(this: AspectVKeySet; theKey: AspectVKey): cdouble {.noSideEffect, cdecl,
    importcpp: "DownTime".}
proc timeUp*(this: AspectVKeySet; theKey: AspectVKey): cdouble {.noSideEffect, cdecl,
    importcpp: "TimeUp".}
proc isFreeKey*(this: AspectVKeySet; theKey: AspectVKey): bool {.noSideEffect, cdecl,
    importcpp: "IsFreeKey".}
proc isKeyDown*(this: AspectVKeySet; theKey: AspectVKey): bool {.noSideEffect, cdecl,
    importcpp: "IsKeyDown".}
proc mutex*(this: var AspectVKeySet): var StandardMutex {.cdecl, importcpp: "Mutex",
    .}
proc reset*(this: var AspectVKeySet) {.cdecl, importcpp: "Reset".}
proc keyDown*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.cdecl, importcpp: "KeyDown",
                                       .}
proc keyUp*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble) {.cdecl,
    importcpp: "KeyUp".}
proc keyFromAxis*(this: var AspectVKeySet; theNegative: AspectVKey;
                 thePositive: AspectVKey; theTime: cdouble; thePressure: cdouble) {.
    cdecl, importcpp: "KeyFromAxis".}
proc holdDuration*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
                  theDuration: var cdouble): bool {.cdecl, importcpp: "HoldDuration",
    .}
proc holdDuration*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
                  theDuration: var cdouble; thePressure: var cdouble): bool {.cdecl,
    importcpp: "HoldDuration".}


