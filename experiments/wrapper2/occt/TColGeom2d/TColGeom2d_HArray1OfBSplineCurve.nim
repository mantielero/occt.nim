##  Created on: 1993-04-15
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
  ../Geom2d/Geom2d_BSplineCurve, TColGeom2d_Array1OfBSplineCurve,
  ../NCollection/NCollection_DefineHArray1

type
  TColGeom2d_HArray1OfBSplineCurve* {.importcpp: "TColGeom2d_HArray1OfBSplineCurve", header: "TColGeom2d_HArray1OfBSplineCurve.hxx",
                                     bycopy.} = object of TColGeom2d_Array1OfBSplineCurve


proc constructTColGeom2d_HArray1OfBSplineCurve*(theLower: Standard_Integer;
    theUpper: Standard_Integer): TColGeom2d_HArray1OfBSplineCurve {.constructor,
    importcpp: "TColGeom2d_HArray1OfBSplineCurve(@)",
    header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
proc constructTColGeom2d_HArray1OfBSplineCurve*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): TColGeom2d_HArray1OfBSplineCurve {.
    constructor, importcpp: "TColGeom2d_HArray1OfBSplineCurve(@)",
    header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
proc constructTColGeom2d_HArray1OfBSplineCurve*(
    theOther: TColGeom2d_Array1OfBSplineCurve): TColGeom2d_HArray1OfBSplineCurve {.
    constructor, importcpp: "TColGeom2d_HArray1OfBSplineCurve(@)",
    header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
proc Array1*(this: TColGeom2d_HArray1OfBSplineCurve): TColGeom2d_Array1OfBSplineCurve {.
    noSideEffect, importcpp: "Array1",
    header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
proc ChangeArray1*(this: var TColGeom2d_HArray1OfBSplineCurve): var TColGeom2d_Array1OfBSplineCurve {.
    importcpp: "ChangeArray1", header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
type
  TColGeom2d_HArray1OfBSplineCurvebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TColGeom2d_HArray1OfBSplineCurve::get_type_name(@)",
                              header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TColGeom2d_HArray1OfBSplineCurve::get_type_descriptor(@)",
    header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}
proc DynamicType*(this: TColGeom2d_HArray1OfBSplineCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TColGeom2d_HArray1OfBSplineCurve.hxx".}