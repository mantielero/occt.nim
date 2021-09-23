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
  StepVisual_DraughtingCalloutElement,
  StepVisual_Array1OfDraughtingCalloutElement,
  ../NCollection/NCollection_DefineHArray1

type
  StepVisual_HArray1OfDraughtingCalloutElement* {.
      importcpp: "StepVisual_HArray1OfDraughtingCalloutElement",
      header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx", bycopy.} = object of StepVisual_Array1OfDraughtingCalloutElement


proc constructStepVisual_HArray1OfDraughtingCalloutElement*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepVisual_HArray1OfDraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_HArray1OfDraughtingCalloutElement(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc constructStepVisual_HArray1OfDraughtingCalloutElement*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepVisual_HArray1OfDraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_HArray1OfDraughtingCalloutElement(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc constructStepVisual_HArray1OfDraughtingCalloutElement*(
    theOther: StepVisual_Array1OfDraughtingCalloutElement): StepVisual_HArray1OfDraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_HArray1OfDraughtingCalloutElement(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc Array1*(this: StepVisual_HArray1OfDraughtingCalloutElement): StepVisual_Array1OfDraughtingCalloutElement {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc ChangeArray1*(this: var StepVisual_HArray1OfDraughtingCalloutElement): var StepVisual_Array1OfDraughtingCalloutElement {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
type
  StepVisual_HArray1OfDraughtingCalloutElementbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepVisual_HArray1OfDraughtingCalloutElement::get_type_name(@)", header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepVisual_HArray1OfDraughtingCalloutElement::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc DynamicType*(this: StepVisual_HArray1OfDraughtingCalloutElement): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}