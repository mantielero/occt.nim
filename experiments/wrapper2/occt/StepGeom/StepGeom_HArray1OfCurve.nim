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
  StepGeom_Curve, StepGeom_Array1OfCurve, ../NCollection/NCollection_DefineHArray1

type
  StepGeom_HArray1OfCurve* {.importcpp: "StepGeom_HArray1OfCurve",
                            header: "StepGeom_HArray1OfCurve.hxx", bycopy.} = object of StepGeom_Array1OfCurve


proc constructStepGeom_HArray1OfCurve*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): StepGeom_HArray1OfCurve {.
    constructor, importcpp: "StepGeom_HArray1OfCurve(@)",
    header: "StepGeom_HArray1OfCurve.hxx".}
proc constructStepGeom_HArray1OfCurve*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): StepGeom_HArray1OfCurve {.
    constructor, importcpp: "StepGeom_HArray1OfCurve(@)",
    header: "StepGeom_HArray1OfCurve.hxx".}
proc constructStepGeom_HArray1OfCurve*(theOther: StepGeom_Array1OfCurve): StepGeom_HArray1OfCurve {.
    constructor, importcpp: "StepGeom_HArray1OfCurve(@)",
    header: "StepGeom_HArray1OfCurve.hxx".}
proc Array1*(this: StepGeom_HArray1OfCurve): StepGeom_Array1OfCurve {.noSideEffect,
    importcpp: "Array1", header: "StepGeom_HArray1OfCurve.hxx".}
proc ChangeArray1*(this: var StepGeom_HArray1OfCurve): var StepGeom_Array1OfCurve {.
    importcpp: "ChangeArray1", header: "StepGeom_HArray1OfCurve.hxx".}
type
  StepGeom_HArray1OfCurvebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepGeom_HArray1OfCurve::get_type_name(@)",
                              header: "StepGeom_HArray1OfCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_HArray1OfCurve::get_type_descriptor(@)",
    header: "StepGeom_HArray1OfCurve.hxx".}
proc DynamicType*(this: StepGeom_HArray1OfCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_HArray1OfCurve.hxx".}