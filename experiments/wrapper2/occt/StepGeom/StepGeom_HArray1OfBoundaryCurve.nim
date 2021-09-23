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

import
  StepGeom_BoundaryCurve, StepGeom_Array1OfBoundaryCurve,
  ../NCollection/NCollection_DefineHArray1

type
  StepGeom_HArray1OfBoundaryCurve* {.importcpp: "StepGeom_HArray1OfBoundaryCurve", header: "StepGeom_HArray1OfBoundaryCurve.hxx",
                                    bycopy.} = object of StepGeom_Array1OfBoundaryCurve


proc constructStepGeom_HArray1OfBoundaryCurve*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepGeom_HArray1OfBoundaryCurve {.constructor,
    importcpp: "StepGeom_HArray1OfBoundaryCurve(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc constructStepGeom_HArray1OfBoundaryCurve*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepGeom_HArray1OfBoundaryCurve {.
    constructor, importcpp: "StepGeom_HArray1OfBoundaryCurve(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc constructStepGeom_HArray1OfBoundaryCurve*(
    theOther: StepGeom_Array1OfBoundaryCurve): StepGeom_HArray1OfBoundaryCurve {.
    constructor, importcpp: "StepGeom_HArray1OfBoundaryCurve(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc Array1*(this: StepGeom_HArray1OfBoundaryCurve): StepGeom_Array1OfBoundaryCurve {.
    noSideEffect, importcpp: "Array1",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc ChangeArray1*(this: var StepGeom_HArray1OfBoundaryCurve): var StepGeom_Array1OfBoundaryCurve {.
    importcpp: "ChangeArray1", header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
type
  StepGeom_HArray1OfBoundaryCurvebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepGeom_HArray1OfBoundaryCurve::get_type_name(@)",
                              header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_HArray1OfBoundaryCurve::get_type_descriptor(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc DynamicType*(this: StepGeom_HArray1OfBoundaryCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}