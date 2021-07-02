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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CurveOnSurface"
discard "forward decl of IGESGeom_CurveOnSurface"
type
  HandleIGESGeomCurveOnSurface* = Handle[IGESGeomCurveOnSurface]

## ! defines IGESCurveOnSurface, Type <142> Form <0>
## ! in package IGESGeom
## ! A curve on a parametric surface entity associates a given
## ! curve with a surface and identifies the curve as lying on
## ! the surface.

type
  IGESGeomCurveOnSurface* {.importcpp: "IGESGeom_CurveOnSurface",
                           header: "IGESGeom_CurveOnSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomCurveOnSurface*(): IGESGeomCurveOnSurface {.constructor,
    importcpp: "IGESGeom_CurveOnSurface(@)", header: "IGESGeom_CurveOnSurface.hxx".}
proc init*(this: var IGESGeomCurveOnSurface; aMode: StandardInteger;
          aSurface: Handle[IGESDataIGESEntity];
          aCurveUV: Handle[IGESDataIGESEntity];
          aCurve3D: Handle[IGESDataIGESEntity]; aPreference: StandardInteger) {.
    importcpp: "Init", header: "IGESGeom_CurveOnSurface.hxx".}
proc creationMode*(this: IGESGeomCurveOnSurface): StandardInteger {.noSideEffect,
    importcpp: "CreationMode", header: "IGESGeom_CurveOnSurface.hxx".}
proc surface*(this: IGESGeomCurveOnSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_CurveOnSurface.hxx".}
proc curveUV*(this: IGESGeomCurveOnSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "CurveUV", header: "IGESGeom_CurveOnSurface.hxx".}
proc curve3D*(this: IGESGeomCurveOnSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Curve3D", header: "IGESGeom_CurveOnSurface.hxx".}
proc preferenceMode*(this: IGESGeomCurveOnSurface): StandardInteger {.noSideEffect,
    importcpp: "PreferenceMode", header: "IGESGeom_CurveOnSurface.hxx".}
type
  IGESGeomCurveOnSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_CurveOnSurface::get_type_name(@)",
                            header: "IGESGeom_CurveOnSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_CurveOnSurface::get_type_descriptor(@)",
    header: "IGESGeom_CurveOnSurface.hxx".}
proc dynamicType*(this: IGESGeomCurveOnSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_CurveOnSurface.hxx".}

