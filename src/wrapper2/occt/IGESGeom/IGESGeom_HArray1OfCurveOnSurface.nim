##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  IGESGeom_CurveOnSurface, IGESGeom_Array1OfCurveOnSurface,
  ../NCollection/NCollection_DefineHArray1

type
  IGESGeom_HArray1OfCurveOnSurface* {.importcpp: "IGESGeom_HArray1OfCurveOnSurface", header: "IGESGeom_HArray1OfCurveOnSurface.hxx",
                                     bycopy.} = object of IGESGeom_Array1OfCurveOnSurface


proc constructIGESGeom_HArray1OfCurveOnSurface*(theLower: Standard_Integer;
    theUpper: Standard_Integer): IGESGeom_HArray1OfCurveOnSurface {.constructor,
    importcpp: "IGESGeom_HArray1OfCurveOnSurface(@)",
    header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
proc constructIGESGeom_HArray1OfCurveOnSurface*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): IGESGeom_HArray1OfCurveOnSurface {.
    constructor, importcpp: "IGESGeom_HArray1OfCurveOnSurface(@)",
    header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
proc constructIGESGeom_HArray1OfCurveOnSurface*(
    theOther: IGESGeom_Array1OfCurveOnSurface): IGESGeom_HArray1OfCurveOnSurface {.
    constructor, importcpp: "IGESGeom_HArray1OfCurveOnSurface(@)",
    header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
proc Array1*(this: IGESGeom_HArray1OfCurveOnSurface): IGESGeom_Array1OfCurveOnSurface {.
    noSideEffect, importcpp: "Array1",
    header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
proc ChangeArray1*(this: var IGESGeom_HArray1OfCurveOnSurface): var IGESGeom_Array1OfCurveOnSurface {.
    importcpp: "ChangeArray1", header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
type
  IGESGeom_HArray1OfCurveOnSurfacebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "IGESGeom_HArray1OfCurveOnSurface::get_type_name(@)",
                              header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_HArray1OfCurveOnSurface::get_type_descriptor(@)",
    header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}
proc DynamicType*(this: IGESGeom_HArray1OfCurveOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_HArray1OfCurveOnSurface.hxx".}