##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  BRepAdaptor_Curve, BRepAdaptor_Array1OfCurve,
  ../NCollection/NCollection_DefineHArray1

type
  BRepAdaptor_HArray1OfCurve* {.importcpp: "BRepAdaptor_HArray1OfCurve",
                               header: "BRepAdaptor_HArray1OfCurve.hxx", bycopy.} = object of BRepAdaptor_Array1OfCurve


proc constructBRepAdaptor_HArray1OfCurve*(theLower: Standard_Integer;
    theUpper: Standard_Integer): BRepAdaptor_HArray1OfCurve {.constructor,
    importcpp: "BRepAdaptor_HArray1OfCurve(@)",
    header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc constructBRepAdaptor_HArray1OfCurve*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): BRepAdaptor_HArray1OfCurve {.
    constructor, importcpp: "BRepAdaptor_HArray1OfCurve(@)",
    header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc constructBRepAdaptor_HArray1OfCurve*(theOther: BRepAdaptor_Array1OfCurve): BRepAdaptor_HArray1OfCurve {.
    constructor, importcpp: "BRepAdaptor_HArray1OfCurve(@)",
    header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc Array1*(this: BRepAdaptor_HArray1OfCurve): BRepAdaptor_Array1OfCurve {.
    noSideEffect, importcpp: "Array1", header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc ChangeArray1*(this: var BRepAdaptor_HArray1OfCurve): var BRepAdaptor_Array1OfCurve {.
    importcpp: "ChangeArray1", header: "BRepAdaptor_HArray1OfCurve.hxx".}
type
  BRepAdaptor_HArray1OfCurvebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "BRepAdaptor_HArray1OfCurve::get_type_name(@)",
                              header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepAdaptor_HArray1OfCurve::get_type_descriptor(@)",
    header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc DynamicType*(this: BRepAdaptor_HArray1OfCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BRepAdaptor_HArray1OfCurve.hxx".}