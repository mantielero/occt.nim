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

import
  Aspect_VKey, ../NCollection/NCollection_Array1, ../OSD/OSD_Timer,
  ../Standard/Standard_Mutex, ../Standard/Standard_Transient

## ! Structure defining key state.

type
  Aspect_VKeySet* {.importcpp: "Aspect_VKeySet", header: "Aspect_VKeySet.hxx", bycopy.} = object of Standard_Transient ##
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

  Aspect_VKeySetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Aspect_VKeySet::get_type_name(@)",
                              header: "Aspect_VKeySet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_VKeySet::get_type_descriptor(@)",
    header: "Aspect_VKeySet.hxx".}
proc DynamicType*(this: Aspect_VKeySet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_VKeySet.hxx".}
proc constructAspect_VKeySet*(): Aspect_VKeySet {.constructor,
    importcpp: "Aspect_VKeySet(@)", header: "Aspect_VKeySet.hxx".}
proc Modifiers*(this: Aspect_VKeySet): Aspect_VKeyFlags {.noSideEffect,
    importcpp: "Modifiers", header: "Aspect_VKeySet.hxx".}
proc DownTime*(this: Aspect_VKeySet; theKey: Aspect_VKey): cdouble {.noSideEffect,
    importcpp: "DownTime", header: "Aspect_VKeySet.hxx".}
proc TimeUp*(this: Aspect_VKeySet; theKey: Aspect_VKey): cdouble {.noSideEffect,
    importcpp: "TimeUp", header: "Aspect_VKeySet.hxx".}
proc IsFreeKey*(this: Aspect_VKeySet; theKey: Aspect_VKey): bool {.noSideEffect,
    importcpp: "IsFreeKey", header: "Aspect_VKeySet.hxx".}
proc IsKeyDown*(this: Aspect_VKeySet; theKey: Aspect_VKey): bool {.noSideEffect,
    importcpp: "IsKeyDown", header: "Aspect_VKeySet.hxx".}
proc Mutex*(this: var Aspect_VKeySet): var Standard_Mutex {.importcpp: "Mutex",
    header: "Aspect_VKeySet.hxx".}
proc Reset*(this: var Aspect_VKeySet) {.importcpp: "Reset",
                                    header: "Aspect_VKeySet.hxx".}
proc KeyDown*(this: var Aspect_VKeySet; theKey: Aspect_VKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
                                       header: "Aspect_VKeySet.hxx".}
proc KeyUp*(this: var Aspect_VKeySet; theKey: Aspect_VKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "Aspect_VKeySet.hxx".}
proc KeyFromAxis*(this: var Aspect_VKeySet; theNegative: Aspect_VKey;
                 thePositive: Aspect_VKey; theTime: cdouble; thePressure: cdouble) {.
    importcpp: "KeyFromAxis", header: "Aspect_VKeySet.hxx".}
proc HoldDuration*(this: var Aspect_VKeySet; theKey: Aspect_VKey; theTime: cdouble;
                  theDuration: var cdouble): bool {.importcpp: "HoldDuration",
    header: "Aspect_VKeySet.hxx".}
proc HoldDuration*(this: var Aspect_VKeySet; theKey: Aspect_VKey; theTime: cdouble;
                  theDuration: var cdouble; thePressure: var cdouble): bool {.
    importcpp: "HoldDuration", header: "Aspect_VKeySet.hxx".}