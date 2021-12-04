##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Camera rotation mode.

type
  AIS_RotationMode* {.size: sizeof(cint), importcpp: "AIS_RotationMode",
                     header: "AIS_RotationMode.hxx".} = enum
    aIS_RotationModeBndBoxActive, ## !< default OCCT rotation
    aIS_RotationModePickLast, ## !< rotate around last picked point
    aIS_RotationModePickCenter, ## !< rotate around point at the center of window
    aIS_RotationModeCameraAt, ## !< rotate around camera center
    aIS_RotationModeBndBoxScene ## !< rotate around scene center


const
  AIS_RotationModeLOWER* = 0
  AIS_RotationModeUPPER* = aIS_RotationModeBndBoxScene
