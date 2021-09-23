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

import
  StepShape_ShapeDimensionRepresentationItem,
  StepShape_Array1OfShapeDimensionRepresentationItem,
  ../NCollection/NCollection_DefineHArray1

type
  StepShape_HArray1OfShapeDimensionRepresentationItem* {.
      importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem",
      header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx", bycopy.} = object of StepShape_Array1OfShapeDimensionRepresentationItem


proc constructStepShape_HArray1OfShapeDimensionRepresentationItem*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepShape_HArray1OfShapeDimensionRepresentationItem {.
    constructor,
    importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc constructStepShape_HArray1OfShapeDimensionRepresentationItem*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepShape_HArray1OfShapeDimensionRepresentationItem {.
    constructor,
    importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc constructStepShape_HArray1OfShapeDimensionRepresentationItem*(
    theOther: StepShape_Array1OfShapeDimensionRepresentationItem): StepShape_HArray1OfShapeDimensionRepresentationItem {.
    constructor,
    importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc Array1*(this: StepShape_HArray1OfShapeDimensionRepresentationItem): StepShape_Array1OfShapeDimensionRepresentationItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc ChangeArray1*(this: var StepShape_HArray1OfShapeDimensionRepresentationItem): var StepShape_Array1OfShapeDimensionRepresentationItem {.
    importcpp: "ChangeArray1",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
type
  StepShape_HArray1OfShapeDimensionRepresentationItembase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem::get_type_name(@)", header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepShape_HArray1OfShapeDimensionRepresentationItem::get_type_descriptor(@)",
    header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}
proc DynamicType*(this: StepShape_HArray1OfShapeDimensionRepresentationItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepShape_HArray1OfShapeDimensionRepresentationItem.hxx".}