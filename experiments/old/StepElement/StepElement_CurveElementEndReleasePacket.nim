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

discard "forward decl of StepElement_CurveElementFreedom"
discard "forward decl of StepElement_CurveElementEndReleasePacket"
discard "forward decl of StepElement_CurveElementEndReleasePacket"
type
  HandleC1C1* = Handle[StepElementCurveElementEndReleasePacket]

## ! Representation of STEP entity CurveElementEndReleasePacket

type
  StepElementCurveElementEndReleasePacket* {.
      importcpp: "StepElement_CurveElementEndReleasePacket",
      header: "StepElement_CurveElementEndReleasePacket.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepElementCurveElementEndReleasePacket*(): StepElementCurveElementEndReleasePacket {.
    constructor, importcpp: "StepElement_CurveElementEndReleasePacket(@)",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc init*(this: var StepElementCurveElementEndReleasePacket;
          aReleaseFreedom: StepElementCurveElementFreedom;
          aReleaseStiffness: StandardReal) {.importcpp: "Init",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc releaseFreedom*(this: StepElementCurveElementEndReleasePacket): StepElementCurveElementFreedom {.
    noSideEffect, importcpp: "ReleaseFreedom",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc setReleaseFreedom*(this: var StepElementCurveElementEndReleasePacket;
                       releaseFreedom: StepElementCurveElementFreedom) {.
    importcpp: "SetReleaseFreedom",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc releaseStiffness*(this: StepElementCurveElementEndReleasePacket): StandardReal {.
    noSideEffect, importcpp: "ReleaseStiffness",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc setReleaseStiffness*(this: var StepElementCurveElementEndReleasePacket;
                         releaseStiffness: StandardReal) {.
    importcpp: "SetReleaseStiffness",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
type
  StepElementCurveElementEndReleasePacketbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_CurveElementEndReleasePacket::get_type_name(@)", header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_CurveElementEndReleasePacket::get_type_descriptor(@)",
    header: "StepElement_CurveElementEndReleasePacket.hxx".}
proc dynamicType*(this: StepElementCurveElementEndReleasePacket): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_CurveElementEndReleasePacket.hxx".}