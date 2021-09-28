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
  StepShapeHArray1OfEdge* {.importcpp: "StepShape_HArray1OfEdge",
                           header: "StepShape_HArray1OfEdge.hxx", bycopy.} = object of StepShapeArray1OfEdge


proc constructStepShapeHArray1OfEdge*(theLower: int; theUpper: int): StepShapeHArray1OfEdge {.
    constructor, importcpp: "StepShape_HArray1OfEdge(@)",
    header: "StepShape_HArray1OfEdge.hxx".}
proc constructStepShapeHArray1OfEdge*(theLower: int; theUpper: int;
                                     theValue: ValueType): StepShapeHArray1OfEdge {.
    constructor, importcpp: "StepShape_HArray1OfEdge(@)",
    header: "StepShape_HArray1OfEdge.hxx".}
proc constructStepShapeHArray1OfEdge*(theOther: StepShapeArray1OfEdge): StepShapeHArray1OfEdge {.
    constructor, importcpp: "StepShape_HArray1OfEdge(@)",
    header: "StepShape_HArray1OfEdge.hxx".}
proc array1*(this: StepShapeHArray1OfEdge): StepShapeArray1OfEdge {.noSideEffect,
    importcpp: "Array1", header: "StepShape_HArray1OfEdge.hxx".}
proc changeArray1*(this: var StepShapeHArray1OfEdge): var StepShapeArray1OfEdge {.
    importcpp: "ChangeArray1", header: "StepShape_HArray1OfEdge.hxx".}
type
  StepShapeHArray1OfEdgebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepShape_HArray1OfEdge::get_type_name(@)",
                            header: "StepShape_HArray1OfEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_HArray1OfEdge::get_type_descriptor(@)",
    header: "StepShape_HArray1OfEdge.hxx".}
proc dynamicType*(this: StepShapeHArray1OfEdge): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_HArray1OfEdge.hxx".}














































