##  Created on: 1993-03-10
##  Created by: JCV
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

discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_SurfaceOfLinearExtrusion"
type
  HandleGeomSurfaceOfLinearExtrusion* = Handle[GeomSurfaceOfLinearExtrusion]

## ! Describes a surface of linear extrusion ("extruded
## ! surface"), e.g. a generalized cylinder. Such a surface
## ! is obtained by sweeping a curve (called the "extruded
## ! curve" or "basis") in a given direction (referred to as
## ! the "direction of extrusion" and defined by a unit vector).
## ! The u parameter is along the extruded curve. The v
## ! parameter is along the direction of extrusion.
## ! The parameter range for the u parameter is defined
## ! by the reference curve.
## ! The parameter range for the v parameter is ] -
## ! infinity, + infinity [.
## ! The position of the curve gives the origin of the v parameter.
## ! The surface is "CN" in the v parametric direction.
## ! The form of a surface of linear extrusion is generally a
## ! ruled surface (GeomAbs_RuledForm). It can be:
## ! - a cylindrical surface, if the extruded curve is a circle,
## ! or a trimmed circle, with an axis parallel to the
## ! direction of extrusion (GeomAbs_CylindricalForm), or
## ! - a planar surface, if the extruded curve is a line
## ! (GeomAbs_PlanarForm).
## ! Note: The surface of extrusion is built from a copy of
## ! the original basis curve, so the original curve is not
## ! modified when the surface is modified.
## ! Warning
## ! Degenerate surfaces are not detected. A degenerate
## ! surface is obtained, for example, when the extruded
## ! curve is a line and the direction of extrusion is parallel
## ! to that line.

type
  GeomSurfaceOfLinearExtrusion* {.importcpp: "Geom_SurfaceOfLinearExtrusion",
                                 header: "Geom_SurfaceOfLinearExtrusion.hxx",
                                 bycopy.} = object of GeomSweptSurface ## ! V is the direction of extrusion.
                                                                  ## ! C is the extruded curve.
                                                                  ## ! The form of a
                                                                  ## SurfaceOfLinearExtrusion can be :
                                                                  ## ! . ruled surface (RuledForm),
                                                                  ## ! . a cylindrical surface if the extruded curve is a circle or
                                                                  ## ! a trimmed circle
                                                                  ## (CylindricalForm),
                                                                  ## ! . a plane surface if the extruded curve is a Line (PlanarForm).
                                                                  ## ! Warnings :
                                                                  ## ! Degenerated surface cases are not detected. For example if the
                                                                  ## ! curve C is a line and V is parallel to the direction of this
                                                                  ## ! line.


proc newGeomSurfaceOfLinearExtrusion*(c: Handle[GeomCurve]; v: DirObj): GeomSurfaceOfLinearExtrusion {.
    cdecl, constructor, importcpp: "Geom_SurfaceOfLinearExtrusion(@)", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc setDirection*(this: var GeomSurfaceOfLinearExtrusion; v: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc setBasisCurve*(this: var GeomSurfaceOfLinearExtrusion; c: Handle[GeomCurve]) {.
    cdecl, importcpp: "SetBasisCurve", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc uReverse*(this: var GeomSurfaceOfLinearExtrusion) {.cdecl,
    importcpp: "UReverse", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc uReversedParameter*(this: GeomSurfaceOfLinearExtrusion; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc vReverse*(this: var GeomSurfaceOfLinearExtrusion) {.cdecl,
    importcpp: "VReverse", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc vReversedParameter*(this: GeomSurfaceOfLinearExtrusion; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc bounds*(this: GeomSurfaceOfLinearExtrusion; u1: var cfloat; u2: var cfloat;
            v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds",
                                        header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc isUClosed*(this: GeomSurfaceOfLinearExtrusion): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc isVClosed*(this: GeomSurfaceOfLinearExtrusion): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc isCNu*(this: GeomSurfaceOfLinearExtrusion; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc isCNv*(this: GeomSurfaceOfLinearExtrusion; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc isUPeriodic*(this: GeomSurfaceOfLinearExtrusion): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc isVPeriodic*(this: GeomSurfaceOfLinearExtrusion): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc uIso*(this: GeomSurfaceOfLinearExtrusion; u: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "UIso", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc vIso*(this: GeomSurfaceOfLinearExtrusion; v: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "VIso", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc d0*(this: GeomSurfaceOfLinearExtrusion; u: cfloat; v: cfloat; p: var PntObj) {.
    noSideEffect, cdecl, importcpp: "D0", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc d1*(this: GeomSurfaceOfLinearExtrusion; u: cfloat; v: cfloat; p: var PntObj;
        d1u: var VecObj; d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc d2*(this: GeomSurfaceOfLinearExtrusion; u: cfloat; v: cfloat; p: var PntObj;
        d1u: var VecObj; d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc d3*(this: GeomSurfaceOfLinearExtrusion; u: cfloat; v: cfloat; p: var PntObj;
        d1u: var VecObj; d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj;
        d3v: var VecObj; d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D3", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc dn*(this: GeomSurfaceOfLinearExtrusion; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc transform*(this: var GeomSurfaceOfLinearExtrusion; t: TrsfObj) {.cdecl,
    importcpp: "Transform", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc transformParameters*(this: GeomSurfaceOfLinearExtrusion; u: var cfloat;
                         v: var cfloat; t: TrsfObj) {.noSideEffect, cdecl,
    importcpp: "TransformParameters", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc parametricTransformation*(this: GeomSurfaceOfLinearExtrusion; t: TrsfObj): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc copy*(this: GeomSurfaceOfLinearExtrusion): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc dumpJson*(this: GeomSurfaceOfLinearExtrusion; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_SurfaceOfLinearExtrusion.hxx".}