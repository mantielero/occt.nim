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

## ! Describes a single pose for a tracked object (for XR).

type
  AspectTrackedDevicePose* {.importcpp: "Aspect_TrackedDevicePose",
                            header: "Aspect_TrackedDevicePose.hxx", bycopy.} = object
    orientation* {.importc: "Orientation".}: Trsf ## !< device to absolute transformation
    velocity* {.importc: "Velocity".}: Vec ## !< velocity in tracker space in m/s
    angularVelocity* {.importc: "AngularVelocity".}: Vec ## !< angular velocity in radians/s
    isValidPose* {.importc: "IsValidPose".}: bool ## !< indicates valid pose
    isConnectedDevice* {.importc: "IsConnectedDevice".}: bool ## !< indicates connected state
                                                          ## ! Empty constructor.


proc newAspectTrackedDevicePose*(): AspectTrackedDevicePose {.cdecl, constructor,
    importcpp: "Aspect_TrackedDevicePose(@)", header: "Aspect_TrackedDevicePose.hxx".}
## ! Array of tracked poses.

type
  AspectTrackedDevicePoseArray* = NCollectionArray1[AspectTrackedDevicePose]
