##  Created on: 1996-11-21
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of Plate_Plate"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of GeomPlate_Surface"
discard "forward decl of GeomPlate_Surface"
type
  HandleGeomPlateSurface* = Handle[GeomPlateSurface]

## ! Describes the characteristics of plate surface objects
## ! returned by BuildPlateSurface::Surface. These can be
## ! used to verify the quality of the resulting surface before
## ! approximating it to a Geom_BSpline surface generated
## ! by MakeApprox. This proves necessary in cases where
## ! you want to use the resulting surface as the support for
## ! a shape. The algorithmically generated surface cannot
## ! fill this function as is, and as a result must be converted first.

type
  GeomPlateSurface* {.importcpp: "GeomPlate_Surface",
                     header: "GeomPlate_Surface.hxx", bycopy.} = object of GeomSurface


proc constructGeomPlateSurface*(surfinit: Handle[GeomSurface];
                               surfinter: PlatePlate): GeomPlateSurface {.
    constructor, importcpp: "GeomPlate_Surface(@)", header: "GeomPlate_Surface.hxx".}
proc uReverse*(this: var GeomPlateSurface) {.importcpp: "UReverse",
    header: "GeomPlate_Surface.hxx".}
proc uReversedParameter*(this: GeomPlateSurface; u: float): float {.noSideEffect,
    importcpp: "UReversedParameter", header: "GeomPlate_Surface.hxx".}
proc vReverse*(this: var GeomPlateSurface) {.importcpp: "VReverse",
    header: "GeomPlate_Surface.hxx".}
proc vReversedParameter*(this: GeomPlateSurface; v: float): float {.noSideEffect,
    importcpp: "VReversedParameter", header: "GeomPlate_Surface.hxx".}
proc transformParameters*(this: GeomPlateSurface; u: var float; v: var float; t: Trsf) {.
    noSideEffect, importcpp: "TransformParameters", header: "GeomPlate_Surface.hxx".}
proc parametricTransformation*(this: GeomPlateSurface; t: Trsf): GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "GeomPlate_Surface.hxx".}
proc bounds*(this: GeomPlateSurface; u1: var float; u2: var float; v1: var float;
            v2: var float) {.noSideEffect, importcpp: "Bounds",
                          header: "GeomPlate_Surface.hxx".}
proc isUClosed*(this: GeomPlateSurface): bool {.noSideEffect, importcpp: "IsUClosed",
    header: "GeomPlate_Surface.hxx".}
proc isVClosed*(this: GeomPlateSurface): bool {.noSideEffect, importcpp: "IsVClosed",
    header: "GeomPlate_Surface.hxx".}
proc isUPeriodic*(this: GeomPlateSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomPlate_Surface.hxx".}
proc uPeriod*(this: GeomPlateSurface): float {.noSideEffect, importcpp: "UPeriod",
    header: "GeomPlate_Surface.hxx".}
proc isVPeriodic*(this: GeomPlateSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomPlate_Surface.hxx".}
proc vPeriod*(this: GeomPlateSurface): float {.noSideEffect, importcpp: "VPeriod",
    header: "GeomPlate_Surface.hxx".}
proc uIso*(this: GeomPlateSurface; u: float): Handle[GeomCurve] {.noSideEffect,
    importcpp: "UIso", header: "GeomPlate_Surface.hxx".}
proc vIso*(this: GeomPlateSurface; v: float): Handle[GeomCurve] {.noSideEffect,
    importcpp: "VIso", header: "GeomPlate_Surface.hxx".}
proc continuity*(this: GeomPlateSurface): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "GeomPlate_Surface.hxx".}
proc isCNu*(this: GeomPlateSurface; n: int): bool {.noSideEffect, importcpp: "IsCNu",
    header: "GeomPlate_Surface.hxx".}
proc isCNv*(this: GeomPlateSurface; n: int): bool {.noSideEffect, importcpp: "IsCNv",
    header: "GeomPlate_Surface.hxx".}
proc d0*(this: GeomPlateSurface; u: float; v: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomPlate_Surface.hxx".}
proc d1*(this: GeomPlateSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomPlate_Surface.hxx".}
proc d2*(this: GeomPlateSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, importcpp: "D2",
    header: "GeomPlate_Surface.hxx".}
proc d3*(this: GeomPlateSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                       header: "GeomPlate_Surface.hxx".}
proc dn*(this: GeomPlateSurface; u: float; v: float; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "DN", header: "GeomPlate_Surface.hxx".}
proc copy*(this: GeomPlateSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "GeomPlate_Surface.hxx".}
proc transform*(this: var GeomPlateSurface; t: Trsf) {.importcpp: "Transform",
    header: "GeomPlate_Surface.hxx".}
proc callSurfinit*(this: GeomPlateSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "CallSurfinit", header: "GeomPlate_Surface.hxx".}
proc setBounds*(this: var GeomPlateSurface; umin: float; umax: float; vmin: float;
               vmax: float) {.importcpp: "SetBounds",
                            header: "GeomPlate_Surface.hxx".}
proc realBounds*(this: GeomPlateSurface; u1: var float; u2: var float; v1: var float;
                v2: var float) {.noSideEffect, importcpp: "RealBounds",
                              header: "GeomPlate_Surface.hxx".}
proc constraints*(this: GeomPlateSurface; seq: var TColgpSequenceOfXY) {.noSideEffect,
    importcpp: "Constraints", header: "GeomPlate_Surface.hxx".}
type
  GeomPlateSurfacebaseType* = GeomSurface

proc getTypeName*(): cstring {.importcpp: "GeomPlate_Surface::get_type_name(@)",
                            header: "GeomPlate_Surface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomPlate_Surface::get_type_descriptor(@)",
    header: "GeomPlate_Surface.hxx".}
proc dynamicType*(this: GeomPlateSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomPlate_Surface.hxx".}
