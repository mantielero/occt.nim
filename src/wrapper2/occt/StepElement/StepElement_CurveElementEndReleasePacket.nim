##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepElement_CurveElementFreedom, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of StepElement_CurveElementFreedom"
discard "forward decl of StepElement_CurveElementEndReleasePacket"
discard "forward decl of StepElement_CurveElementEndReleasePacket"
type
  Handle_StepElement_CurveElementEndReleasePacket* = handle[
      StepElement_CurveElementEndReleasePacket]

## ! Representation of STEP entity CurveElementEndReleasePacket

type
  StepElement_CurveElementEndReleasePacket* {.
      importcpp: "StepElement_CurveElementEndReleasePacket",
      header: "StepElement_CurveElementEndReleasePacket.hxx", bycopy.} = object of Standard_Transient ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepElement_CurveElementEndReleasePacket*(): StepElement_CurveElementEndReleasePacket {.
    constructor, importcpp: "StepElement_CurveElementEndReleasePacket(@)",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc Init*(this: var StepElement_CurveElementEndReleasePacket;
          aReleaseFreedom: StepElement_CurveElementFreedom;
          aReleaseStiffness: Standard_Real) {.importcpp: "Init",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc ReleaseFreedom*(this: StepElement_CurveElementEndReleasePacket): StepElement_CurveElementFreedom {.
    noSideEffect, importcpp: "ReleaseFreedom",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc SetReleaseFreedom*(this: var StepElement_CurveElementEndReleasePacket;
                       ReleaseFreedom: StepElement_CurveElementFreedom) {.
    importcpp: "SetReleaseFreedom",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc ReleaseStiffness*(this: StepElement_CurveElementEndReleasePacket): Standard_Real {.
    noSideEffect, importcpp: "ReleaseStiffness",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc SetReleaseStiffness*(this: var StepElement_CurveElementEndReleasePacket;
                         ReleaseStiffness: Standard_Real) {.
    importcpp: "SetReleaseStiffness",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
type
  StepElement_CurveElementEndReleasePacketbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_CurveElementEndReleasePacket::get_type_name(@)", header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_CurveElementEndReleasePacket::get_type_descriptor(@)",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc DynamicType*(this: StepElement_CurveElementEndReleasePacket): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_CurveElementEndReleasePacket.hxx".}