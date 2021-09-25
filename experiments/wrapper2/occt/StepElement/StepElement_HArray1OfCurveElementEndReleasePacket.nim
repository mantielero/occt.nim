##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

type
  StepElementHArray1OfCurveElementEndReleasePacket* {.
      importcpp: "StepElement_HArray1OfCurveElementEndReleasePacket",
      header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx", bycopy.} = object of StepElementArray1OfCurveElementEndReleasePacket


proc constructStepElementHArray1OfCurveElementEndReleasePacket*(theLower: int;
    theUpper: int): StepElementHArray1OfCurveElementEndReleasePacket {.constructor,
    importcpp: "StepElement_HArray1OfCurveElementEndReleasePacket(@)",
    header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
proc constructStepElementHArray1OfCurveElementEndReleasePacket*(theLower: int;
    theUpper: int; theValue: ValueType): StepElementHArray1OfCurveElementEndReleasePacket {.
    constructor,
    importcpp: "StepElement_HArray1OfCurveElementEndReleasePacket(@)",
    header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
proc constructStepElementHArray1OfCurveElementEndReleasePacket*(
    theOther: StepElementArray1OfCurveElementEndReleasePacket): StepElementHArray1OfCurveElementEndReleasePacket {.
    constructor,
    importcpp: "StepElement_HArray1OfCurveElementEndReleasePacket(@)",
    header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
proc array1*(this: StepElementHArray1OfCurveElementEndReleasePacket): StepElementArray1OfCurveElementEndReleasePacket {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
proc changeArray1*(this: var StepElementHArray1OfCurveElementEndReleasePacket): var StepElementArray1OfCurveElementEndReleasePacket {.
    importcpp: "ChangeArray1",
    header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
type
  StepElementHArray1OfCurveElementEndReleasePacketbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfCurveElementEndReleasePacket::get_type_name(@)", header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_HArray1OfCurveElementEndReleasePacket::get_type_descriptor(@)",
    header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
proc dynamicType*(this: StepElementHArray1OfCurveElementEndReleasePacket): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepElement_HArray1OfCurveElementEndReleasePacket.hxx".}
