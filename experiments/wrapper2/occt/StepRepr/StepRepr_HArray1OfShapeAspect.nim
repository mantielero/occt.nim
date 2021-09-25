##  Created on: 2015-07-13
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
  StepReprHArray1OfShapeAspect* {.importcpp: "StepRepr_HArray1OfShapeAspect",
                                 header: "StepRepr_HArray1OfShapeAspect.hxx",
                                 bycopy.} = object of StepReprArray1OfShapeAspect


proc constructStepReprHArray1OfShapeAspect*(theLower: int; theUpper: int): StepReprHArray1OfShapeAspect {.
    constructor, importcpp: "StepRepr_HArray1OfShapeAspect(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc constructStepReprHArray1OfShapeAspect*(theLower: int; theUpper: int;
    theValue: ValueType): StepReprHArray1OfShapeAspect {.constructor,
    importcpp: "StepRepr_HArray1OfShapeAspect(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc constructStepReprHArray1OfShapeAspect*(theOther: StepReprArray1OfShapeAspect): StepReprHArray1OfShapeAspect {.
    constructor, importcpp: "StepRepr_HArray1OfShapeAspect(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc array1*(this: StepReprHArray1OfShapeAspect): StepReprArray1OfShapeAspect {.
    noSideEffect, importcpp: "Array1", header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc changeArray1*(this: var StepReprHArray1OfShapeAspect): var StepReprArray1OfShapeAspect {.
    importcpp: "ChangeArray1", header: "StepRepr_HArray1OfShapeAspect.hxx".}
type
  StepReprHArray1OfShapeAspectbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepRepr_HArray1OfShapeAspect::get_type_name(@)",
                            header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_HArray1OfShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc dynamicType*(this: StepReprHArray1OfShapeAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
