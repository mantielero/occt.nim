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
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_BezierCurve"
type
  HandleGeom2dBezierCurve* = Handle[Geom2dBezierCurve]

## ! Describes a rational or non-rational Bezier curve
## ! - a non-rational Bezier curve is defined by a table
## ! of poles (also called control points),
## ! - a rational Bezier curve is defined by a table of
## ! poles with varying weights.
## ! These data are manipulated by two parallel arrays:
## ! - the poles table, which is an array of gp_Pnt2d points, and
## ! - the weights table, which is an array of reals.
## ! The bounds of these arrays are 1 and "the number of poles" of the curve.
## ! The poles of the curve are "control points" used to deform the curve.
## ! The first pole is the start point of the curve, and the
## ! last pole is the end point of the curve. The segment
## ! which joins the first pole to the second pole is the
## ! tangent to the curve at its start point, and the
## ! segment which joins the last pole to the
## ! second-from-last pole is the tangent to the curve
## ! at its end point.
## ! It is more difficult to give a geometric signification
## ! to the weights but they are useful for providing
## ! exact representations of the arcs of a circle or
## ! ellipse. Moreover, if the weights of all the poles are
## ! equal, the curve is polynomial; it is therefore a
## ! non-rational curve. The non-rational curve is a
## ! special and frequently used case. The weights are
## ! defined and used only in case of a rational curve.
## ! The degree of a Bezier curve is equal to the
## ! number of poles, minus 1. It must be greater than or
## ! equal to 1. However, the degree of a
## ! Geom2d_BezierCurve curve is limited to a value
## ! (25) which is defined and controlled by the system.
## ! This value is returned by the function MaxDegree.
## ! The parameter range for a Bezier curve is [ 0, 1 ].
## ! If the first and last control points of the Bezier
## ! curve are the same point then the curve is closed.
## ! For example, to create a closed Bezier curve with
## ! four control points, you have to give a set of control
## ! points P1, P2, P3 and P1.
## ! The continuity of a Bezier curve is infinite.
## ! It is not possible to build a Bezier curve with
## ! negative weights. We consider that a weight value
## ! is zero if it is less than or equal to
## ! gp::Resolution(). We also consider that
## ! two weight values W1 and W2 are equal if:
## ! |W2 - W1| <= gp::Resolution().
## ! Warning
## ! - When considering the continuity of a closed
## ! Bezier curve at the junction point, remember that
## ! a curve of this type is never periodic. This means
## ! that the derivatives for the parameter u = 0
## ! have no reason to be the same as the
## ! derivatives for the parameter u = 1 even if the curve is closed.
## ! - The length of a Bezier curve can be null.

type
  Geom2dBezierCurve* {.importcpp: "Geom2d_BezierCurve",
                      header: "Geom2d_BezierCurve.hxx", bycopy.} = object of Geom2dBoundedCurve ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## non
                                                                                         ## rational
                                                                                         ## Bezier
                                                                                         ## curve
                                                                                         ## with
                                                                                         ## a
                                                                                         ## set
                                                                                         ## of
                                                                                         ## poles
                                                                                         ## :
                                                                                         ##
                                                                                         ## !
                                                                                         ## CurvePoles.
                                                                                         ## The
                                                                                         ## weights
                                                                                         ## are
                                                                                         ## defaulted
                                                                                         ## to
                                                                                         ## all
                                                                                         ## being
                                                                                         ## 1.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Raises
                                                                                         ## ConstructionError
                                                                                         ## if
                                                                                         ## the
                                                                                         ## number
                                                                                         ## of
                                                                                         ## poles
                                                                                         ## is
                                                                                         ## greater
                                                                                         ## than
                                                                                         ## MaxDegree
                                                                                         ## +
                                                                                         ## 1
                                                                                         ##
                                                                                         ## !
                                                                                         ## or
                                                                                         ## lower
                                                                                         ## than
                                                                                         ## 2.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Set
                                                                                         ## poles
                                                                                         ## to
                                                                                         ## Poles,
                                                                                         ## weights
                                                                                         ## to
                                                                                         ## Weights
                                                                                         ## (not
                                                                                         ##
                                                                                         ## !
                                                                                         ## copied).
                                                                                         ## If
                                                                                         ## Weights
                                                                                         ## is
                                                                                         ## null
                                                                                         ## the
                                                                                         ## curve
                                                                                         ## is
                                                                                         ## non
                                                                                         ##
                                                                                         ## !
                                                                                         ## rational.
                                                                                         ## Create
                                                                                         ## the
                                                                                         ## arrays
                                                                                         ## of
                                                                                         ## coefficients.
                                                                                         ## Poles
                                                                                         ##
                                                                                         ## !
                                                                                         ## and
                                                                                         ## Weights
                                                                                         ## are
                                                                                         ## assumed
                                                                                         ## to
                                                                                         ## have
                                                                                         ## the
                                                                                         ## first
                                                                                         ##
                                                                                         ## !
                                                                                         ## coefficient
                                                                                         ## 1.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## Update
                                                                                         ## rational
                                                                                         ## and
                                                                                         ## closed.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## if
                                                                                         ## nbpoles
                                                                                         ## <
                                                                                         ## 2
                                                                                         ## or
                                                                                         ## nbboles
                                                                                         ## >
                                                                                         ## MaDegree
                                                                                         ## +
                                                                                         ## 1


proc newGeom2dBezierCurve*(curvePoles: TColgpArray1OfPnt2d): Geom2dBezierCurve {.
    cdecl, constructor, importcpp: "Geom2d_BezierCurve(@)", dynlib: tkg2d.}
proc newGeom2dBezierCurve*(curvePoles: TColgpArray1OfPnt2d;
                          poleWeights: TColStdArray1OfReal): Geom2dBezierCurve {.
    cdecl, constructor, importcpp: "Geom2d_BezierCurve(@)", dynlib: tkg2d.}
proc increase*(this: var Geom2dBezierCurve; degree: cint) {.cdecl,
    importcpp: "Increase", dynlib: tkg2d.}
proc insertPoleAfter*(this: var Geom2dBezierCurve; index: cint; p: Pnt2d;
                     weight: cfloat = 1.0) {.cdecl, importcpp: "InsertPoleAfter",
    dynlib: tkg2d.}
proc insertPoleBefore*(this: var Geom2dBezierCurve; index: cint; p: Pnt2d;
                      weight: cfloat = 1.0) {.cdecl, importcpp: "InsertPoleBefore",
    dynlib: tkg2d.}
proc removePole*(this: var Geom2dBezierCurve; index: cint) {.cdecl,
    importcpp: "RemovePole", dynlib: tkg2d.}
proc reverse*(this: var Geom2dBezierCurve) {.cdecl, importcpp: "Reverse", dynlib: tkg2d.}
proc reversedParameter*(this: Geom2dBezierCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", dynlib: tkg2d.}
proc segment*(this: var Geom2dBezierCurve; u1: cfloat; u2: cfloat) {.cdecl,
    importcpp: "Segment", dynlib: tkg2d.}
proc setPole*(this: var Geom2dBezierCurve; index: cint; p: Pnt2d) {.cdecl,
    importcpp: "SetPole", dynlib: tkg2d.}
proc setPole*(this: var Geom2dBezierCurve; index: cint; p: Pnt2d; weight: cfloat) {.cdecl,
    importcpp: "SetPole", dynlib: tkg2d.}
proc setWeight*(this: var Geom2dBezierCurve; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", dynlib: tkg2d.}
proc isClosed*(this: Geom2dBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg2d.}
proc isCN*(this: Geom2dBezierCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", dynlib: tkg2d.}
proc isPeriodic*(this: Geom2dBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg2d.}
proc isRational*(this: Geom2dBezierCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkg2d.}
proc continuity*(this: Geom2dBezierCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg2d.}
proc degree*(this: Geom2dBezierCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", dynlib: tkg2d.}
proc d0*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg2d.}
proc d1*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    cdecl, importcpp: "D1", dynlib: tkg2d.}
proc d2*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg2d.}
proc d3*(this: Geom2dBezierCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkg2d.}
proc dn*(this: Geom2dBezierCurve; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg2d.}
proc endPoint*(this: Geom2dBezierCurve): Pnt2d {.noSideEffect, cdecl,
    importcpp: "EndPoint", dynlib: tkg2d.}
proc firstParameter*(this: Geom2dBezierCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg2d.}
proc lastParameter*(this: Geom2dBezierCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg2d.}
proc nbPoles*(this: Geom2dBezierCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkg2d.}
proc pole*(this: Geom2dBezierCurve; index: cint): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pole", dynlib: tkg2d.}
proc poles*(this: Geom2dBezierCurve; p: var TColgpArray1OfPnt2d) {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkg2d.}
proc poles*(this: Geom2dBezierCurve): TColgpArray1OfPnt2d {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkg2d.}
proc startPoint*(this: Geom2dBezierCurve): Pnt2d {.noSideEffect, cdecl,
    importcpp: "StartPoint", dynlib: tkg2d.}
proc weight*(this: Geom2dBezierCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", dynlib: tkg2d.}
proc weights*(this: Geom2dBezierCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", dynlib: tkg2d.}
proc weights*(this: Geom2dBezierCurve): ptr TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", dynlib: tkg2d.}
proc transform*(this: var Geom2dBezierCurve; t: Trsf2d) {.cdecl,
    importcpp: "Transform", dynlib: tkg2d.}
proc maxDegree*(): cint {.cdecl, importcpp: "Geom2d_BezierCurve::MaxDegree(@)",
                       dynlib: tkg2d.}
proc resolution*(this: var Geom2dBezierCurve; toleranceUV: cfloat;
                uTolerance: var cfloat) {.cdecl, importcpp: "Resolution",
                                       dynlib: tkg2d.}
proc copy*(this: Geom2dBezierCurve): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg2d.}
proc dumpJson*(this: Geom2dBezierCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg2d.}