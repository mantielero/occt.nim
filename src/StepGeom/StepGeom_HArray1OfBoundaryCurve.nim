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
  StepGeomHArray1OfBoundaryCurve* {.importcpp: "StepGeom_HArray1OfBoundaryCurve", header: "StepGeom_HArray1OfBoundaryCurve.hxx",
                                   bycopy.} = object of StepGeomArray1OfBoundaryCurve


proc constructStepGeomHArray1OfBoundaryCurve*(theLower: int; theUpper: int): StepGeomHArray1OfBoundaryCurve {.
    constructor, importcpp: "StepGeom_HArray1OfBoundaryCurve(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc constructStepGeomHArray1OfBoundaryCurve*(theLower: int; theUpper: int;
    theValue: ValueType): StepGeomHArray1OfBoundaryCurve {.constructor,
    importcpp: "StepGeom_HArray1OfBoundaryCurve(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc constructStepGeomHArray1OfBoundaryCurve*(
    theOther: StepGeomArray1OfBoundaryCurve): StepGeomHArray1OfBoundaryCurve {.
    constructor, importcpp: "StepGeom_HArray1OfBoundaryCurve(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc array1*(this: StepGeomHArray1OfBoundaryCurve): StepGeomArray1OfBoundaryCurve {.
    noSideEffect, importcpp: "Array1",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc changeArray1*(this: var StepGeomHArray1OfBoundaryCurve): var StepGeomArray1OfBoundaryCurve {.
    importcpp: "ChangeArray1", header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
type
  StepGeomHArray1OfBoundaryCurvebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepGeom_HArray1OfBoundaryCurve::get_type_name(@)",
                            header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_HArray1OfBoundaryCurve::get_type_descriptor(@)",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}
proc dynamicType*(this: StepGeomHArray1OfBoundaryCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_HArray1OfBoundaryCurve.hxx".}














































