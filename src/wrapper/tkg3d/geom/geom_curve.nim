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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
type
  HandleGeomCurve* {.importcpp:"opencascade::handle<GeomCurve>", header: "Standard_Handle.hxx", bycopy.} = object of RootObj

## ! The abstract class Curve describes the common
## ! behavior of curves in 3D space. The Geom package
## ! provides numerous concrete classes of derived
## ! curves, including lines, circles, conics, Bezier or
## ! BSpline curves, etc.
## ! The main characteristic of these curves is that they
## ! are parameterized. The Geom_Curve class shows:
## ! - how to work with the parametric equation of a curve
## ! in order to calculate the point of parameter u,
## ! together with the vector tangent and the derivative
## ! vectors of order 2, 3,..., N at this point;
## ! - how to obtain general information about the curve
## ! (for example, level of continuity, closed
## ! characteristics, periodicity, bounds of the parameter field);
## ! - how the parameter changes when a geometric
## ! transformation is applied to the curve or when the
## ! orientation of the curve is inverted.
## ! All curves must have a geometric continuity: a curve is
## ! at least "C0". Generally, this property is checked at
## ! the time of construction or when the curve is edited.
## ! Where this is not the case, the documentation states so explicitly.
## ! Warning
## ! The Geom package does not prevent the
## ! construction of curves with null length or curves which
## ! self-intersect.

type
  GeomCurve* {.importcpp: "Geom_Curve", header: "Geom_Curve.hxx", bycopy.} = object of GeomGeometry ##
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


proc reverse*(this: var GeomCurve) {.cdecl, importcpp: "Reverse", dynlib: tkg3d.}
proc reversedParameter*(this: GeomCurve; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkg3d.}
proc transformedParameter*(this: GeomCurve; u: cfloat; t: Trsf): cfloat {.noSideEffect,
    cdecl, importcpp: "TransformedParameter", dynlib: tkg3d.}
proc parametricTransformation*(this: GeomCurve; t: Trsf): cfloat {.noSideEffect, cdecl,
    importcpp: "ParametricTransformation", dynlib: tkg3d.}
proc reversed*(this: GeomCurve): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkg3d.}
proc firstParameter*(this: GeomCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc lastParameter*(this: GeomCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc isClosed*(this: GeomCurve): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                    dynlib: tkg3d.}
proc isPeriodic*(this: GeomCurve): bool {.noSideEffect, cdecl,
                                      importcpp: "IsPeriodic", dynlib: tkg3d.}
proc period*(this: GeomCurve): cfloat {.noSideEffect, cdecl, importcpp: "Period",
                                    dynlib: tkg3d.}
proc continuity*(this: GeomCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc isCN*(this: GeomCurve; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                       dynlib: tkg3d.}
proc d0*(this: GeomCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    dynlib: tkg3d.}
proc d1*(this: GeomCurve; u: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.noSideEffect,
    cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: GeomCurve; u: cfloat; n: cint): Vec {.noSideEffect, cdecl, importcpp: "DN",
    dynlib: tkg3d.}
proc value*(this: GeomCurve; u: cfloat): Pnt {.noSideEffect, cdecl, importcpp: "Value",
    dynlib: tkg3d.}
proc dumpJson*(this: GeomCurve; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkg3d.}