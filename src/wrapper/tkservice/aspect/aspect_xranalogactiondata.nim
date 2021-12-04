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

## ! Analog input XR action data.

type
  AspectXRAnalogActionData* {.importcpp: "Aspect_XRAnalogActionData",
                             header: "Aspect_XRAnalogActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64T ## !< The origin that caused this action's current state
    updateTime* {.importc: "UpdateTime".}: cfloat ## !< Time relative to now when this event happened. Will be negative to indicate a past time
    vecXYZ* {.importc: "VecXYZ".}: NCollectionVec3[cfloat] ## !< the current state of this action
    deltaXYZ* {.importc: "DeltaXYZ".}: NCollectionVec3[cfloat] ## !< deltas since the previous update
    isActive* {.importc: "IsActive".}: bool ## !< whether or not this action is currently available to be bound in the active action set
                                        ## ! Return TRUE if delta is non-zero.


proc isChanged*(this: var AspectXRAnalogActionData): bool {.cdecl,
    importcpp: "IsChanged", header: "Aspect_XRAnalogActionData.hxx".}
proc newAspectXRAnalogActionData*(): AspectXRAnalogActionData {.cdecl, constructor,
    importcpp: "Aspect_XRAnalogActionData(@)", header: "Aspect_XRAnalogActionData.hxx".}