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
  StepShapeHArray1OfOrientedEdge* {.importcpp: "StepShape_HArray1OfOrientedEdge", header: "StepShape_HArray1OfOrientedEdge.hxx",
                                   bycopy.} = object of StepShapeArray1OfOrientedEdge


proc constructStepShapeHArray1OfOrientedEdge*(theLower: int; theUpper: int): StepShapeHArray1OfOrientedEdge {.
    constructor, importcpp: "StepShape_HArray1OfOrientedEdge(@)",
    header: "StepShape_HArray1OfOrientedEdge.hxx".}
proc constructStepShapeHArray1OfOrientedEdge*(theLower: int; theUpper: int;
    theValue: ValueType): StepShapeHArray1OfOrientedEdge {.constructor,
    importcpp: "StepShape_HArray1OfOrientedEdge(@)",
    header: "StepShape_HArray1OfOrientedEdge.hxx".}
proc constructStepShapeHArray1OfOrientedEdge*(
    theOther: StepShapeArray1OfOrientedEdge): StepShapeHArray1OfOrientedEdge {.
    constructor, importcpp: "StepShape_HArray1OfOrientedEdge(@)",
    header: "StepShape_HArray1OfOrientedEdge.hxx".}
proc array1*(this: StepShapeHArray1OfOrientedEdge): StepShapeArray1OfOrientedEdge {.
    noSideEffect, importcpp: "Array1",
    header: "StepShape_HArray1OfOrientedEdge.hxx".}
proc changeArray1*(this: var StepShapeHArray1OfOrientedEdge): var StepShapeArray1OfOrientedEdge {.
    importcpp: "ChangeArray1", header: "StepShape_HArray1OfOrientedEdge.hxx".}
type
  StepShapeHArray1OfOrientedEdgebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepShape_HArray1OfOrientedEdge::get_type_name(@)",
                            header: "StepShape_HArray1OfOrientedEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_HArray1OfOrientedEdge::get_type_descriptor(@)",
    header: "StepShape_HArray1OfOrientedEdge.hxx".}
proc dynamicType*(this: StepShapeHArray1OfOrientedEdge): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_HArray1OfOrientedEdge.hxx".}
