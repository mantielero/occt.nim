##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
  StepShapeHArray1OfFaceBound* {.importcpp: "StepShape_HArray1OfFaceBound",
                                header: "StepShape_HArray1OfFaceBound.hxx", bycopy.} = object of StepShapeArray1OfFaceBound


proc constructStepShapeHArray1OfFaceBound*(theLower: int; theUpper: int): StepShapeHArray1OfFaceBound {.
    constructor, importcpp: "StepShape_HArray1OfFaceBound(@)",
    header: "StepShape_HArray1OfFaceBound.hxx".}
proc constructStepShapeHArray1OfFaceBound*(theLower: int; theUpper: int;
    theValue: ValueType): StepShapeHArray1OfFaceBound {.constructor,
    importcpp: "StepShape_HArray1OfFaceBound(@)",
    header: "StepShape_HArray1OfFaceBound.hxx".}
proc constructStepShapeHArray1OfFaceBound*(theOther: StepShapeArray1OfFaceBound): StepShapeHArray1OfFaceBound {.
    constructor, importcpp: "StepShape_HArray1OfFaceBound(@)",
    header: "StepShape_HArray1OfFaceBound.hxx".}
proc array1*(this: StepShapeHArray1OfFaceBound): StepShapeArray1OfFaceBound {.
    noSideEffect, importcpp: "Array1", header: "StepShape_HArray1OfFaceBound.hxx".}
proc changeArray1*(this: var StepShapeHArray1OfFaceBound): var StepShapeArray1OfFaceBound {.
    importcpp: "ChangeArray1", header: "StepShape_HArray1OfFaceBound.hxx".}
type
  StepShapeHArray1OfFaceBoundbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepShape_HArray1OfFaceBound::get_type_name(@)",
                            header: "StepShape_HArray1OfFaceBound.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_HArray1OfFaceBound::get_type_descriptor(@)",
    header: "StepShape_HArray1OfFaceBound.hxx".}
proc dynamicType*(this: StepShapeHArray1OfFaceBound): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_HArray1OfFaceBound.hxx".}














































