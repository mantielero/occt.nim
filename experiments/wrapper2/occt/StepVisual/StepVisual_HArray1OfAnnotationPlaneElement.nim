##  Created on: 2015-10-29
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  StepVisualHArray1OfAnnotationPlaneElement* {.
      importcpp: "StepVisual_HArray1OfAnnotationPlaneElement",
      header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx", bycopy.} = object of StepVisualArray1OfAnnotationPlaneElement


proc constructStepVisualHArray1OfAnnotationPlaneElement*(theLower: int;
    theUpper: int): StepVisualHArray1OfAnnotationPlaneElement {.constructor,
    importcpp: "StepVisual_HArray1OfAnnotationPlaneElement(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc constructStepVisualHArray1OfAnnotationPlaneElement*(theLower: int;
    theUpper: int; theValue: ValueType): StepVisualHArray1OfAnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_HArray1OfAnnotationPlaneElement(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc constructStepVisualHArray1OfAnnotationPlaneElement*(
    theOther: StepVisualArray1OfAnnotationPlaneElement): StepVisualHArray1OfAnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_HArray1OfAnnotationPlaneElement(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc array1*(this: StepVisualHArray1OfAnnotationPlaneElement): StepVisualArray1OfAnnotationPlaneElement {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfAnnotationPlaneElement): var StepVisualArray1OfAnnotationPlaneElement {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
type
  StepVisualHArray1OfAnnotationPlaneElementbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfAnnotationPlaneElement::get_type_name(@)", header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfAnnotationPlaneElement::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc dynamicType*(this: StepVisualHArray1OfAnnotationPlaneElement): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
