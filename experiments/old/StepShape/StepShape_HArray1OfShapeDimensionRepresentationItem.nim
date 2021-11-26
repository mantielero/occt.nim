##  Created on: 2015-07-21
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
  StepShapeHArray1OfShapeDimensionRepresentationItem* {.
      importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem",
      header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx", bycopy.} = object of StepShapeArray1OfShapeDimensionRepresentationItem


proc constructStepShapeHArray1OfShapeDimensionRepresentationItem*(theLower: int;
    theUpper: int): StepShapeHArray1OfShapeDimensionRepresentationItem {.
    constructor,
    importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc constructStepShapeHArray1OfShapeDimensionRepresentationItem*(theLower: int;
    theUpper: int; theValue: ValueType): StepShapeHArray1OfShapeDimensionRepresentationItem {.
    constructor,
    importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc constructStepShapeHArray1OfShapeDimensionRepresentationItem*(
    theOther: StepShapeArray1OfShapeDimensionRepresentationItem): StepShapeHArray1OfShapeDimensionRepresentationItem {.
    constructor,
    importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc array1*(this: StepShapeHArray1OfShapeDimensionRepresentationItem): StepShapeArray1OfShapeDimensionRepresentationItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc changeArray1*(this: var StepShapeHArray1OfShapeDimensionRepresentationItem): var StepShapeArray1OfShapeDimensionRepresentationItem {.
    importcpp: "ChangeArray1",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
type
  StepShapeHArray1OfShapeDimensionRepresentationItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem::get_type_name(@)", header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem::get_type_descriptor(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc dynamicType*(this: StepShapeHArray1OfShapeDimensionRepresentationItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}














































