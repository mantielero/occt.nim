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
  StepGeom_PcurveOrSurface, StepGeom_Array1OfPcurveOrSurface,
  ../NCollection/NCollection_DefineHArray1

type
  StepGeom_HArray1OfPcurveOrSurface* {.importcpp: "StepGeom_HArray1OfPcurveOrSurface", header: "StepGeom_HArray1OfPcurveOrSurface.hxx",
                                      bycopy.} = object of StepGeom_Array1OfPcurveOrSurface


proc constructStepGeom_HArray1OfPcurveOrSurface*(theLower: Standard_Integer;
    theUpper: Standard_Integer): StepGeom_HArray1OfPcurveOrSurface {.constructor,
    importcpp: "StepGeom_HArray1OfPcurveOrSurface(@)",
    header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
proc constructStepGeom_HArray1OfPcurveOrSurface*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): StepGeom_HArray1OfPcurveOrSurface {.
    constructor, importcpp: "StepGeom_HArray1OfPcurveOrSurface(@)",
    header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
proc constructStepGeom_HArray1OfPcurveOrSurface*(
    theOther: StepGeom_Array1OfPcurveOrSurface): StepGeom_HArray1OfPcurveOrSurface {.
    constructor, importcpp: "StepGeom_HArray1OfPcurveOrSurface(@)",
    header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
proc Array1*(this: StepGeom_HArray1OfPcurveOrSurface): StepGeom_Array1OfPcurveOrSurface {.
    noSideEffect, importcpp: "Array1",
    header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
proc ChangeArray1*(this: var StepGeom_HArray1OfPcurveOrSurface): var StepGeom_Array1OfPcurveOrSurface {.
    importcpp: "ChangeArray1", header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
type
  StepGeom_HArray1OfPcurveOrSurfacebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepGeom_HArray1OfPcurveOrSurface::get_type_name(@)",
                              header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_HArray1OfPcurveOrSurface::get_type_descriptor(@)",
    header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}
proc DynamicType*(this: StepGeom_HArray1OfPcurveOrSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_HArray1OfPcurveOrSurface.hxx".}