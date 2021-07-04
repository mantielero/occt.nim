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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Dir,
  ../Standard/Standard_Real, ../GeomAbs/GeomAbs_Shape, Geom_Curve,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../GeomEvaluator/GeomEvaluator_OffsetCurve

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_OffsetCurve"
discard "forward decl of Geom_OffsetCurve"
type
  Handle_Geom_OffsetCurve* = handle[Geom_OffsetCurve]

## ! This class implements the basis services for an offset curve
## ! in 3D space. The Offset curve in this package can be a self
## ! intersecting curve even if the basis curve does not
## ! self-intersect. The self intersecting portions are not deleted
## ! at the construction time.
## ! An offset curve is a curve at constant distance (Offset) from
## ! a basis curve in a reference direction V. The offset curve
## ! takes its parametrization from the basis curve.
## ! The Offset curve is in the direction of the normal N
## ! defined with the cross product  T^V, where the vector T
## ! is given by the first derivative on the basis curve with
## ! non zero length.
## ! The distance offset may be positive or negative to indicate the
## ! preferred side of the curve :
## ! . distance offset >0 => the curve is in the direction of N
## ! . distance offset <0 => the curve is in the direction of - N
## !
## ! On the Offset curve :
## ! Value (U) = BasisCurve.Value(U) + (Offset * (T ^ V)) / ||T ^ V||
## !
## ! At any point the Offset direction V must not be parallel to the
## ! vector T and the vector T must not have null length else the
## ! offset curve is not defined. So the offset curve has not the
## ! same continuity as the basis curve.
## !
## ! Warnings :
## !
## ! In this package we suppose that the continuity of the offset
## ! curve is one degree less than the continuity of the basis
## ! curve and we don't check that at any point ||T^V|| != 0.0
## !
## ! So to evaluate the curve it is better to check that the offset
## ! curve is well defined at any point because an exception could
## ! be raised. The check is not done in this package at the creation
## ! of the offset curve because the control needs the use of an
## ! algorithm which cannot be implemented in this package.
## !
## ! The OffsetCurve is closed if the first point and the last point
## ! are the same (The distance between these two points is lower or
## ! equal to the Resolution sea package gp) . The OffsetCurve can be
## ! closed even if the basis curve is not closed.

type
  Geom_OffsetCurve* {.importcpp: "Geom_OffsetCurve",
                     header: "Geom_OffsetCurve.hxx", bycopy.} = object of Geom_Curve ## ! C is
                                                                              ## the
                                                                              ## basis
                                                                              ## curve,
                                                                              ## Offset is
                                                                              ## the
                                                                              ## distance
                                                                              ## between
                                                                              ## <me>
                                                                              ## and
                                                                              ## !
                                                                              ## the
                                                                              ## basis
                                                                              ## curve at
                                                                              ## any
                                                                              ## point. V
                                                                              ## defines
                                                                              ## the
                                                                              ## fixed
                                                                              ## reference
                                                                              ## !
                                                                              ## direction
                                                                              ## (offset
                                                                              ## direction). If P is a
                                                                              ## point on
                                                                              ## the
                                                                              ## basis
                                                                              ## !
                                                                              ## curve
                                                                              ## and T
                                                                              ## the
                                                                              ## first
                                                                              ## derivative
                                                                              ## with
                                                                              ## non
                                                                              ## zero
                                                                              ## length
                                                                              ## ! at
                                                                              ## this
                                                                              ## point,
                                                                              ## the
                                                                              ## corresponding
                                                                              ## point on
                                                                              ## the
                                                                              ## offset
                                                                              ## curve is
                                                                              ## ! in
                                                                              ## the
                                                                              ## direction of
                                                                              ## the
                                                                              ## vector-product N = V ^ T
                                                                              ## where
                                                                              ## ! N is a
                                                                              ## unitary
                                                                              ## vector.
                                                                              ## ! If
                                                                              ## isNotCheckC0 =
                                                                              ## TRUE
                                                                              ## checking if
                                                                              ## basis
                                                                              ## curve
                                                                              ## has
                                                                              ## C0-continuity
                                                                              ## ! is
                                                                              ## not
                                                                              ## made.
                                                                              ## !
                                                                              ## Warnings :
                                                                              ## ! In
                                                                              ## this
                                                                              ## package
                                                                              ## the
                                                                              ## entities
                                                                              ## are
                                                                              ## not
                                                                              ## shared.
                                                                              ## The
                                                                              ## OffsetCurve is
                                                                              ## !
                                                                              ## built
                                                                              ## with a
                                                                              ## copy of
                                                                              ## the
                                                                              ## curve C. So
                                                                              ## when C is
                                                                              ## modified
                                                                              ## the
                                                                              ## !
                                                                              ## OffsetCurve is
                                                                              ## not
                                                                              ## modified
                                                                              ## !
                                                                              ## !
                                                                              ## Raised if
                                                                              ## the
                                                                              ## basis
                                                                              ## curve C is
                                                                              ## not at
                                                                              ## least
                                                                              ## C1.
                                                                              ## !
                                                                              ## Warnings :
                                                                              ## ! No
                                                                              ## check is
                                                                              ## done to
                                                                              ## know if
                                                                              ## ||V^T|| !=
                                                                              ## 0.0 at
                                                                              ## any
                                                                              ## point.


proc constructGeom_OffsetCurve*(C: handle[Geom_Curve]; Offset: Standard_Real;
                               V: gp_Dir;
                               isNotCheckC0: Standard_Boolean = Standard_False): Geom_OffsetCurve {.
    constructor, importcpp: "Geom_OffsetCurve(@)", header: "Geom_OffsetCurve.hxx".}
proc Reverse*(this: var Geom_OffsetCurve) {.importcpp: "Reverse",
                                        header: "Geom_OffsetCurve.hxx".}
proc ReversedParameter*(this: Geom_OffsetCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_OffsetCurve.hxx".}
proc SetBasisCurve*(this: var Geom_OffsetCurve; C: handle[Geom_Curve];
                   isNotCheckC0: Standard_Boolean = Standard_False) {.
    importcpp: "SetBasisCurve", header: "Geom_OffsetCurve.hxx".}
proc SetDirection*(this: var Geom_OffsetCurve; V: gp_Dir) {.importcpp: "SetDirection",
    header: "Geom_OffsetCurve.hxx".}
proc SetOffsetValue*(this: var Geom_OffsetCurve; D: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "Geom_OffsetCurve.hxx".}
proc BasisCurve*(this: Geom_OffsetCurve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom_OffsetCurve.hxx".}
proc Continuity*(this: Geom_OffsetCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_OffsetCurve.hxx".}
proc Direction*(this: Geom_OffsetCurve): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Geom_OffsetCurve.hxx".}
proc D0*(this: Geom_OffsetCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_OffsetCurve.hxx".}
proc D1*(this: Geom_OffsetCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_OffsetCurve.hxx".}
proc D2*(this: Geom_OffsetCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "Geom_OffsetCurve.hxx".}
proc D3*(this: Geom_OffsetCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_OffsetCurve.hxx".}
proc DN*(this: Geom_OffsetCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_OffsetCurve.hxx".}
proc FirstParameter*(this: Geom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_OffsetCurve.hxx".}
proc LastParameter*(this: Geom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_OffsetCurve.hxx".}
proc Offset*(this: Geom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "Offset", header: "Geom_OffsetCurve.hxx".}
proc IsClosed*(this: Geom_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_OffsetCurve.hxx".}
proc IsCN*(this: Geom_OffsetCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom_OffsetCurve.hxx".}
proc IsPeriodic*(this: Geom_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_OffsetCurve.hxx".}
proc Period*(this: Geom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Geom_OffsetCurve.hxx".}
proc Transform*(this: var Geom_OffsetCurve; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_OffsetCurve.hxx".}
proc TransformedParameter*(this: Geom_OffsetCurve; U: Standard_Real; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom_OffsetCurve.hxx".}
proc ParametricTransformation*(this: Geom_OffsetCurve; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_OffsetCurve.hxx".}
proc Copy*(this: Geom_OffsetCurve): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_OffsetCurve.hxx".}
proc GetBasisCurveContinuity*(this: Geom_OffsetCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "GetBasisCurveContinuity", header: "Geom_OffsetCurve.hxx".}
proc DumpJson*(this: Geom_OffsetCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_OffsetCurve.hxx".}
type
  Geom_OffsetCurvebase_type* = Geom_Curve

proc get_type_name*(): cstring {.importcpp: "Geom_OffsetCurve::get_type_name(@)",
                              header: "Geom_OffsetCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_OffsetCurve::get_type_descriptor(@)",
    header: "Geom_OffsetCurve.hxx".}
proc DynamicType*(this: Geom_OffsetCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_OffsetCurve.hxx".}