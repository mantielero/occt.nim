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

import
  StepVisual_AnnotationPlaneElement, StepVisual_Array1OfAnnotationPlaneElement,
  ../NCollection/NCollection_DefineHArray1

type
  StepVisual_HArray1OfAnnotationPlaneElement* {.
      importcpp: "StepVisual_HArray1OfAnnotationPlaneElement",
      header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx", bycopy.} = object of StepVisual_Array1OfAnnotationPlaneElement


proc constructStepVisual_HArray1OfAnnotationPlaneElement*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepVisual_HArray1OfAnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_HArray1OfAnnotationPlaneElement(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc constructStepVisual_HArray1OfAnnotationPlaneElement*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepVisual_HArray1OfAnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_HArray1OfAnnotationPlaneElement(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc constructStepVisual_HArray1OfAnnotationPlaneElement*(
    theOther: StepVisual_Array1OfAnnotationPlaneElement): StepVisual_HArray1OfAnnotationPlaneElement {.
    constructor, importcpp: "StepVisual_HArray1OfAnnotationPlaneElement(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc Array1*(this: StepVisual_HArray1OfAnnotationPlaneElement): StepVisual_Array1OfAnnotationPlaneElement {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc ChangeArray1*(this: var StepVisual_HArray1OfAnnotationPlaneElement): var StepVisual_Array1OfAnnotationPlaneElement {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
type
  StepVisual_HArray1OfAnnotationPlaneElementbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepVisual_HArray1OfAnnotationPlaneElement::get_type_name(@)", header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_HArray1OfAnnotationPlaneElement::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}
proc DynamicType*(this: StepVisual_HArray1OfAnnotationPlaneElement): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_HArray1OfAnnotationPlaneElement.hxx".}