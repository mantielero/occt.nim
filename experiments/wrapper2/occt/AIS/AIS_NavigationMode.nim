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

## ! Camera navigation mode.

type
  AIS_NavigationMode* {.size: sizeof(cint), importcpp: "AIS_NavigationMode",
                       header: "AIS_NavigationMode.hxx".} = enum
    AIS_NavigationMode_Orbit, ## !< orbit rotation
    AIS_NavigationMode_FirstPersonFlight, ## !< flight rotation (first person)
    AIS_NavigationMode_FirstPersonWalk ## !< walking mode (first person)


const
  AIS_NavigationMode_LOWER* = 0
  AIS_NavigationMode_UPPER* = AIS_NavigationMode_FirstPersonWalk
