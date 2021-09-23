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

import
  ../Standard/Standard_Real

## ! Walking translation components.

type
  AIS_WalkTranslation* {.size: sizeof(cint), importcpp: "AIS_WalkTranslation",
                        header: "AIS_WalkDelta.hxx".} = enum
    AIS_WalkTranslation_Forward = 0, ## !< translation delta, Forward walk
    AIS_WalkTranslation_Side, ## !< translation delta, Side walk
    AIS_WalkTranslation_Up    ## !< translation delta, Up walk


## ! Walking rotation components.

type
  AIS_WalkRotation* {.size: sizeof(cint), importcpp: "AIS_WalkRotation",
                     header: "AIS_WalkDelta.hxx".} = enum
    AIS_WalkRotation_Yaw = 0,   ## !< yaw   rotation angle
    AIS_WalkRotation_Pitch,   ## !< pitch rotation angle
    AIS_WalkRotation_Roll     ## !< roll  rotation angle


## ! Walking value.

type
  AIS_WalkPart* {.importcpp: "AIS_WalkPart", header: "AIS_WalkDelta.hxx", bycopy.} = object
    Value* {.importc: "Value".}: Standard_Real ## !< value
    Pressure* {.importc: "Pressure".}: Standard_Real ## !< key pressure
    Duration* {.importc: "Duration".}: Standard_Real ## !< duration
                                                 ## ! Return TRUE if delta is empty.


proc IsEmpty*(this: AIS_WalkPart): bool {.noSideEffect, importcpp: "IsEmpty",
                                      header: "AIS_WalkDelta.hxx".}
proc constructAIS_WalkPart*(): AIS_WalkPart {.constructor,
    importcpp: "AIS_WalkPart(@)", header: "AIS_WalkDelta.hxx".}
## ! Walking values.

type
  AIS_WalkDelta* {.importcpp: "AIS_WalkDelta", header: "AIS_WalkDelta.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.


proc constructAIS_WalkDelta*(): AIS_WalkDelta {.constructor,
    importcpp: "AIS_WalkDelta(@)", header: "AIS_WalkDelta.hxx".}
proc `[]`*(this: AIS_WalkDelta; thePart: AIS_WalkTranslation): AIS_WalkPart {.
    noSideEffect, importcpp: "#[@]", header: "AIS_WalkDelta.hxx".}
proc `[]`*(this: var AIS_WalkDelta; thePart: AIS_WalkTranslation): var AIS_WalkPart {.
    importcpp: "#[@]", header: "AIS_WalkDelta.hxx".}
proc `[]`*(this: AIS_WalkDelta; thePart: AIS_WalkRotation): AIS_WalkPart {.
    noSideEffect, importcpp: "#[@]", header: "AIS_WalkDelta.hxx".}
proc `[]`*(this: var AIS_WalkDelta; thePart: AIS_WalkRotation): var AIS_WalkPart {.
    importcpp: "#[@]", header: "AIS_WalkDelta.hxx".}
proc IsJumping*(this: AIS_WalkDelta): bool {.noSideEffect, importcpp: "IsJumping",
    header: "AIS_WalkDelta.hxx".}
proc SetJumping*(this: var AIS_WalkDelta; theIsJumping: bool) {.
    importcpp: "SetJumping", header: "AIS_WalkDelta.hxx".}
proc IsCrouching*(this: AIS_WalkDelta): bool {.noSideEffect,
    importcpp: "IsCrouching", header: "AIS_WalkDelta.hxx".}
proc SetCrouching*(this: var AIS_WalkDelta; theIsCrouching: bool) {.
    importcpp: "SetCrouching", header: "AIS_WalkDelta.hxx".}
proc IsRunning*(this: AIS_WalkDelta): bool {.noSideEffect, importcpp: "IsRunning",
    header: "AIS_WalkDelta.hxx".}
proc SetRunning*(this: var AIS_WalkDelta; theIsRunning: bool) {.
    importcpp: "SetRunning", header: "AIS_WalkDelta.hxx".}
proc IsEmpty*(this: AIS_WalkDelta): bool {.noSideEffect, importcpp: "IsEmpty",
                                       header: "AIS_WalkDelta.hxx".}
proc ToMove*(this: AIS_WalkDelta): bool {.noSideEffect, importcpp: "ToMove",
                                      header: "AIS_WalkDelta.hxx".}
proc ToRotate*(this: AIS_WalkDelta): bool {.noSideEffect, importcpp: "ToRotate",
                                        header: "AIS_WalkDelta.hxx".}