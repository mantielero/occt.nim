##  Created on: 1993-03-24
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Parabola"
type
  HandleGeom2dParabola* = Handle[Geom2dParabola]

## ! Describes a parabola in the plane (2D space).
## ! A parabola is defined by its focal length (i.e. the
## ! distance between its focus and its apex) and is
## ! positioned in the plane with a coordinate system
## ! (gp_Ax22d object) where:
## ! - the origin is the apex of the parabola, and
## ! - the "X Axis" defines the axis of symmetry; the
## ! parabola is on the positive side of this axis.
## ! This coordinate system is the local coordinate
## ! system of the parabola.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! parabola, determining the direction in which the
## ! parameter increases along the parabola.
## ! The Geom_Parabola parabola is parameterized as follows:
## ! P(U) = O + U*U/(4.*F)*XDir + U*YDir, where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - F is the focal length of the parabola.
## ! The parameter of the parabola is therefore its Y
## ! coordinate in the local coordinate system, with the "X
## ! Axis" of the local coordinate system defining the
## ! origin of the parameter.
## ! The parameter range is ] -infinite,+infinite [.

type
  Geom2dParabola* {.importcpp: "Geom2d_Parabola", header: "Geom2d_Parabola.hxx",
                   bycopy.} = object of Geom2dConic ## ! Creates a parabola from a non persistent one.


proc newGeom2dParabola*(prb: Parab2d): Geom2dParabola {.cdecl, constructor,
    importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc newGeom2dParabola*(mirrorAxis: Ax2d; focal: cfloat; sense: bool = true): Geom2dParabola {.
    cdecl, constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc newGeom2dParabola*(axis: Ax22d; focal: cfloat): Geom2dParabola {.cdecl,
    constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc newGeom2dParabola*(d: Ax2d; f: Pnt2d): Geom2dParabola {.cdecl, constructor,
    importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc setFocal*(this: var Geom2dParabola; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "Geom2d_Parabola.hxx".}
proc setParab2d*(this: var Geom2dParabola; prb: Parab2d) {.cdecl,
    importcpp: "SetParab2d", header: "Geom2d_Parabola.hxx".}
proc parab2d*(this: Geom2dParabola): Parab2d {.noSideEffect, cdecl,
    importcpp: "Parab2d", header: "Geom2d_Parabola.hxx".}
proc reversedParameter*(this: Geom2dParabola; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom2d_Parabola.hxx".}
proc firstParameter*(this: Geom2dParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_Parabola.hxx".}
proc lastParameter*(this: Geom2dParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_Parabola.hxx".}
proc isClosed*(this: Geom2dParabola): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_Parabola.hxx".}
proc isPeriodic*(this: Geom2dParabola): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_Parabola.hxx".}
proc directrix*(this: Geom2dParabola): Ax2d {.noSideEffect, cdecl,
    importcpp: "Directrix", header: "Geom2d_Parabola.hxx".}
proc eccentricity*(this: Geom2dParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom2d_Parabola.hxx".}
proc focus*(this: Geom2dParabola): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus",
                                       header: "Geom2d_Parabola.hxx".}
proc focal*(this: Geom2dParabola): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                        header: "Geom2d_Parabola.hxx".}
proc parameter*(this: Geom2dParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom2d_Parabola.hxx".}
proc d0*(this: Geom2dParabola; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_Parabola.hxx".}
proc d1*(this: Geom2dParabola; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_Parabola.hxx".}
proc d2*(this: Geom2dParabola; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_Parabola.hxx".}
proc d3*(this: Geom2dParabola; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_Parabola.hxx".}
proc dn*(this: Geom2dParabola; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_Parabola.hxx".}
proc transform*(this: var Geom2dParabola; t: Trsf2d) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Parabola.hxx".}
proc transformedParameter*(this: Geom2dParabola; u: cfloat; t: Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom2d_Parabola.hxx".}
proc parametricTransformation*(this: Geom2dParabola; t: Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom2d_Parabola.hxx".}
proc copy*(this: Geom2dParabola): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Parabola.hxx".}
proc dumpJson*(this: Geom2dParabola; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Parabola.hxx".}