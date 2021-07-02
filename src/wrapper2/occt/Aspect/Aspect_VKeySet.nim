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

type
  AspectVKeySet* {.importcpp: "Aspect_VKeySet", header: "Aspect_VKeySet.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Main
                                                                                                           ## constructor.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Reset
                                                                                                           ## the
                                                                                                           ## key
                                                                                                           ## state
                                                                                                           ## into
                                                                                                           ## unpressed
                                                                                                           ## state.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Key
                                                                                                           ## state.
    ## !< keys state
    ## !< mutex for thread-safe updates
    ## !< active modifiers

  AspectVKeySetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_VKeySet::get_type_name(@)",
                            header: "Aspect_VKeySet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_VKeySet::get_type_descriptor(@)",
    header: "Aspect_VKeySet.hxx".}
proc dynamicType*(this: AspectVKeySet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_VKeySet.hxx".}
proc constructAspectVKeySet*(): AspectVKeySet {.constructor,
    importcpp: "Aspect_VKeySet(@)", header: "Aspect_VKeySet.hxx".}
proc modifiers*(this: AspectVKeySet): AspectVKeyFlags {.noSideEffect,
    importcpp: "Modifiers", header: "Aspect_VKeySet.hxx".}
proc downTime*(this: AspectVKeySet; theKey: AspectVKey): cdouble {.noSideEffect,
    importcpp: "DownTime", header: "Aspect_VKeySet.hxx".}
proc timeUp*(this: AspectVKeySet; theKey: AspectVKey): cdouble {.noSideEffect,
    importcpp: "TimeUp", header: "Aspect_VKeySet.hxx".}
proc isFreeKey*(this: AspectVKeySet; theKey: AspectVKey): bool {.noSideEffect,
    importcpp: "IsFreeKey", header: "Aspect_VKeySet.hxx".}
proc isKeyDown*(this: AspectVKeySet; theKey: AspectVKey): bool {.noSideEffect,
    importcpp: "IsKeyDown", header: "Aspect_VKeySet.hxx".}
proc mutex*(this: var AspectVKeySet): var StandardMutex {.importcpp: "Mutex",
    header: "Aspect_VKeySet.hxx".}
proc reset*(this: var AspectVKeySet) {.importcpp: "Reset",
                                   header: "Aspect_VKeySet.hxx".}
proc keyDown*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
                                       header: "Aspect_VKeySet.hxx".}
proc keyUp*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "Aspect_VKeySet.hxx".}
proc keyFromAxis*(this: var AspectVKeySet; theNegative: AspectVKey;
                 thePositive: AspectVKey; theTime: cdouble; thePressure: cdouble) {.
    importcpp: "KeyFromAxis", header: "Aspect_VKeySet.hxx".}
proc holdDuration*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
                  theDuration: var cdouble): bool {.importcpp: "HoldDuration",
    header: "Aspect_VKeySet.hxx".}
proc holdDuration*(this: var AspectVKeySet; theKey: AspectVKey; theTime: cdouble;
                  theDuration: var cdouble; thePressure: var cdouble): bool {.
    importcpp: "HoldDuration", header: "Aspect_VKeySet.hxx".}

