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

## ! Pose input XR action data.

type
  AspectXRPoseActionData* {.importcpp: "Aspect_XRPoseActionData",
                           header: "Aspect_XRPoseActionData.hxx", bycopy.} = object
    pose* {.importc: "Pose".}: AspectTrackedDevicePose ## !< pose state
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 ## !< The origin that caused this action's current state
    isActive* {.importc: "IsActive".}: bool ## !< whether or not this action is currently available to be bound in the active action set
                                        ## ! Empty constructor.


proc newAspectXRPoseActionData*(): AspectXRPoseActionData {.cdecl, constructor,
    importcpp: "Aspect_XRPoseActionData(@)", header: "Aspect_XRPoseActionData.hxx".}