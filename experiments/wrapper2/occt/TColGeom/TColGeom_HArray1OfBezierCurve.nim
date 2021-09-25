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

type
  TColGeomHArray1OfBezierCurve* {.importcpp: "TColGeom_HArray1OfBezierCurve",
                                 header: "TColGeom_HArray1OfBezierCurve.hxx",
                                 bycopy.} = object of TColGeomArray1OfBezierCurve


proc constructTColGeomHArray1OfBezierCurve*(theLower: int; theUpper: int): TColGeomHArray1OfBezierCurve {.
    constructor, importcpp: "TColGeom_HArray1OfBezierCurve(@)",
    header: "TColGeom_HArray1OfBezierCurve.hxx".}
proc constructTColGeomHArray1OfBezierCurve*(theLower: int; theUpper: int;
    theValue: ValueType): TColGeomHArray1OfBezierCurve {.constructor,
    importcpp: "TColGeom_HArray1OfBezierCurve(@)",
    header: "TColGeom_HArray1OfBezierCurve.hxx".}
proc constructTColGeomHArray1OfBezierCurve*(theOther: TColGeomArray1OfBezierCurve): TColGeomHArray1OfBezierCurve {.
    constructor, importcpp: "TColGeom_HArray1OfBezierCurve(@)",
    header: "TColGeom_HArray1OfBezierCurve.hxx".}
proc array1*(this: TColGeomHArray1OfBezierCurve): TColGeomArray1OfBezierCurve {.
    noSideEffect, importcpp: "Array1", header: "TColGeom_HArray1OfBezierCurve.hxx".}
proc changeArray1*(this: var TColGeomHArray1OfBezierCurve): var TColGeomArray1OfBezierCurve {.
    importcpp: "ChangeArray1", header: "TColGeom_HArray1OfBezierCurve.hxx".}
type
  TColGeomHArray1OfBezierCurvebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TColGeom_HArray1OfBezierCurve::get_type_name(@)",
                            header: "TColGeom_HArray1OfBezierCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColGeom_HArray1OfBezierCurve::get_type_descriptor(@)",
    header: "TColGeom_HArray1OfBezierCurve.hxx".}
proc dynamicType*(this: TColGeomHArray1OfBezierCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TColGeom_HArray1OfBezierCurve.hxx".}
