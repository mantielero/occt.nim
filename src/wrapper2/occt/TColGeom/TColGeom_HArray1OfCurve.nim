##  Created on: 1993-03-09
##  Created by: Philippe DAUTRY
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
  ../Geom/Geom_Curve, TColGeom_Array1OfCurve,
  ../NCollection/NCollection_DefineHArray1

type
  TColGeom_HArray1OfCurve* {.importcpp: "TColGeom_HArray1OfCurve",
                            header: "TColGeom_HArray1OfCurve.hxx", bycopy.} = object of TColGeom_Array1OfCurve


proc constructTColGeom_HArray1OfCurve*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer): TColGeom_HArray1OfCurve {.
    constructor, importcpp: "TColGeom_HArray1OfCurve(@)",
    header: "TColGeom_HArray1OfCurve.hxx".}
proc constructTColGeom_HArray1OfCurve*(theLower: Standard_Integer;
                                      theUpper: Standard_Integer;
                                      theValue: value_type): TColGeom_HArray1OfCurve {.
    constructor, importcpp: "TColGeom_HArray1OfCurve(@)",
    header: "TColGeom_HArray1OfCurve.hxx".}
proc constructTColGeom_HArray1OfCurve*(theOther: TColGeom_Array1OfCurve): TColGeom_HArray1OfCurve {.
    constructor, importcpp: "TColGeom_HArray1OfCurve(@)",
    header: "TColGeom_HArray1OfCurve.hxx".}
proc Array1*(this: TColGeom_HArray1OfCurve): TColGeom_Array1OfCurve {.noSideEffect,
    importcpp: "Array1", header: "TColGeom_HArray1OfCurve.hxx".}
proc ChangeArray1*(this: var TColGeom_HArray1OfCurve): var TColGeom_Array1OfCurve {.
    importcpp: "ChangeArray1", header: "TColGeom_HArray1OfCurve.hxx".}
type
  TColGeom_HArray1OfCurvebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TColGeom_HArray1OfCurve::get_type_name(@)",
                              header: "TColGeom_HArray1OfCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TColGeom_HArray1OfCurve::get_type_descriptor(@)",
    header: "TColGeom_HArray1OfCurve.hxx".}
proc DynamicType*(this: TColGeom_HArray1OfCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TColGeom_HArray1OfCurve.hxx".}