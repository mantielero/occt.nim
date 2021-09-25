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

type
  TColGeom2dHArray1OfCurve* {.importcpp: "TColGeom2d_HArray1OfCurve",
                             header: "TColGeom2d_HArray1OfCurve.hxx", bycopy.} = object of TColGeom2dArray1OfCurve


proc constructTColGeom2dHArray1OfCurve*(theLower: int; theUpper: int): TColGeom2dHArray1OfCurve {.
    constructor, importcpp: "TColGeom2d_HArray1OfCurve(@)",
    header: "TColGeom2d_HArray1OfCurve.hxx".}
proc constructTColGeom2dHArray1OfCurve*(theLower: int; theUpper: int;
                                       theValue: ValueType): TColGeom2dHArray1OfCurve {.
    constructor, importcpp: "TColGeom2d_HArray1OfCurve(@)",
    header: "TColGeom2d_HArray1OfCurve.hxx".}
proc constructTColGeom2dHArray1OfCurve*(theOther: TColGeom2dArray1OfCurve): TColGeom2dHArray1OfCurve {.
    constructor, importcpp: "TColGeom2d_HArray1OfCurve(@)",
    header: "TColGeom2d_HArray1OfCurve.hxx".}
proc array1*(this: TColGeom2dHArray1OfCurve): TColGeom2dArray1OfCurve {.
    noSideEffect, importcpp: "Array1", header: "TColGeom2d_HArray1OfCurve.hxx".}
proc changeArray1*(this: var TColGeom2dHArray1OfCurve): var TColGeom2dArray1OfCurve {.
    importcpp: "ChangeArray1", header: "TColGeom2d_HArray1OfCurve.hxx".}
type
  TColGeom2dHArray1OfCurvebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TColGeom2d_HArray1OfCurve::get_type_name(@)",
                            header: "TColGeom2d_HArray1OfCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColGeom2d_HArray1OfCurve::get_type_descriptor(@)",
    header: "TColGeom2d_HArray1OfCurve.hxx".}
proc dynamicType*(this: TColGeom2dHArray1OfCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TColGeom2d_HArray1OfCurve.hxx".}
