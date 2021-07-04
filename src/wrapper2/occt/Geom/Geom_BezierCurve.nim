##  Created on: 1993-03-09
##  Created by: Philippe DAUTRY
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
  ../TColgp/TColgp_HArray1OfPnt, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Geom_BoundedCurve,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal,
  ../GeomAbs/GeomAbs_Shape, ../BSplCLib/BSplCLib

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BezierCurve"
type
  Handle_Geom_BezierCurve* = handle[Geom_BezierCurve]

## ! Describes a rational or non-rational Bezier curve
## ! - a non-rational Bezier curve is defined by a table of
## ! poles (also called control points),
## ! - a rational Bezier curve is defined by a table of
## ! poles with varying weights.
## ! These data are manipulated by two parallel arrays:
## ! - the poles table, which is an array of gp_Pnt points, and
## ! - the weights table, which is an array of reals.
## ! The bounds of these arrays are 1 and "the number of "poles" of the curve.
## ! The poles of the curve are "control points" used to deform the curve.
## ! The first pole is the start point of the curve, and the
## ! last pole is the end point of the curve. The segment
## ! that joins the first pole to the second pole is the
## ! tangent to the curve at its start point, and the
## ! segment that joins the last pole to the
## ! second-from-last pole is the tangent to the curve at its end point.
## ! It is more difficult to give a geometric signification to
## ! the weights but they are useful for providing the exact
## ! representations of arcs of a circle or ellipse.
## ! Moreover, if the weights of all poles are equal, the
## ! curve is polynomial; it is therefore a non-rational
## ! curve. The non-rational curve is a special and
## ! frequently used case. The weights are defined and
## ! used only in the case of a rational curve.
## ! The degree of a Bezier curve is equal to the number
## ! of poles, minus 1. It must be greater than or equal to
## ! 1. However, the degree of a Geom_BezierCurve
## ! curve is limited to a value (25) which is defined and
## ! controlled by the system. This value is returned by the function MaxDegree.
## ! The parameter range for a Bezier curve is [ 0, 1 ].
## ! If the first and last control points of the Bezier curve
## ! are the same point then the curve is closed. For
## ! example, to create a closed Bezier curve with four
## ! control points, you have to give the set of control
## ! points P1, P2, P3 and P1.
## ! The continuity of a Bezier curve is infinite.
## ! It is not possible to build a Bezier curve with negative
## ! weights. We consider that a weight value is zero if it
## ! is less than or equal to gp::Resolution(). We
## ! also consider that two weight values W1 and W2 are equal if:
## ! |W2 - W1| <= gp::Resolution().
## ! Warning
## ! - When considering the continuity of a closed Bezier
## ! curve at the junction point, remember that a curve
## ! of this type is never periodic. This means that the
## ! derivatives for the parameter u = 0 have no
## ! reason to be the same as the derivatives for the
## ! parameter u = 1 even if the curve is closed.
## ! - The length of a Bezier curve can be null.

type
  Geom_BezierCurve* {.importcpp: "Geom_BezierCurve",
                     header: "Geom_BezierCurve.hxx", bycopy.} = object of Geom_BoundedCurve ##
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


proc constructGeom_BezierCurve*(CurvePoles: TColgp_Array1OfPnt): Geom_BezierCurve {.
    constructor, importcpp: "Geom_BezierCurve(@)", header: "Geom_BezierCurve.hxx".}
proc constructGeom_BezierCurve*(CurvePoles: TColgp_Array1OfPnt;
                               PoleWeights: TColStd_Array1OfReal): Geom_BezierCurve {.
    constructor, importcpp: "Geom_BezierCurve(@)", header: "Geom_BezierCurve.hxx".}
proc Increase*(this: var Geom_BezierCurve; Degree: Standard_Integer) {.
    importcpp: "Increase", header: "Geom_BezierCurve.hxx".}
proc InsertPoleAfter*(this: var Geom_BezierCurve; Index: Standard_Integer; P: gp_Pnt) {.
    importcpp: "InsertPoleAfter", header: "Geom_BezierCurve.hxx".}
proc InsertPoleAfter*(this: var Geom_BezierCurve; Index: Standard_Integer; P: gp_Pnt;
                     Weight: Standard_Real) {.importcpp: "InsertPoleAfter",
    header: "Geom_BezierCurve.hxx".}
proc InsertPoleBefore*(this: var Geom_BezierCurve; Index: Standard_Integer; P: gp_Pnt) {.
    importcpp: "InsertPoleBefore", header: "Geom_BezierCurve.hxx".}
proc InsertPoleBefore*(this: var Geom_BezierCurve; Index: Standard_Integer; P: gp_Pnt;
                      Weight: Standard_Real) {.importcpp: "InsertPoleBefore",
    header: "Geom_BezierCurve.hxx".}
proc RemovePole*(this: var Geom_BezierCurve; Index: Standard_Integer) {.
    importcpp: "RemovePole", header: "Geom_BezierCurve.hxx".}
proc Reverse*(this: var Geom_BezierCurve) {.importcpp: "Reverse",
                                        header: "Geom_BezierCurve.hxx".}
proc ReversedParameter*(this: Geom_BezierCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_BezierCurve.hxx".}
proc Segment*(this: var Geom_BezierCurve; U1: Standard_Real; U2: Standard_Real) {.
    importcpp: "Segment", header: "Geom_BezierCurve.hxx".}
proc SetPole*(this: var Geom_BezierCurve; Index: Standard_Integer; P: gp_Pnt) {.
    importcpp: "SetPole", header: "Geom_BezierCurve.hxx".}
proc SetPole*(this: var Geom_BezierCurve; Index: Standard_Integer; P: gp_Pnt;
             Weight: Standard_Real) {.importcpp: "SetPole",
                                    header: "Geom_BezierCurve.hxx".}
proc SetWeight*(this: var Geom_BezierCurve; Index: Standard_Integer;
               Weight: Standard_Real) {.importcpp: "SetWeight",
                                      header: "Geom_BezierCurve.hxx".}
proc IsClosed*(this: Geom_BezierCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_BezierCurve.hxx".}
proc IsCN*(this: Geom_BezierCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom_BezierCurve.hxx".}
proc IsPeriodic*(this: Geom_BezierCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_BezierCurve.hxx".}
proc IsRational*(this: Geom_BezierCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom_BezierCurve.hxx".}
proc Continuity*(this: Geom_BezierCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BezierCurve.hxx".}
proc Degree*(this: Geom_BezierCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "Geom_BezierCurve.hxx".}
proc D0*(this: Geom_BezierCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_BezierCurve.hxx".}
proc D1*(this: Geom_BezierCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_BezierCurve.hxx".}
proc D2*(this: Geom_BezierCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "Geom_BezierCurve.hxx".}
proc D3*(this: Geom_BezierCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_BezierCurve.hxx".}
proc DN*(this: Geom_BezierCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_BezierCurve.hxx".}
proc StartPoint*(this: Geom_BezierCurve): gp_Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "Geom_BezierCurve.hxx".}
proc EndPoint*(this: Geom_BezierCurve): gp_Pnt {.noSideEffect, importcpp: "EndPoint",
    header: "Geom_BezierCurve.hxx".}
proc FirstParameter*(this: Geom_BezierCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_BezierCurve.hxx".}
proc LastParameter*(this: Geom_BezierCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_BezierCurve.hxx".}
proc NbPoles*(this: Geom_BezierCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "Geom_BezierCurve.hxx".}
proc Pole*(this: Geom_BezierCurve; Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Pole", header: "Geom_BezierCurve.hxx".}
proc Poles*(this: Geom_BezierCurve; P: var TColgp_Array1OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierCurve.hxx".}
proc Poles*(this: Geom_BezierCurve): TColgp_Array1OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierCurve.hxx".}
proc Weight*(this: Geom_BezierCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "Geom_BezierCurve.hxx".}
proc Weights*(this: Geom_BezierCurve; W: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierCurve.hxx".}
proc Weights*(this: Geom_BezierCurve): ptr TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierCurve.hxx".}
proc Transform*(this: var Geom_BezierCurve; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_BezierCurve.hxx".}
proc MaxDegree*(): Standard_Integer {.importcpp: "Geom_BezierCurve::MaxDegree(@)",
                                   header: "Geom_BezierCurve.hxx".}
proc Resolution*(this: var Geom_BezierCurve; Tolerance3D: Standard_Real;
                UTolerance: var Standard_Real) {.importcpp: "Resolution",
    header: "Geom_BezierCurve.hxx".}
proc Copy*(this: Geom_BezierCurve): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BezierCurve.hxx".}
proc DumpJson*(this: Geom_BezierCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_BezierCurve.hxx".}
type
  Geom_BezierCurvebase_type* = Geom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "Geom_BezierCurve::get_type_name(@)",
                              header: "Geom_BezierCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_BezierCurve::get_type_descriptor(@)",
    header: "Geom_BezierCurve.hxx".}
proc DynamicType*(this: Geom_BezierCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BezierCurve.hxx".}