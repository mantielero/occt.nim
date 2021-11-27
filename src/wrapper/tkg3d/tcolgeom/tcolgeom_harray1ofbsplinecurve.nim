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
  TColGeomHArray1OfBSplineCurve* {.importcpp: "TColGeom_HArray1OfBSplineCurve",
                                  header: "TColGeom_HArray1OfBSplineCurve.hxx",
                                  bycopy.} = object of TColGeomArray1OfBSplineCurve


proc newTColGeomHArray1OfBSplineCurve*(theLower: cint; theUpper: cint): TColGeomHArray1OfBSplineCurve {.
    cdecl, constructor, importcpp: "TColGeom_HArray1OfBSplineCurve(@)",
    dynlib: tkg3d.}
proc newTColGeomHArray1OfBSplineCurve*(theLower: cint; theUpper: cint;
                                      theValue: ValueType): TColGeomHArray1OfBSplineCurve {.
    cdecl, constructor, importcpp: "TColGeom_HArray1OfBSplineCurve(@)",
    dynlib: tkg3d.}
proc newTColGeomHArray1OfBSplineCurve*(theOther: TColGeomArray1OfBSplineCurve): TColGeomHArray1OfBSplineCurve {.
    cdecl, constructor, importcpp: "TColGeom_HArray1OfBSplineCurve(@)",
    dynlib: tkg3d.}
proc array1*(this: TColGeomHArray1OfBSplineCurve): TColGeomArray1OfBSplineCurve {.
    noSideEffect, cdecl, importcpp: "Array1", dynlib: tkg3d.}