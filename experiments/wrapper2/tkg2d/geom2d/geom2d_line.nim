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

discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Line"
type
  HandleGeom2dLine* = Handle[Geom2dLine]

## ! Describes an infinite line in the plane (2D space).
## ! A line is defined and positioned in the plane with an
## ! axis (gp_Ax2d object) which gives it an origin and a unit vector.
## ! The Geom2d_Line line is parameterized as follows:
## ! P (U) = O + U*Dir
## ! where:
## ! - P is the point of parameter U,
## ! - O is the origin and Dir the unit vector of its positioning axis.
## ! The parameter range is ] -infinite, +infinite [.
## ! The orientation of the line is given by the unit vector
## ! of its positioning axis.
## ! See Also
## ! GCE2d_MakeLine which provides functions for more
## ! complex line constructions
## ! gp_Ax2d
## ! gp_Lin2d for an equivalent, non-parameterized data structure.

type
  Geom2dLine* {.importcpp: "Geom2d_Line", header: "Geom2d_Line.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## line
                                                                                            ## located
                                                                                            ## in
                                                                                            ## 2D
                                                                                            ## space
                                                                                            ## with
                                                                                            ## the
                                                                                            ## axis
                                                                                            ## placement
                                                                                            ## A.
                                                                                            ##
                                                                                            ## !
                                                                                            ## The
                                                                                            ## Location
                                                                                            ## of
                                                                                            ## A
                                                                                            ## is
                                                                                            ## the
                                                                                            ## origin
                                                                                            ## of
                                                                                            ## the
                                                                                            ## line.


proc newGeom2dLine*(a: Ax2d): Geom2dLine {.cdecl, constructor,
                                       importcpp: "Geom2d_Line(@)",
                                       dynlib: tkernel.}
proc newGeom2dLine*(L: Lin2d): Geom2dLine {.cdecl, constructor,
                                        importcpp: "Geom2d_Line(@)",
                                        dynlib: tkernel.}
proc newGeom2dLine*(p: Pnt2d; v: Dir2d): Geom2dLine {.cdecl, constructor,
    importcpp: "Geom2d_Line(@)", dynlib: tkernel.}
proc setLin2d*(this: var Geom2dLine; L: Lin2d) {.cdecl, importcpp: "SetLin2d",
    dynlib: tkernel.}
proc setDirection*(this: var Geom2dLine; v: Dir2d) {.cdecl, importcpp: "SetDirection",
    dynlib: tkernel.}
proc direction*(this: Geom2dLine): Dir2d {.noSideEffect, cdecl,
                                       importcpp: "Direction", dynlib: tkernel.}
proc setLocation*(this: var Geom2dLine; p: Pnt2d) {.cdecl, importcpp: "SetLocation",
    dynlib: tkernel.}
proc location*(this: Geom2dLine): Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                      dynlib: tkernel.}
proc setPosition*(this: var Geom2dLine; a: Ax2d) {.cdecl, importcpp: "SetPosition",
    dynlib: tkernel.}
proc position*(this: Geom2dLine): Ax2d {.noSideEffect, cdecl, importcpp: "Position",
                                     dynlib: tkernel.}
proc lin2d*(this: Geom2dLine): Lin2d {.noSideEffect, cdecl, importcpp: "Lin2d",
                                   dynlib: tkernel.}
proc reverse*(this: var Geom2dLine) {.cdecl, importcpp: "Reverse", dynlib: tkernel.}
proc reversedParameter*(this: Geom2dLine; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkernel.}
proc firstParameter*(this: Geom2dLine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkernel.}
proc lastParameter*(this: Geom2dLine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkernel.}
proc isClosed*(this: Geom2dLine): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                     dynlib: tkernel.}
proc isPeriodic*(this: Geom2dLine): bool {.noSideEffect, cdecl,
                                       importcpp: "IsPeriodic", dynlib: tkernel.}
proc continuity*(this: Geom2dLine): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkernel.}
proc distance*(this: Geom2dLine; p: Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkernel.}
proc isCN*(this: Geom2dLine; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                        dynlib: tkernel.}
proc d0*(this: Geom2dLine; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkernel.}
proc d1*(this: Geom2dLine; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkernel.}
proc d2*(this: Geom2dLine; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkernel.}
proc d3*(this: Geom2dLine; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkernel.}
proc dn*(this: Geom2dLine; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkernel.}
proc transform*(this: var Geom2dLine; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkernel.}
proc transformedParameter*(this: Geom2dLine; u: cfloat; t: Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", dynlib: tkernel.}
proc parametricTransformation*(this: Geom2dLine; t: Trsf2d): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", dynlib: tkernel.}
proc copy*(this: Geom2dLine): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkernel.}
proc dumpJson*(this: Geom2dLine; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkernel.}