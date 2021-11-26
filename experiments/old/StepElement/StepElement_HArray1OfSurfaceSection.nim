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
  StepElementHArray1OfSurfaceSection* {.importcpp: "StepElement_HArray1OfSurfaceSection", header: "StepElement_HArray1OfSurfaceSection.hxx",
                                       bycopy.} = object of StepElementArray1OfSurfaceSection


proc constructStepElementHArray1OfSurfaceSection*(theLower: int; theUpper: int): StepElementHArray1OfSurfaceSection {.
    constructor, importcpp: "StepElement_HArray1OfSurfaceSection(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc constructStepElementHArray1OfSurfaceSection*(theLower: int; theUpper: int;
    theValue: ValueType): StepElementHArray1OfSurfaceSection {.constructor,
    importcpp: "StepElement_HArray1OfSurfaceSection(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc constructStepElementHArray1OfSurfaceSection*(
    theOther: StepElementArray1OfSurfaceSection): StepElementHArray1OfSurfaceSection {.
    constructor, importcpp: "StepElement_HArray1OfSurfaceSection(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc array1*(this: StepElementHArray1OfSurfaceSection): StepElementArray1OfSurfaceSection {.
    noSideEffect, importcpp: "Array1",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc changeArray1*(this: var StepElementHArray1OfSurfaceSection): var StepElementArray1OfSurfaceSection {.
    importcpp: "ChangeArray1", header: "StepElement_HArray1OfSurfaceSection.hxx".}
type
  StepElementHArray1OfSurfaceSectionbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepElement_HArray1OfSurfaceSection::get_type_name(@)",
                            header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_HArray1OfSurfaceSection::get_type_descriptor(@)",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}
proc dynamicType*(this: StepElementHArray1OfSurfaceSection): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_HArray1OfSurfaceSection.hxx".}














































