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


proc constructGeom2dParabola*(prb: Parab2d): Geom2dParabola {.constructor,
    importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc constructGeom2dParabola*(mirrorAxis: Ax2d; focal: float; sense: bool = true): Geom2dParabola {.
    constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc constructGeom2dParabola*(axis: Ax22d; focal: float): Geom2dParabola {.
    constructor, importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc constructGeom2dParabola*(d: Ax2d; f: Pnt2d): Geom2dParabola {.constructor,
    importcpp: "Geom2d_Parabola(@)", header: "Geom2d_Parabola.hxx".}
proc setFocal*(this: var Geom2dParabola; focal: float) {.importcpp: "SetFocal",
    header: "Geom2d_Parabola.hxx".}
proc setParab2d*(this: var Geom2dParabola; prb: Parab2d) {.importcpp: "SetParab2d",
    header: "Geom2d_Parabola.hxx".}
proc parab2d*(this: Geom2dParabola): Parab2d {.noSideEffect, importcpp: "Parab2d",
    header: "Geom2d_Parabola.hxx".}
proc reversedParameter*(this: Geom2dParabola; u: float): float {.noSideEffect,
    importcpp: "ReversedParameter", header: "Geom2d_Parabola.hxx".}
proc firstParameter*(this: Geom2dParabola): float {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Parabola.hxx".}
proc lastParameter*(this: Geom2dParabola): float {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Parabola.hxx".}
proc isClosed*(this: Geom2dParabola): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Geom2d_Parabola.hxx".}
proc isPeriodic*(this: Geom2dParabola): bool {.noSideEffect, importcpp: "IsPeriodic",
    header: "Geom2d_Parabola.hxx".}
proc directrix*(this: Geom2dParabola): Ax2d {.noSideEffect, importcpp: "Directrix",
    header: "Geom2d_Parabola.hxx".}
proc eccentricity*(this: Geom2dParabola): float {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom2d_Parabola.hxx".}
proc focus*(this: Geom2dParabola): Pnt2d {.noSideEffect, importcpp: "Focus",
                                       header: "Geom2d_Parabola.hxx".}
proc focal*(this: Geom2dParabola): float {.noSideEffect, importcpp: "Focal",
                                       header: "Geom2d_Parabola.hxx".}
proc parameter*(this: Geom2dParabola): float {.noSideEffect, importcpp: "Parameter",
    header: "Geom2d_Parabola.hxx".}
proc d0*(this: Geom2dParabola; u: float; p: var Pnt2d) {.noSideEffect, importcpp: "D0",
    header: "Geom2d_Parabola.hxx".}
proc d1*(this: Geom2dParabola; u: float; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Geom2d_Parabola.hxx".}
proc d2*(this: Geom2dParabola; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Geom2d_Parabola.hxx".}
proc d3*(this: Geom2dParabola; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3", header: "Geom2d_Parabola.hxx".}
proc dn*(this: Geom2dParabola; u: float; n: int): Vec2d {.noSideEffect, importcpp: "DN",
    header: "Geom2d_Parabola.hxx".}
proc transform*(this: var Geom2dParabola; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_Parabola.hxx".}
proc transformedParameter*(this: Geom2dParabola; u: float; t: Trsf2d): float {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom2d_Parabola.hxx".}
proc parametricTransformation*(this: Geom2dParabola; t: Trsf2d): float {.noSideEffect,
    importcpp: "ParametricTransformation", header: "Geom2d_Parabola.hxx".}
proc copy*(this: Geom2dParabola): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Parabola.hxx".}
proc dumpJson*(this: Geom2dParabola; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_Parabola.hxx".}
type
  Geom2dParabolabaseType* = Geom2dConic

proc getTypeName*(): cstring {.importcpp: "Geom2d_Parabola::get_type_name(@)",
                            header: "Geom2d_Parabola.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Parabola::get_type_descriptor(@)",
    header: "Geom2d_Parabola.hxx".}
proc dynamicType*(this: Geom2dParabola): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Parabola.hxx".}
