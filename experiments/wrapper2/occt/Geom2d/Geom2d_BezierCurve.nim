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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_HArray1OfPnt2d, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Geom2d_BoundedCurve,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../GeomAbs/GeomAbs_Shape, ../BSplCLib/BSplCLib

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_BezierCurve"
discard "forward decl of Geom2d_BezierCurve"
type
  Handle_Geom2d_BezierCurve* = handle[Geom2d_BezierCurve]

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
  Geom2d_BezierCurve* {.importcpp: "Geom2d_BezierCurve",
                       header: "Geom2d_BezierCurve.hxx", bycopy.} = object of Geom2d_BoundedCurve ##
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


proc constructGeom2d_BezierCurve*(CurvePoles: TColgp_Array1OfPnt2d): Geom2d_BezierCurve {.
    constructor, importcpp: "Geom2d_BezierCurve(@)",
    header: "Geom2d_BezierCurve.hxx".}
proc constructGeom2d_BezierCurve*(CurvePoles: TColgp_Array1OfPnt2d;
                                 PoleWeights: TColStd_Array1OfReal): Geom2d_BezierCurve {.
    constructor, importcpp: "Geom2d_BezierCurve(@)",
    header: "Geom2d_BezierCurve.hxx".}
proc Increase*(this: var Geom2d_BezierCurve; Degree: Standard_Integer) {.
    importcpp: "Increase", header: "Geom2d_BezierCurve.hxx".}
proc InsertPoleAfter*(this: var Geom2d_BezierCurve; Index: Standard_Integer;
                     P: gp_Pnt2d; Weight: Standard_Real = 1.0) {.
    importcpp: "InsertPoleAfter", header: "Geom2d_BezierCurve.hxx".}
proc InsertPoleBefore*(this: var Geom2d_BezierCurve; Index: Standard_Integer;
                      P: gp_Pnt2d; Weight: Standard_Real = 1.0) {.
    importcpp: "InsertPoleBefore", header: "Geom2d_BezierCurve.hxx".}
proc RemovePole*(this: var Geom2d_BezierCurve; Index: Standard_Integer) {.
    importcpp: "RemovePole", header: "Geom2d_BezierCurve.hxx".}
proc Reverse*(this: var Geom2d_BezierCurve) {.importcpp: "Reverse",
    header: "Geom2d_BezierCurve.hxx".}
proc ReversedParameter*(this: Geom2d_BezierCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_BezierCurve.hxx".}
proc Segment*(this: var Geom2d_BezierCurve; U1: Standard_Real; U2: Standard_Real) {.
    importcpp: "Segment", header: "Geom2d_BezierCurve.hxx".}
proc SetPole*(this: var Geom2d_BezierCurve; Index: Standard_Integer; P: gp_Pnt2d) {.
    importcpp: "SetPole", header: "Geom2d_BezierCurve.hxx".}
proc SetPole*(this: var Geom2d_BezierCurve; Index: Standard_Integer; P: gp_Pnt2d;
             Weight: Standard_Real) {.importcpp: "SetPole",
                                    header: "Geom2d_BezierCurve.hxx".}
proc SetWeight*(this: var Geom2d_BezierCurve; Index: Standard_Integer;
               Weight: Standard_Real) {.importcpp: "SetWeight",
                                      header: "Geom2d_BezierCurve.hxx".}
proc IsClosed*(this: Geom2d_BezierCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_BezierCurve.hxx".}
proc IsCN*(this: Geom2d_BezierCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom2d_BezierCurve.hxx".}
proc IsPeriodic*(this: Geom2d_BezierCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_BezierCurve.hxx".}
proc IsRational*(this: Geom2d_BezierCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom2d_BezierCurve.hxx".}
proc Continuity*(this: Geom2d_BezierCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_BezierCurve.hxx".}
proc Degree*(this: Geom2d_BezierCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Geom2d_BezierCurve.hxx".}
proc D0*(this: Geom2d_BezierCurve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_BezierCurve.hxx".}
proc D1*(this: Geom2d_BezierCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_BezierCurve.hxx".}
proc D2*(this: Geom2d_BezierCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_BezierCurve.hxx".}
proc D3*(this: Geom2d_BezierCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_BezierCurve.hxx".}
proc DN*(this: Geom2d_BezierCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_BezierCurve.hxx".}
proc EndPoint*(this: Geom2d_BezierCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "Geom2d_BezierCurve.hxx".}
proc FirstParameter*(this: Geom2d_BezierCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_BezierCurve.hxx".}
proc LastParameter*(this: Geom2d_BezierCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_BezierCurve.hxx".}
proc NbPoles*(this: Geom2d_BezierCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Geom2d_BezierCurve.hxx".}
proc Pole*(this: Geom2d_BezierCurve; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Pole", header: "Geom2d_BezierCurve.hxx".}
proc Poles*(this: Geom2d_BezierCurve; P: var TColgp_Array1OfPnt2d) {.noSideEffect,
    importcpp: "Poles", header: "Geom2d_BezierCurve.hxx".}
proc Poles*(this: Geom2d_BezierCurve): TColgp_Array1OfPnt2d {.noSideEffect,
    importcpp: "Poles", header: "Geom2d_BezierCurve.hxx".}
proc StartPoint*(this: Geom2d_BezierCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "Geom2d_BezierCurve.hxx".}
proc Weight*(this: Geom2d_BezierCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "Geom2d_BezierCurve.hxx".}
proc Weights*(this: Geom2d_BezierCurve; W: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom2d_BezierCurve.hxx".}
proc Weights*(this: Geom2d_BezierCurve): ptr TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom2d_BezierCurve.hxx".}
proc Transform*(this: var Geom2d_BezierCurve; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_BezierCurve.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Geom2d_BezierCurve::MaxDegree(@)",
                                   header: "Geom2d_BezierCurve.hxx".}
proc Resolution*(this: var Geom2d_BezierCurve; ToleranceUV: Standard_Real;
                UTolerance: var Standard_Real) {.importcpp: "Resolution",
    header: "Geom2d_BezierCurve.hxx".}
proc Copy*(this: Geom2d_BezierCurve): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_BezierCurve.hxx".}
proc DumpJson*(this: Geom2d_BezierCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_BezierCurve.hxx".}
type
  Geom2d_BezierCurvebase_type* = Geom2d_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "Geom2d_BezierCurve::get_type_name(@)",
                              header: "Geom2d_BezierCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_BezierCurve::get_type_descriptor(@)",
    header: "Geom2d_BezierCurve.hxx".}
proc DynamicType*(this: Geom2d_BezierCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_BezierCurve.hxx".}