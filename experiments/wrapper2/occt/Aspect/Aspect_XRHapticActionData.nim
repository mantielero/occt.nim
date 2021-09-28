##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Haptic output XR action data.

type
  AspectXRHapticActionData* {.importcpp: "Aspect_XRHapticActionData",
                             header: "Aspect_XRHapticActionData.hxx", bycopy.} = object
    delay* {.importc: "Delay".}: cfloat ## !< delay in seconds before start
    duration* {.importc: "Duration".}: cfloat ## !< duration in seconds
    frequency* {.importc: "Frequency".}: cfloat ## !< vibration frequency
    amplitude* {.importc: "Amplitude".}: cfloat ## !< vibration amplitude
                                            ## ! Return TRUE if data is not empty.


proc isValid*(this: AspectXRHapticActionData): bool {.noSideEffect,
    importcpp: "IsValid", header: "Aspect_XRHapticActionData.hxx".}
proc constructAspectXRHapticActionData*(): AspectXRHapticActionData {.constructor,
    importcpp: "Aspect_XRHapticActionData(@)",
    header: "Aspect_XRHapticActionData.hxx".}

























