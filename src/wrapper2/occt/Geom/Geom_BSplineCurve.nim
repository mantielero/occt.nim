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


proc constructGeomBSplineCurve*(poles: TColgpArray1OfPnt;
                               knots: TColStdArray1OfReal;
                               multiplicities: TColStdArray1OfInteger;
                               degree: StandardInteger;
                               periodic: StandardBoolean = standardFalse): GeomBSplineCurve {.
    constructor, importcpp: "Geom_BSplineCurve(@)", header: "Geom_BSplineCurve.hxx".}
proc constructGeomBSplineCurve*(poles: TColgpArray1OfPnt;
                               weights: TColStdArray1OfReal;
                               knots: TColStdArray1OfReal;
                               multiplicities: TColStdArray1OfInteger;
                               degree: StandardInteger;
                               periodic: StandardBoolean = standardFalse;
                               checkRational: StandardBoolean = standardTrue): GeomBSplineCurve {.
    constructor, importcpp: "Geom_BSplineCurve(@)", header: "Geom_BSplineCurve.hxx".}
proc increaseDegree*(this: var GeomBSplineCurve; degree: StandardInteger) {.
    importcpp: "IncreaseDegree", header: "Geom_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var GeomBSplineCurve; index: StandardInteger;
                          m: StandardInteger) {.importcpp: "IncreaseMultiplicity",
    header: "Geom_BSplineCurve.hxx".}
proc increaseMultiplicity*(this: var GeomBSplineCurve; i1: StandardInteger;
                          i2: StandardInteger; m: StandardInteger) {.
    importcpp: "IncreaseMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc incrementMultiplicity*(this: var GeomBSplineCurve; i1: StandardInteger;
                           i2: StandardInteger; m: StandardInteger) {.
    importcpp: "IncrementMultiplicity", header: "Geom_BSplineCurve.hxx".}
proc insertKnot*(this: var GeomBSplineCurve; u: StandardReal; m: StandardInteger = 1;
                parametricTolerance: StandardReal = 0.0;
                add: StandardBoolean = standardTrue) {.importcpp: "InsertKnot",
    header: "Geom_BSplineCurve.hxx".}
proc insertKnots*(this: var GeomBSplineCurve; knots: TColStdArray1OfReal;
                 mults: TColStdArray1OfInteger;
                 parametricTolerance: StandardReal = 0.0;
                 add: StandardBoolean = standardFalse) {.importcpp: "InsertKnots",
    header: "Geom_BSplineCurve.hxx".}
proc removeKnot*(this: var GeomBSplineCurve; index: StandardInteger;
                m: StandardInteger; tolerance: StandardReal): StandardBoolean {.
    importcpp: "RemoveKnot", header: "Geom_BSplineCurve.hxx".}
proc reverse*(this: var GeomBSplineCurve) {.importcpp: "Reverse",
                                        header: "Geom_BSplineCurve.hxx".}
proc reversedParameter*(this: GeomBSplineCurve; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_BSplineCurve.hxx".}
proc segment*(this: var GeomBSplineCurve; u1: StandardReal; u2: StandardReal;
             theTolerance: StandardReal = pConfusion()) {.importcpp: "Segment",
    header: "Geom_BSplineCurve.hxx".}
proc setKnot*(this: var GeomBSplineCurve; index: StandardInteger; k: StandardReal) {.
    importcpp: "SetKnot", header: "Geom_BSplineCurve.hxx".}
proc setKnots*(this: var GeomBSplineCurve; k: TColStdArray1OfReal) {.
    importcpp: "SetKnots", header: "Geom_BSplineCurve.hxx".}
proc setKnot*(this: var GeomBSplineCurve; index: StandardInteger; k: StandardReal;
             m: StandardInteger) {.importcpp: "SetKnot",
                                 header: "Geom_BSplineCurve.hxx".}
proc periodicNormalization*(this: GeomBSplineCurve; u: var StandardReal) {.
    noSideEffect, importcpp: "PeriodicNormalization",
    header: "Geom_BSplineCurve.hxx".}
proc setPeriodic*(this: var GeomBSplineCurve) {.importcpp: "SetPeriodic",
    header: "Geom_BSplineCurve.hxx".}
proc setOrigin*(this: var GeomBSplineCurve; index: StandardInteger) {.
    importcpp: "SetOrigin", header: "Geom_BSplineCurve.hxx".}
proc setOrigin*(this: var GeomBSplineCurve; u: StandardReal; tol: StandardReal) {.
    importcpp: "SetOrigin", header: "Geom_BSplineCurve.hxx".}
proc setNotPeriodic*(this: var GeomBSplineCurve) {.importcpp: "SetNotPeriodic",
    header: "Geom_BSplineCurve.hxx".}
proc setPole*(this: var GeomBSplineCurve; index: StandardInteger; p: GpPnt) {.
    importcpp: "SetPole", header: "Geom_BSplineCurve.hxx".}
proc setPole*(this: var GeomBSplineCurve; index: StandardInteger; p: GpPnt;
             weight: StandardReal) {.importcpp: "SetPole",
                                   header: "Geom_BSplineCurve.hxx".}
proc setWeight*(this: var GeomBSplineCurve; index: StandardInteger;
               weight: StandardReal) {.importcpp: "SetWeight",
                                     header: "Geom_BSplineCurve.hxx".}
proc movePoint*(this: var GeomBSplineCurve; u: StandardReal; p: GpPnt;
               index1: StandardInteger; index2: StandardInteger;
               firstModifiedPole: var StandardInteger;
               lastModifiedPole: var StandardInteger) {.importcpp: "MovePoint",
    header: "Geom_BSplineCurve.hxx".}
proc movePointAndTangent*(this: var GeomBSplineCurve; u: StandardReal; p: GpPnt;
                         tangent: GpVec; tolerance: StandardReal;
                         startingCondition: StandardInteger;
                         endingCondition: StandardInteger;
                         errorStatus: var StandardInteger) {.
    importcpp: "MovePointAndTangent", header: "Geom_BSplineCurve.hxx".}
proc isCN*(this: GeomBSplineCurve; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom_BSplineCurve.hxx".}
proc isG1*(this: GeomBSplineCurve; theTf: StandardReal; theTl: StandardReal;
          theAngTol: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsG1", header: "Geom_BSplineCurve.hxx".}
proc isClosed*(this: GeomBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_BSplineCurve.hxx".}
proc isPeriodic*(this: GeomBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_BSplineCurve.hxx".}
proc isRational*(this: GeomBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom_BSplineCurve.hxx".}
proc continuity*(this: GeomBSplineCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BSplineCurve.hxx".}
proc degree*(this: GeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "Geom_BSplineCurve.hxx".}
proc d0*(this: GeomBSplineCurve; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_BSplineCurve.hxx".}
proc d1*(this: GeomBSplineCurve; u: StandardReal; p: var GpPnt; v1: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "Geom_BSplineCurve.hxx".}
proc d2*(this: GeomBSplineCurve; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "Geom_BSplineCurve.hxx".}
proc d3*(this: GeomBSplineCurve; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "Geom_BSplineCurve.hxx".}
proc dn*(this: GeomBSplineCurve; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "Geom_BSplineCurve.hxx".}
proc localValue*(this: GeomBSplineCurve; u: StandardReal; fromK1: StandardInteger;
                toK2: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "LocalValue", header: "Geom_BSplineCurve.hxx".}
proc localD0*(this: GeomBSplineCurve; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var GpPnt) {.noSideEffect,
    importcpp: "LocalD0", header: "Geom_BSplineCurve.hxx".}
proc localD1*(this: GeomBSplineCurve; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var GpPnt; v1: var GpVec) {.noSideEffect,
    importcpp: "LocalD1", header: "Geom_BSplineCurve.hxx".}
proc localD2*(this: GeomBSplineCurve; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    noSideEffect, importcpp: "LocalD2", header: "Geom_BSplineCurve.hxx".}
proc localD3*(this: GeomBSplineCurve; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; p: var GpPnt; v1: var GpVec; v2: var GpVec;
             v3: var GpVec) {.noSideEffect, importcpp: "LocalD3",
                           header: "Geom_BSplineCurve.hxx".}
proc localDN*(this: GeomBSplineCurve; u: StandardReal; fromK1: StandardInteger;
             toK2: StandardInteger; n: StandardInteger): GpVec {.noSideEffect,
    importcpp: "LocalDN", header: "Geom_BSplineCurve.hxx".}
proc endPoint*(this: GeomBSplineCurve): GpPnt {.noSideEffect, importcpp: "EndPoint",
    header: "Geom_BSplineCurve.hxx".}
proc firstUKnotIndex*(this: GeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "FirstUKnotIndex", header: "Geom_BSplineCurve.hxx".}
proc firstParameter*(this: GeomBSplineCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_BSplineCurve.hxx".}
proc knot*(this: GeomBSplineCurve; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Knot", header: "Geom_BSplineCurve.hxx".}
proc knots*(this: GeomBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "Geom_BSplineCurve.hxx".}
proc knots*(this: GeomBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Knots", header: "Geom_BSplineCurve.hxx".}
proc knotSequence*(this: GeomBSplineCurve; k: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "KnotSequence", header: "Geom_BSplineCurve.hxx".}
proc knotSequence*(this: GeomBSplineCurve): TColStdArray1OfReal {.noSideEffect,
    importcpp: "KnotSequence", header: "Geom_BSplineCurve.hxx".}
proc knotDistribution*(this: GeomBSplineCurve): GeomAbsBSplKnotDistribution {.
    noSideEffect, importcpp: "KnotDistribution", header: "Geom_BSplineCurve.hxx".}
proc lastUKnotIndex*(this: GeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "LastUKnotIndex", header: "Geom_BSplineCurve.hxx".}
proc lastParameter*(this: GeomBSplineCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_BSplineCurve.hxx".}
proc locateU*(this: GeomBSplineCurve; u: StandardReal;
             parametricTolerance: StandardReal; i1: var StandardInteger;
             i2: var StandardInteger;
             withKnotRepetition: StandardBoolean = standardFalse) {.noSideEffect,
    importcpp: "LocateU", header: "Geom_BSplineCurve.hxx".}
proc multiplicity*(this: GeomBSplineCurve; index: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Multiplicity", header: "Geom_BSplineCurve.hxx".}
proc multiplicities*(this: GeomBSplineCurve; m: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "Geom_BSplineCurve.hxx".}
proc multiplicities*(this: GeomBSplineCurve): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "Multiplicities", header: "Geom_BSplineCurve.hxx".}
proc nbKnots*(this: GeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "Geom_BSplineCurve.hxx".}
proc nbPoles*(this: GeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "Geom_BSplineCurve.hxx".}
proc pole*(this: GeomBSplineCurve; index: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "Pole", header: "Geom_BSplineCurve.hxx".}
proc poles*(this: GeomBSplineCurve; p: var TColgpArray1OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineCurve.hxx".}
proc poles*(this: GeomBSplineCurve): TColgpArray1OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BSplineCurve.hxx".}
proc startPoint*(this: GeomBSplineCurve): GpPnt {.noSideEffect,
    importcpp: "StartPoint", header: "Geom_BSplineCurve.hxx".}
proc weight*(this: GeomBSplineCurve; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Weight", header: "Geom_BSplineCurve.hxx".}
proc weights*(this: GeomBSplineCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineCurve.hxx".}
proc weights*(this: GeomBSplineCurve): ptr TColStdArray1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BSplineCurve.hxx".}
proc transform*(this: var GeomBSplineCurve; t: GpTrsf) {.importcpp: "Transform",
    header: "Geom_BSplineCurve.hxx".}
proc maxDegree*(): StandardInteger {.importcpp: "Geom_BSplineCurve::MaxDegree(@)",
                                  header: "Geom_BSplineCurve.hxx".}
proc resolution*(this: var GeomBSplineCurve; tolerance3D: StandardReal;
                uTolerance: var StandardReal) {.importcpp: "Resolution",
    header: "Geom_BSplineCurve.hxx".}
proc copy*(this: GeomBSplineCurve): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BSplineCurve.hxx".}
proc isEqual*(this: GeomBSplineCurve; theOther: Handle[GeomBSplineCurve];
             thePreci: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "IsEqual", header: "Geom_BSplineCurve.hxx".}
proc dumpJson*(this: GeomBSplineCurve; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_BSplineCurve.hxx".}
type
  GeomBSplineCurvebaseType* = GeomBoundedCurve

proc getTypeName*(): cstring {.importcpp: "Geom_BSplineCurve::get_type_name(@)",
                            header: "Geom_BSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_BSplineCurve::get_type_descriptor(@)",
    header: "Geom_BSplineCurve.hxx".}
proc dynamicType*(this: GeomBSplineCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BSplineCurve.hxx".}

