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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Parabola"
type
  HandleGeomParabola* = Handle[GeomParabola]

## ! Describes a parabola in 3D space.
## ! A parabola is defined by its focal length (i.e. the
## ! distance between its focus and its apex) and is
## ! positioned in space with a coordinate system
## ! (gp_Ax2 object) where:
## ! - the origin is the apex of the parabola,
## ! - the "X Axis" defines the axis of symmetry; the
## ! parabola is on the positive side of this axis,
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the parabola.
## ! This coordinate system is the local coordinate
## ! system of the parabola.
## ! The "main Direction" of this coordinate system is a
## ! vector normal to the plane of the parabola. The axis,
## ! of which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the parabola.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the parabola,
## ! determining the direction in which the parameter
## ! increases along the parabola.
## ! The Geom_Parabola parabola is parameterized as follows:
## ! P(U) = O + U*U/(4.*F)*XDir + U*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - F is the focal length of the parabola.
## ! The parameter of the parabola is therefore its Y
## ! coordinate in the local coordinate system, with the "X
## ! Axis" of the local coordinate system defining the origin
## ! of the parameter.
## ! The parameter range is ] -infinite, +infinite [.

type
  GeomParabola* {.importcpp: "Geom_Parabola", header: "Geom_Parabola.hxx", bycopy.} = object of GeomConic ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## parabola
                                                                                                ## from
                                                                                                ## a
                                                                                                ## non
                                                                                                ## transient
                                                                                                ## one.


proc newGeomParabola*(prb: Parab): GeomParabola {.cdecl, constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc newGeomParabola*(a2: Ax2; focal: cfloat): GeomParabola {.cdecl, constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc newGeomParabola*(d: Ax1; f: Pnt): GeomParabola {.cdecl, constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc setFocal*(this: var GeomParabola; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "Geom_Parabola.hxx".}
proc setParab*(this: var GeomParabola; prb: Parab) {.cdecl, importcpp: "SetParab",
    header: "Geom_Parabola.hxx".}
proc parab*(this: GeomParabola): Parab {.noSideEffect, cdecl, importcpp: "Parab",
                                     header: "Geom_Parabola.hxx".}
proc reversedParameter*(this: GeomParabola; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Parabola.hxx".}
proc firstParameter*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Parabola.hxx".}
proc lastParameter*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Parabola.hxx".}
proc isClosed*(this: GeomParabola): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                       header: "Geom_Parabola.hxx".}
proc isPeriodic*(this: GeomParabola): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom_Parabola.hxx".}
proc directrix*(this: GeomParabola): Ax1 {.noSideEffect, cdecl,
                                       importcpp: "Directrix", header: "Geom_Parabola.hxx".}
proc eccentricity*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom_Parabola.hxx".}
proc focus*(this: GeomParabola): Pnt {.noSideEffect, cdecl, importcpp: "Focus",
                                   header: "Geom_Parabola.hxx".}
proc focal*(this: GeomParabola): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                      header: "Geom_Parabola.hxx".}
proc parameter*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom_Parabola.hxx".}
proc d0*(this: GeomParabola; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_Parabola.hxx".}
proc d1*(this: GeomParabola; u: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Parabola.hxx".}
proc d2*(this: GeomParabola; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Parabola.hxx".}
proc d3*(this: GeomParabola; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Parabola.hxx".}
proc dn*(this: GeomParabola; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_Parabola.hxx".}
proc transform*(this: var GeomParabola; t: Trsf) {.cdecl, importcpp: "Transform",
    header: "Geom_Parabola.hxx".}
proc transformedParameter*(this: GeomParabola; u: cfloat; t: Trsf): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom_Parabola.hxx".}
proc parametricTransformation*(this: GeomParabola; t: Trsf): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom_Parabola.hxx".}
proc copy*(this: GeomParabola): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Parabola.hxx".}
proc dumpJson*(this: GeomParabola; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Parabola.hxx".}