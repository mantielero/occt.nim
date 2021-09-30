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
  GeomBezierCurve* {.importcpp: "Geom_BezierCurve", header: "Geom_BezierCurve.hxx",
                    bycopy.} = object of GeomBoundedCurve ## ! Creates a non rational Bezier curve with a set of poles
                                                     ## ! CurvePoles.  The weights are defaulted to all being 1.
                                                     ## ! Raises ConstructionError if the number of poles is greater than MaxDegree + 1
                                                     ## ! or lower than 2.
                                                     ## ! Set  poles  to  Poles,  weights to  Weights  (not
                                                     ## ! copied). If Weights is   null  the  curve is    non
                                                     ## ! rational. Create the arrays of coefficients.  Poles
                                                     ## ! and    Weights  are   assumed   to  have the  first
                                                     ## ! coefficient 1.
                                                     ## ! Update rational and closed.
                                                     ## !
                                                     ## ! if nbpoles < 2 or nbboles > MaDegree + 1


type
  HandleGeomBezierCurve* = Handle[GeomBezierCurve]

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
  GeomBezierCurvebaseType* = GeomBoundedCurve
#[ 
proc constructGeomBezierCurve*(curvePoles: TColgpArray1OfPnt): GeomBezierCurve {.
    constructor, importcpp: "Geom_BezierCurve(@)", header: "Geom_BezierCurve.hxx".}
proc constructGeomBezierCurve*(curvePoles: TColgpArray1OfPnt;
                              poleWeights: TColStdArray1OfReal): GeomBezierCurve {.
    constructor, importcpp: "Geom_BezierCurve(@)", header: "Geom_BezierCurve.hxx".}
proc increase*(this: var GeomBezierCurve; degree: int) {.importcpp: "Increase",
    header: "Geom_BezierCurve.hxx".}
proc insertPoleAfter*(this: var GeomBezierCurve; index: int; p: Pnt) {.
    importcpp: "InsertPoleAfter", header: "Geom_BezierCurve.hxx".}
proc insertPoleAfter*(this: var GeomBezierCurve; index: int; p: Pnt;
                     weight: StandardReal) {.importcpp: "InsertPoleAfter",
    header: "Geom_BezierCurve.hxx".}
proc insertPoleBefore*(this: var GeomBezierCurve; index: int; p: Pnt) {.
    importcpp: "InsertPoleBefore", header: "Geom_BezierCurve.hxx".}
proc insertPoleBefore*(this: var GeomBezierCurve; index: int; p: Pnt;
                      weight: StandardReal) {.importcpp: "InsertPoleBefore",
    header: "Geom_BezierCurve.hxx".}
proc removePole*(this: var GeomBezierCurve; index: int) {.importcpp: "RemovePole",
    header: "Geom_BezierCurve.hxx".}
proc reverse*(this: var GeomBezierCurve) {.importcpp: "Reverse",
                                       header: "Geom_BezierCurve.hxx".}
proc reversedParameter*(this: GeomBezierCurve; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_BezierCurve.hxx".}
proc segment*(this: var GeomBezierCurve; u1: StandardReal; u2: StandardReal) {.
    importcpp: "Segment", header: "Geom_BezierCurve.hxx".}
proc setPole*(this: var GeomBezierCurve; index: int; p: Pnt) {.importcpp: "SetPole",
    header: "Geom_BezierCurve.hxx".}
proc setPole*(this: var GeomBezierCurve; index: int; p: Pnt; weight: StandardReal) {.
    importcpp: "SetPole", header: "Geom_BezierCurve.hxx".}
proc setWeight*(this: var GeomBezierCurve; index: int; weight: StandardReal) {.
    importcpp: "SetWeight", header: "Geom_BezierCurve.hxx".}
proc isClosed*(this: GeomBezierCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_BezierCurve.hxx".}
proc isCN*(this: GeomBezierCurve; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom_BezierCurve.hxx".}
proc isPeriodic*(this: GeomBezierCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_BezierCurve.hxx".}
proc isRational*(this: GeomBezierCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "Geom_BezierCurve.hxx".}
proc continuity*(this: GeomBezierCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_BezierCurve.hxx".}
proc degree*(this: GeomBezierCurve): int {.noSideEffect, importcpp: "Degree",
                                       header: "Geom_BezierCurve.hxx".}
proc d0*(this: GeomBezierCurve; u: StandardReal; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_BezierCurve.hxx".}
proc d1*(this: GeomBezierCurve; u: StandardReal; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_BezierCurve.hxx".}
proc d2*(this: GeomBezierCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_BezierCurve.hxx".}
proc d3*(this: GeomBezierCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.noSideEffect, importcpp: "D3", header: "Geom_BezierCurve.hxx".}
proc dn*(this: GeomBezierCurve; u: StandardReal; n: int): Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_BezierCurve.hxx".}
proc startPoint*(this: GeomBezierCurve): Pnt {.noSideEffect, importcpp: "StartPoint",
    header: "Geom_BezierCurve.hxx".}
proc endPoint*(this: GeomBezierCurve): Pnt {.noSideEffect, importcpp: "EndPoint",
    header: "Geom_BezierCurve.hxx".}
proc firstParameter*(this: GeomBezierCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_BezierCurve.hxx".}
proc lastParameter*(this: GeomBezierCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_BezierCurve.hxx".}
proc nbPoles*(this: GeomBezierCurve): int {.noSideEffect, importcpp: "NbPoles",
                                        header: "Geom_BezierCurve.hxx".}
proc pole*(this: GeomBezierCurve; index: int): Pnt {.noSideEffect, importcpp: "Pole",
    header: "Geom_BezierCurve.hxx".}
proc poles*(this: GeomBezierCurve; p: var TColgpArray1OfPnt) {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierCurve.hxx".}
proc poles*(this: GeomBezierCurve): TColgpArray1OfPnt {.noSideEffect,
    importcpp: "Poles", header: "Geom_BezierCurve.hxx".}
proc weight*(this: GeomBezierCurve; index: int): StandardReal {.noSideEffect,
    importcpp: "Weight", header: "Geom_BezierCurve.hxx".}
proc weights*(this: GeomBezierCurve; w: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierCurve.hxx".}
proc weights*(this: GeomBezierCurve): ptr TColStdArray1OfReal {.noSideEffect,
    importcpp: "Weights", header: "Geom_BezierCurve.hxx".}
proc transform*(this: var GeomBezierCurve; t: Trsf) {.importcpp: "Transform",
    header: "Geom_BezierCurve.hxx".}
proc maxDegree*(): int {.importcpp: "Geom_BezierCurve::MaxDegree(@)",
                      header: "Geom_BezierCurve.hxx".}
proc resolution*(this: var GeomBezierCurve; tolerance3D: StandardReal;
                uTolerance: var StandardReal) {.importcpp: "Resolution",
    header: "Geom_BezierCurve.hxx".}
proc copy*(this: GeomBezierCurve): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_BezierCurve.hxx".}
proc dumpJson*(this: GeomBezierCurve; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_BezierCurve.hxx".}


proc getTypeName*(): cstring {.importcpp: "Geom_BezierCurve::get_type_name(@)",
                            header: "Geom_BezierCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_BezierCurve::get_type_descriptor(@)",
    header: "Geom_BezierCurve.hxx".}
proc dynamicType*(this: GeomBezierCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_BezierCurve.hxx".} ]#