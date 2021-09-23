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

import
  StepRepr_ShapeAspect, StepRepr_Array1OfShapeAspect,
  ../NCollection/NCollection_DefineHArray1

type
  StepRepr_HArray1OfShapeAspect* {.importcpp: "StepRepr_HArray1OfShapeAspect",
                                  header: "StepRepr_HArray1OfShapeAspect.hxx",
                                  bycopy.} = object of StepRepr_Array1OfShapeAspect


proc constructStepRepr_HArray1OfShapeAspect*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepRepr_HArray1OfShapeAspect {.constructor,
    importcpp: "StepRepr_HArray1OfShapeAspect(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc constructStepRepr_HArray1OfShapeAspect*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepRepr_HArray1OfShapeAspect {.
    constructor, importcpp: "StepRepr_HArray1OfShapeAspect(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc constructStepRepr_HArray1OfShapeAspect*(
    theOther: StepRepr_Array1OfShapeAspect): StepRepr_HArray1OfShapeAspect {.
    constructor, importcpp: "StepRepr_HArray1OfShapeAspect(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc Array1*(this: StepRepr_HArray1OfShapeAspect): StepRepr_Array1OfShapeAspect {.
    noSideEffect, importcpp: "Array1", header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc ChangeArray1*(this: var StepRepr_HArray1OfShapeAspect): var StepRepr_Array1OfShapeAspect {.
    importcpp: "ChangeArray1", header: "StepRepr_HArray1OfShapeAspect.hxx".}
type
  StepRepr_HArray1OfShapeAspectbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepRepr_HArray1OfShapeAspect::get_type_name(@)",
                              header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_HArray1OfShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}
proc DynamicType*(this: StepRepr_HArray1OfShapeAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_HArray1OfShapeAspect.hxx".}