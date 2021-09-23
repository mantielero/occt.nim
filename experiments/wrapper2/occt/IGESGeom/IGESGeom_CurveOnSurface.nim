##  Created on: 1993-01-09
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CurveOnSurface"
discard "forward decl of IGESGeom_CurveOnSurface"
type
  Handle_IGESGeom_CurveOnSurface* = handle[IGESGeom_CurveOnSurface]

## ! defines IGESCurveOnSurface, Type <142> Form <0>
## ! in package IGESGeom
## ! A curve on a parametric surface entity associates a given
## ! curve with a surface and identifies the curve as lying on
## ! the surface.

type
  IGESGeom_CurveOnSurface* {.importcpp: "IGESGeom_CurveOnSurface",
                            header: "IGESGeom_CurveOnSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_CurveOnSurface*(): IGESGeom_CurveOnSurface {.constructor,
    importcpp: "IGESGeom_CurveOnSurface(@)", header: "IGESGeom_CurveOnSurface.hxx".}
proc Init*(this: var IGESGeom_CurveOnSurface; aMode: Standard_Integer;
          aSurface: handle[IGESData_IGESEntity];
          aCurveUV: handle[IGESData_IGESEntity];
          aCurve3D: handle[IGESData_IGESEntity]; aPreference: Standard_Integer) {.
    importcpp: "Init", header: "IGESGeom_CurveOnSurface.hxx".}
proc CreationMode*(this: IGESGeom_CurveOnSurface): Standard_Integer {.noSideEffect,
    importcpp: "CreationMode", header: "IGESGeom_CurveOnSurface.hxx".}
proc Surface*(this: IGESGeom_CurveOnSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_CurveOnSurface.hxx".}
proc CurveUV*(this: IGESGeom_CurveOnSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "CurveUV", header: "IGESGeom_CurveOnSurface.hxx".}
proc Curve3D*(this: IGESGeom_CurveOnSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Curve3D", header: "IGESGeom_CurveOnSurface.hxx".}
proc PreferenceMode*(this: IGESGeom_CurveOnSurface): Standard_Integer {.
    noSideEffect, importcpp: "PreferenceMode",
    header: "IGESGeom_CurveOnSurface.hxx".}
type
  IGESGeom_CurveOnSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_CurveOnSurface::get_type_name(@)",
                              header: "IGESGeom_CurveOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_CurveOnSurface::get_type_descriptor(@)",
    header: "IGESGeom_CurveOnSurface.hxx".}
proc DynamicType*(this: IGESGeom_CurveOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_CurveOnSurface.hxx".}