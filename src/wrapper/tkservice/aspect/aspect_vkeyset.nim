import aspect_types



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
                                       header: "Aspect_VKeySet.hxx".}
proc modifiers*(this: AspectVKeySet): AspectVKeyFlags {.noSideEffect, cdecl,
    importcpp: "Modifiers", header: "Aspect_VKeySet.hxx".}
proc downTime*(this: AspectVKeySet; theKey: AspectVKey): cdouble {.noSideEffect, cdecl,
    importcpp: "DownTime", header: "Aspect_VKeySet.hxx".}
proc timeUp*(this: AspectVKeySet; theKey: AspectVKey): cdouble {.noSideEffect, cdecl,
    importcpp: "TimeUp", header: "Aspect_VKeySet.hxx".}
proc isFreeKey*(this: AspectVKeySet; theKey: AspectVKey): bool {.noSideEffect, cdecl,
    importcpp: "IsFreeKey", header: "Aspect_VKeySet.hxx".}
proc isKeyDown*(this: AspectVKeySet; theKey: AspectVKey): bool {.noSideEffect, cdecl,
    importcpp: "IsKeyDown", header: "Aspect_VKeySet.hxx".}
proc mutex*(this: var AspectVKeySet): var StandardMutex {.cdecl, importcpp: "Mutex",
    header: "Aspect_VKeySet.hxx".}
proc reset*(this: var AspectVKeySet) {.cdecl, importcpp: "Reset", header: "Aspect_VKeySet.hxx".}
proc keyDown*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.cdecl, importcpp: "KeyDown",
                                       header: "Aspect_VKeySet.hxx".}
proc keyUp*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble) {.cdecl,
    importcpp: "KeyUp", header: "Aspect_VKeySet.hxx".}
proc keyFromAxis*(this: var AspectVKeySet; theNegative: AspectVKey;
                 thePositive: AspectVKey; theTime: cdouble; thePressure: cdouble) {.
    cdecl, importcpp: "KeyFromAxis", header: "Aspect_VKeySet.hxx".}
proc holdDuration*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
                  theDuration: var cdouble): bool {.cdecl, importcpp: "HoldDuration",
    header: "Aspect_VKeySet.hxx".}
proc holdDuration*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
                  theDuration: var cdouble; thePressure: var cdouble): bool {.cdecl,
    importcpp: "HoldDuration", header: "Aspect_VKeySet.hxx".}

