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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2d_UndefinedDerivative"
discard "forward decl of Geom2d_UndefinedValue"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Curve"
type
  HandleGeom2dCurve* = Handle[Geom2dCurve]

## ! The abstract class Curve describes the common
## ! behavior of curves in 2D space. The Geom2d
## ! package provides numerous concrete classes of
## ! derived curves, including lines, circles, conics, Bezier
## ! or BSpline curves, etc.
## ! The main characteristic of these curves is that they
## ! are parameterized. The Geom2d_Curve class shows:
## ! - how to work with the parametric equation of a
## ! curve in order to calculate the point of parameter
## ! u, together with the vector tangent and the
## ! derivative vectors of order 2, 3,..., N at this point;
## ! - how to obtain general information about the curve
## ! (for example, level of continuity, closed
## ! characteristics, periodicity, bounds of the parameter field);
## ! - how the parameter changes when a geometric
## ! transformation is applied to the curve or when the
## ! orientation of the curve is inverted.
## ! All curves must have a geometric continuity: a curve is
## ! at least "C0". Generally, this property is checked at
## ! the time of construction or when the curve is edited.
## ! Where this is not the case, the documentation
## ! explicitly states so.
## ! Warning
## ! The Geom2d package does not prevent the
## ! construction of curves with null length or curves which
## ! self-intersect.

type
  Geom2dCurve* {.importcpp: "Geom2d_Curve", header: "Geom2d_Curve.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                  ## !
                                                                                                  ## Changes
                                                                                                  ## the
                                                                                                  ## direction
                                                                                                  ## of
                                                                                                  ## parametrization
                                                                                                  ## of
                                                                                                  ## <me>.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## "FirstParameter"
                                                                                                  ## and
                                                                                                  ## the
                                                                                                  ## "LastParameter"
                                                                                                  ## are
                                                                                                  ## not
                                                                                                  ## changed
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## but
                                                                                                  ## the
                                                                                                  ## orientation
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## curve
                                                                                                  ## is
                                                                                                  ## modified.
                                                                                                  ## If
                                                                                                  ## the
                                                                                                  ## curve
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## is
                                                                                                  ## bounded
                                                                                                  ## the
                                                                                                  ## StartPoint
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## initial
                                                                                                  ## curve
                                                                                                  ## becomes
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## EndPoint
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## reversed
                                                                                                  ## curve
                                                                                                  ## and
                                                                                                  ## the
                                                                                                  ## EndPoint
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## initial
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## curve
                                                                                                  ## becomes
                                                                                                  ## the
                                                                                                  ## StartPoint
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## reversed
                                                                                                  ## curve.


proc reverse*(this: var Geom2dCurve) {.cdecl, importcpp: "Reverse", dynlib: tkernel.}
proc reversedParameter*(this: Geom2dCurve; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkernel.}
proc transformedParameter*(this: Geom2dCurve; u: cfloat; t: Trsf2d): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", dynlib: tkernel.}
proc parametricTransformation*(this: Geom2dCurve; t: Trsf2d): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", dynlib: tkernel.}
proc reversed*(this: Geom2dCurve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkernel.}
proc firstParameter*(this: Geom2dCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkernel.}
proc lastParameter*(this: Geom2dCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkernel.}
proc isClosed*(this: Geom2dCurve): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                      dynlib: tkernel.}
proc isPeriodic*(this: Geom2dCurve): bool {.noSideEffect, cdecl,
                                        importcpp: "IsPeriodic", dynlib: tkernel.}
proc period*(this: Geom2dCurve): cfloat {.noSideEffect, cdecl, importcpp: "Period",
                                      dynlib: tkernel.}
proc continuity*(this: Geom2dCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkernel.}
proc isCN*(this: Geom2dCurve; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
    dynlib: tkernel.}
proc d0*(this: Geom2dCurve; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkernel.}
proc d1*(this: Geom2dCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkernel.}
proc d2*(this: Geom2dCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkernel.}
proc d3*(this: Geom2dCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkernel.}
proc dn*(this: Geom2dCurve; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkernel.}
proc value*(this: Geom2dCurve; u: cfloat): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc dumpJson*(this: Geom2dCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}