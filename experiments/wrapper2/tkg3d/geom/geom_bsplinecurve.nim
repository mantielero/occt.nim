##  Created on: 1993-03-09
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
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_BSplineCurve"
type
  HandleGeomBSplineCurve* = Handle[GeomBSplineCurve]

## ! Definition of the B_spline curve.
## ! A B-spline curve can be
## ! Uniform  or non-uniform
## ! Rational or non-rational
## ! Periodic or non-periodic
## !
## ! a b-spline curve is defined by :
## ! its degree; the degree for a
## ! Geom_BSplineCurve is limited to a value (25)
## ! which is defined and controlled by the system.
## ! This value is returned by the function MaxDegree;
## ! - its periodic or non-periodic nature;
## ! - a table of poles (also called control points), with
## ! their associated weights if the BSpline curve is
## ! rational. The poles of the curve are "control
## ! points" used to deform the curve. If the curve is
## ! non-periodic, the first pole is the start point of
## ! the curve, and the last pole is the end point of
## ! the curve. The segment which joins the first pole
## ! to the second pole is the tangent to the curve at
## ! its start point, and the segment which joins the
## ! last pole to the second-from-last pole is the
## ! tangent to the curve at its end point. If the curve
## ! is periodic, these geometric properties are not
## ! verified. It is more difficult to give a geometric
## ! signification to the weights but are useful for
## ! providing exact representations of the arcs of a
## ! circle or ellipse. Moreover, if the weights of all the
## ! poles are equal, the curve has a polynomial
## ! equation; it is therefore a non-rational curve.
## ! - a table of knots with their multiplicities. For a
## ! Geom_BSplineCurve, the table of knots is an
## ! increasing sequence of reals without repetition;
## ! the multiplicities define the repetition of the knots.
## ! A BSpline curve is a piecewise polynomial or
## ! rational curve. The knots are the parameters of
## ! junction points between two pieces. The
## ! multiplicity Mult(i) of the knot Knot(i) of
## ! the BSpline curve is related to the degree of
## ! continuity of the curve at the knot Knot(i),
## ! which is equal to Degree - Mult(i)
## ! where Degree is the degree of the BSpline curve.
## ! If the knots are regularly spaced (i.e. the difference
## ! between two consecutive knots is a constant), three
## ! specific and frequently used cases of knot
## ! distribution can be identified:
## ! - "uniform" if all multiplicities are equal to 1,
## ! - "quasi-uniform" if all multiplicities are equal to 1,
## ! except the first and the last knot which have a
## ! multiplicity of Degree + 1, where Degree is
## ! the degree of the BSpline curve,
## ! - "Piecewise Bezier" if all multiplicities are equal to
## ! Degree except the first and last knot which
## ! have a multiplicity of Degree + 1, where
## ! Degree is the degree of the BSpline curve. A
## ! curve of this type is a concatenation of arcs of Bezier curves.
## ! If the BSpline curve is not periodic:
## ! - the bounds of the Poles and Weights tables are 1
## ! and NbPoles, where NbPoles is the number
## ! of poles of the BSpline curve,
## ! - the bounds of the Knots and Multiplicities tables
## ! are 1 and NbKnots, where NbKnots is the
## ! number of knots of the BSpline curve.
## ! If the BSpline curve is periodic, and if there are k
## ! periodic knots and p periodic poles, the period is:
## ! period = Knot(k + 1) - Knot(1)
## ! and the poles and knots tables can be considered
## ! as infinite tables, verifying:
## ! - Knot(i+k) = Knot(i) + period
## ! - Pole(i+p) = Pole(i)
## ! Note: data structures of a periodic BSpline curve
## ! are more complex than those of a non-periodic one.
## ! Warning
## ! In this class, weight value is considered to be zero if
## ! the weight is less than or equal to gp::Resolution().
## !
## ! References :
## ! . A survey of curve and surface methods in CADG Wolfgang BOHM
## ! CAGD 1 (1984)
## ! . On de Boor-like algorithms and blossoming Wolfgang BOEHM
## ! cagd 5 (1988)
## ! . Blossoming and knot insertion algorithms for B-spline curves
## ! Ronald N. GOLDMAN
## ! . Modelisation des surfaces en CAO, Henri GIAUME Peugeot SA
## ! . Curves and Surfaces for Computer Aided Geometric Design,
## ! a practical guide Gerald Farin

type
  GeomBSplineCurve* {.importcpp: "Geom_BSplineCurve",
                     header: "Geom_BSplineCurve.hxx", bycopy.} = object of GeomBoundedCurve ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## a
                                                                                     ## non-rational
                                                                                     ## B_spline
                                                                                     ## curve
                                                                                     ## on
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## basis
                                                                                     ## <Knots,
                                                                                     ## Multiplicities>
                                                                                     ## of
                                                                                     ## degree
                                                                                     ## <Degree>.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Recompute
                                                                                     ## the
                                                                                     ## flatknots,
                                                                                     ## the
                                                                                     ## knotsdistribution,
                                                                                     ## the
                                                                                     ## continuity.


proc newGeomBSplineCurve*(poles: TColgpArray1OfPnt; knots: TColStdArray1OfReal;
                         multiplicities: TColStdArray1OfInteger; degree: cint;
                         periodic: bool = false): GeomBSplineCurve {.cdecl,
    constructor, importcpp: "Geom_BSplineCurve(@)", dynlib: tkg3d.}
proc newGeomBSplineCurve*(poles: TColgpArray1OfPnt; weights: TColStdArray1OfReal;
                         knots: TColStdArray1OfReal;
                         multiplicities: TColStdArray1OfInteger; degree: cint;
                         periodic: bool = false; checkRational: bool = true): GeomBSplineCurve {.
    cdecl, constructor, importcpp: "Geom_BSplineCurve(@)", dynlib: tkg3d.}
proc increaseDegree*(this: var GeomBSplineCurve; degree: cint) {.cdecl,
    importcpp: "IncreaseDegree", dynlib: tkg3d.}
proc increaseMultiplicity*(this: var GeomBSplineCurve; index: cint; m: cint) {.cdecl,
    importcpp: "IncreaseMultiplicity", dynlib: tkg3d.}
proc increaseMultiplicity*(this: var GeomBSplineCurve; i1: cint; i2: cint; m: cint) {.
    cdecl, importcpp: "IncreaseMultiplicity", dynlib: tkg3d.}
proc incrementMultiplicity*(this: var GeomBSplineCurve; i1: cint; i2: cint; m: cint) {.
    cdecl, importcpp: "IncrementMultiplicity", dynlib: tkg3d.}
proc insertKnot*(this: var GeomBSplineCurve; u: cfloat; m: cint = 1;
                parametricTolerance: cfloat = 0.0; add: bool = true) {.cdecl,
    importcpp: "InsertKnot", dynlib: tkg3d.}
proc insertKnots*(this: var GeomBSplineCurve; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger; parametricTolerance: cfloat = 0.0;
                 add: bool = false) {.cdecl, importcpp: "InsertKnots", dynlib: tkg3d.}
proc removeKnot*(this: var GeomBSplineCurve; index: cint; m: cint; tolerance: cfloat): bool {.
    cdecl, importcpp: "RemoveKnot", dynlib: tkg3d.}
proc reverse*(this: var GeomBSplineCurve) {.cdecl, importcpp: "Reverse", dynlib: tkg3d.}
proc reversedParameter*(this: GeomBSplineCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", dynlib: tkg3d.}
proc segment*(this: var GeomBSplineCurve; u1: cfloat; u2: cfloat;
             theTolerance: cfloat = 1.0e-7) {.cdecl, importcpp: "Segment",
    dynlib: tkg3d.}
proc setKnot*(this: var GeomBSplineCurve; index: cint; k: cfloat) {.cdecl,
    importcpp: "SetKnot", dynlib: tkg3d.}
proc setKnots*(this: var GeomBSplineCurve; k: TColStdArray1OfReal) {.cdecl,
    importcpp: "SetKnots", dynlib: tkg3d.}
proc setKnot*(this: var GeomBSplineCurve; index: cint; k: cfloat; m: cint) {.cdecl,
    importcpp: "SetKnot", dynlib: tkg3d.}
proc periodicNormalization*(this: GeomBSplineCurve; u: var cfloat) {.noSideEffect,
    cdecl, importcpp: "PeriodicNormalization", dynlib: tkg3d.}
proc setPeriodic*(this: var GeomBSplineCurve) {.cdecl, importcpp: "SetPeriodic",
    dynlib: tkg3d.}
proc setOrigin*(this: var GeomBSplineCurve; index: cint) {.cdecl,
    importcpp: "SetOrigin", dynlib: tkg3d.}
proc setOrigin*(this: var GeomBSplineCurve; u: cfloat; tol: cfloat) {.cdecl,
    importcpp: "SetOrigin", dynlib: tkg3d.}
proc setNotPeriodic*(this: var GeomBSplineCurve) {.cdecl,
    importcpp: "SetNotPeriodic", dynlib: tkg3d.}
proc setPole*(this: var GeomBSplineCurve; index: cint; p: Pnt) {.cdecl,
    importcpp: "SetPole", dynlib: tkg3d.}
proc setPole*(this: var GeomBSplineCurve; index: cint; p: Pnt; weight: cfloat) {.cdecl,
    importcpp: "SetPole", dynlib: tkg3d.}
proc setWeight*(this: var GeomBSplineCurve; index: cint; weight: cfloat) {.cdecl,
    importcpp: "SetWeight", dynlib: tkg3d.}
proc movePoint*(this: var GeomBSplineCurve; u: cfloat; p: Pnt; index1: cint; index2: cint;
               firstModifiedPole: var cint; lastModifiedPole: var cint) {.cdecl,
    importcpp: "MovePoint", dynlib: tkg3d.}
proc movePointAndTangent*(this: var GeomBSplineCurve; u: cfloat; p: Pnt; tangent: Vec;
                         tolerance: cfloat; startingCondition: cint;
                         endingCondition: cint; errorStatus: var cint) {.cdecl,
    importcpp: "MovePointAndTangent", dynlib: tkg3d.}
proc isCN*(this: GeomBSplineCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", dynlib: tkg3d.}
proc isG1*(this: GeomBSplineCurve; theTf: cfloat; theTl: cfloat; theAngTol: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsG1", dynlib: tkg3d.}
proc isClosed*(this: GeomBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg3d.}
proc isPeriodic*(this: GeomBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg3d.}
proc isRational*(this: GeomBSplineCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkg3d.}
proc continuity*(this: GeomBSplineCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc degree*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
    dynlib: tkg3d.}
proc d0*(this: GeomBSplineCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: GeomBSplineCurve; u: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: GeomBSplineCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: GeomBSplineCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: GeomBSplineCurve; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg3d.}
proc localValue*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint): Pnt {.
    noSideEffect, cdecl, importcpp: "LocalValue", dynlib: tkg3d.}
proc localD0*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var Pnt) {.
    noSideEffect, cdecl, importcpp: "LocalD0", dynlib: tkg3d.}
proc localD1*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var Pnt;
             v1: var Vec) {.noSideEffect, cdecl, importcpp: "LocalD1", dynlib: tkg3d.}
proc localD2*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var Pnt;
             v1: var Vec; v2: var Vec) {.noSideEffect, cdecl, importcpp: "LocalD2",
                                   dynlib: tkg3d.}
proc localD3*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; p: var Pnt;
             v1: var Vec; v2: var Vec; v3: var Vec) {.noSideEffect, cdecl,
    importcpp: "LocalD3", dynlib: tkg3d.}
proc localDN*(this: GeomBSplineCurve; u: cfloat; fromK1: cint; toK2: cint; n: cint): Vec {.
    noSideEffect, cdecl, importcpp: "LocalDN", dynlib: tkg3d.}
proc endPoint*(this: GeomBSplineCurve): Pnt {.noSideEffect, cdecl,
    importcpp: "EndPoint", dynlib: tkg3d.}
proc firstUKnotIndex*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "FirstUKnotIndex", dynlib: tkg3d.}
proc firstParameter*(this: GeomBSplineCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc knot*(this: GeomBSplineCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Knot", dynlib: tkg3d.}
proc knots*(this: GeomBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "Knots", dynlib: tkg3d.}
proc knots*(this: GeomBSplineCurve): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Knots", dynlib: tkg3d.}
proc knotSequence*(this: GeomBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "KnotSequence", dynlib: tkg3d.}
proc knotSequence*(this: GeomBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "KnotSequence", dynlib: tkg3d.}
proc knotDistribution*(this: GeomBSplineCurve): GeomAbsBSplKnotDistribution {.
    noSideEffect, cdecl, importcpp: "KnotDistribution", dynlib: tkg3d.}
proc lastUKnotIndex*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "LastUKnotIndex", dynlib: tkg3d.}
proc lastParameter*(this: GeomBSplineCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc locateU*(this: GeomBSplineCurve; u: cfloat; parametricTolerance: cfloat;
             i1: var cint; i2: var cint; withKnotRepetition: bool = false) {.noSideEffect,
    cdecl, importcpp: "LocateU", dynlib: tkg3d.}
proc multiplicity*(this: GeomBSplineCurve; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Multiplicity", dynlib: tkg3d.}
proc multiplicities*(this: GeomBSplineCurve; m: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Multiplicities", dynlib: tkg3d.}
proc multiplicities*(this: GeomBSplineCurve): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Multiplicities", dynlib: tkg3d.}
proc nbKnots*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkg3d.}
proc nbPoles*(this: GeomBSplineCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkg3d.}
proc pole*(this: GeomBSplineCurve; index: cint): Pnt {.noSideEffect, cdecl,
    importcpp: "Pole", dynlib: tkg3d.}
proc poles*(this: GeomBSplineCurve; p: var TColgpArray1OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkg3d.}
proc poles*(this: GeomBSplineCurve): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkg3d.}
proc startPoint*(this: GeomBSplineCurve): Pnt {.noSideEffect, cdecl,
    importcpp: "StartPoint", dynlib: tkg3d.}
proc weight*(this: GeomBSplineCurve; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Weight", dynlib: tkg3d.}
proc weights*(this: GeomBSplineCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", dynlib: tkg3d.}
proc weights*(this: GeomBSplineCurve): ptr TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Weights", dynlib: tkg3d.}
proc transform*(this: var GeomBSplineCurve; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkg3d.}
proc maxDegreeBSplineCurve*(): cint {.cdecl, importcpp: "Geom_BSplineCurve::MaxDegree(@)",
                       dynlib: tkg3d.}
proc resolution*(this: var GeomBSplineCurve; tolerance3D: cfloat;
                uTolerance: var cfloat) {.cdecl, importcpp: "Resolution",
                                       dynlib: tkg3d.}
proc copy*(this: GeomBSplineCurve): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkg3d.}
proc isEqual*(this: GeomBSplineCurve; theOther: Handle[GeomBSplineCurve];
             thePreci: cfloat): bool {.noSideEffect, cdecl, importcpp: "IsEqual",
                                    dynlib: tkg3d.}
proc dumpJson*(this: GeomBSplineCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}