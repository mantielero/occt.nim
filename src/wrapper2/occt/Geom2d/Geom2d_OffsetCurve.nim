##  Created on: 1993-03-24
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, Geom2d_Curve, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Geom2dEvaluator/Geom2dEvaluator_OffsetCurve

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2d_UndefinedDerivative"
discard "forward decl of Geom2d_UndefinedValue"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_OffsetCurve"
discard "forward decl of Geom2d_OffsetCurve"
type
  Handle_Geom2d_OffsetCurve* = handle[Geom2d_OffsetCurve]

## ! This class implements the basis services for the creation,
## ! edition, modification and evaluation of planar offset curve.
## ! The offset curve is obtained by offsetting by distance along
## ! the normal to a basis curve defined in 2D space.
## ! The offset curve in this package can be a self intersecting
## ! curve even if the basis curve does not self-intersect.
## ! The self intersecting portions are not deleted at the
## ! construction time.
## ! An offset curve is a curve at constant distance (Offset) from a
## ! basis curve and the offset curve takes its parametrization from
## ! the basis curve. The Offset curve is in the direction of the
## ! normal to the basis curve N.
## ! The distance offset may be positive or negative to indicate the
## ! preferred side of the curve :
## ! . distance offset >0 => the curve is in the direction of N
## ! . distance offset >0 => the curve is in the direction of - N
## ! On the Offset curve :
## ! Value(u) = BasisCurve.Value(U) + (Offset * (T ^ Z)) / ||T ^ Z||
## ! where T is the tangent vector to the basis curve and Z the
## ! direction of the normal vector to the plane of the curve,
## ! N = T ^ Z defines the offset direction and should not have
## ! null length.
## !
## ! Warnings :
## ! In this package we suppose that the continuity of the offset
## ! curve is one degree less than the continuity of the
## ! basis curve and we don't check that at any point ||T^Z|| != 0.0
## !
## ! So to evaluate the curve it is better to check that the offset
## ! curve is well defined at any point because an exception could
## ! be raised. The check is not done in this package at the creation
## ! of the offset curve because the control needs the use of an
## ! algorithm which cannot be implemented in this package.
## ! The OffsetCurve is closed if the first point and the last point
## ! are the same (The distance between these two points is lower or
## ! equal to the Resolution sea package gp) . The OffsetCurve can be
## ! closed even if the basis curve is not closed.

type
  Geom2d_OffsetCurve* {.importcpp: "Geom2d_OffsetCurve",
                       header: "Geom2d_OffsetCurve.hxx", bycopy.} = object of Geom2d_Curve ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## a
                                                                                    ## curve
                                                                                    ## offset
                                                                                    ## from
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## curve
                                                                                    ## C,
                                                                                    ##
                                                                                    ## !
                                                                                    ## where
                                                                                    ## Offset
                                                                                    ## is
                                                                                    ## the
                                                                                    ## distance
                                                                                    ## between
                                                                                    ## the
                                                                                    ## offset
                                                                                    ##
                                                                                    ## !
                                                                                    ## curve
                                                                                    ## and
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## curve
                                                                                    ## at
                                                                                    ## any
                                                                                    ## point.
                                                                                    ##
                                                                                    ## !
                                                                                    ## A
                                                                                    ## point
                                                                                    ## on
                                                                                    ## the
                                                                                    ## offset
                                                                                    ## curve
                                                                                    ## is
                                                                                    ## built
                                                                                    ## by
                                                                                    ## measuring
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## offset
                                                                                    ## value
                                                                                    ## along
                                                                                    ## a
                                                                                    ## normal
                                                                                    ## vector
                                                                                    ## at
                                                                                    ## a
                                                                                    ## point
                                                                                    ## on
                                                                                    ## C.
                                                                                    ##
                                                                                    ## !
                                                                                    ## This
                                                                                    ## normal
                                                                                    ## vector
                                                                                    ## is
                                                                                    ## obtained
                                                                                    ## by
                                                                                    ## rotating
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## vector
                                                                                    ## tangential
                                                                                    ## to
                                                                                    ## C
                                                                                    ## at
                                                                                    ## 90
                                                                                    ## degrees
                                                                                    ## in
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## anti-trigonometric
                                                                                    ## sense.
                                                                                    ## The
                                                                                    ## side
                                                                                    ## of
                                                                                    ## C
                                                                                    ## on
                                                                                    ## which
                                                                                    ##
                                                                                    ## !
                                                                                    ## the
                                                                                    ## offset
                                                                                    ## value
                                                                                    ## is
                                                                                    ## measured
                                                                                    ## is
                                                                                    ## indicated
                                                                                    ## by
                                                                                    ## this
                                                                                    ##
                                                                                    ## !
                                                                                    ## normal
                                                                                    ## vector
                                                                                    ## if
                                                                                    ## Offset
                                                                                    ## is
                                                                                    ## positive,
                                                                                    ## or
                                                                                    ## in
                                                                                    ## the
                                                                                    ## inverse
                                                                                    ##
                                                                                    ## !
                                                                                    ## sense
                                                                                    ## if
                                                                                    ## Offset
                                                                                    ## is
                                                                                    ## negative.
                                                                                    ##
                                                                                    ## !
                                                                                    ## If
                                                                                    ## isNotCheckC0
                                                                                    ## =
                                                                                    ## TRUE
                                                                                    ## checking
                                                                                    ## if
                                                                                    ## basis
                                                                                    ## curve
                                                                                    ## has
                                                                                    ## C0-continuity
                                                                                    ##
                                                                                    ## !
                                                                                    ## is
                                                                                    ## not
                                                                                    ## made.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Warnings
                                                                                    ## :
                                                                                    ##
                                                                                    ## !
                                                                                    ## In
                                                                                    ## this
                                                                                    ## package
                                                                                    ## the
                                                                                    ## entities
                                                                                    ## are
                                                                                    ## not
                                                                                    ## shared.
                                                                                    ## The
                                                                                    ## OffsetCurve
                                                                                    ## is
                                                                                    ##
                                                                                    ## !
                                                                                    ## built
                                                                                    ## with
                                                                                    ## a
                                                                                    ## copy
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve
                                                                                    ## C.
                                                                                    ## So
                                                                                    ## when
                                                                                    ## C
                                                                                    ## is
                                                                                    ## modified
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## OffsetCurve
                                                                                    ## is
                                                                                    ## not
                                                                                    ## modified
                                                                                    ##
                                                                                    ## !
                                                                                    ## Warning!
                                                                                    ## if
                                                                                    ## isNotCheckC0
                                                                                    ## =
                                                                                    ## false,
                                                                                    ##
                                                                                    ## !
                                                                                    ## ConstructionError
                                                                                    ## raised
                                                                                    ## if
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## curve
                                                                                    ## C
                                                                                    ## is
                                                                                    ## not
                                                                                    ## at
                                                                                    ## least
                                                                                    ## C1.
                                                                                    ##
                                                                                    ## !
                                                                                    ## No
                                                                                    ## check
                                                                                    ## is
                                                                                    ## done
                                                                                    ## to
                                                                                    ## know
                                                                                    ## if
                                                                                    ## ||V^Z||
                                                                                    ## !=
                                                                                    ## 0.0
                                                                                    ## at
                                                                                    ## any
                                                                                    ## point.


proc constructGeom2d_OffsetCurve*(C: handle[Geom2d_Curve]; Offset: Standard_Real;
    isNotCheckC0: Standard_Boolean = Standard_False): Geom2d_OffsetCurve {.
    constructor, importcpp: "Geom2d_OffsetCurve(@)",
    header: "Geom2d_OffsetCurve.hxx".}
proc Reverse*(this: var Geom2d_OffsetCurve) {.importcpp: "Reverse",
    header: "Geom2d_OffsetCurve.hxx".}
proc ReversedParameter*(this: Geom2d_OffsetCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_OffsetCurve.hxx".}
proc SetBasisCurve*(this: var Geom2d_OffsetCurve; C: handle[Geom2d_Curve];
                   isNotCheckC0: Standard_Boolean = Standard_False) {.
    importcpp: "SetBasisCurve", header: "Geom2d_OffsetCurve.hxx".}
proc SetOffsetValue*(this: var Geom2d_OffsetCurve; D: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "Geom2d_OffsetCurve.hxx".}
proc BasisCurve*(this: Geom2d_OffsetCurve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom2d_OffsetCurve.hxx".}
proc Continuity*(this: Geom2d_OffsetCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_OffsetCurve.hxx".}
proc D0*(this: Geom2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_OffsetCurve.hxx".}
proc D1*(this: Geom2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_OffsetCurve.hxx".}
proc D2*(this: Geom2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_OffsetCurve.hxx".}
proc D3*(this: Geom2d_OffsetCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_OffsetCurve.hxx".}
proc DN*(this: Geom2d_OffsetCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_OffsetCurve.hxx".}
proc FirstParameter*(this: Geom2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_OffsetCurve.hxx".}
proc LastParameter*(this: Geom2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_OffsetCurve.hxx".}
proc Offset*(this: Geom2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "Offset", header: "Geom2d_OffsetCurve.hxx".}
proc IsClosed*(this: Geom2d_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_OffsetCurve.hxx".}
proc IsCN*(this: Geom2d_OffsetCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom2d_OffsetCurve.hxx".}
proc IsPeriodic*(this: Geom2d_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_OffsetCurve.hxx".}
proc Period*(this: Geom2d_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Geom2d_OffsetCurve.hxx".}
proc Transform*(this: var Geom2d_OffsetCurve; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_OffsetCurve.hxx".}
proc TransformedParameter*(this: Geom2d_OffsetCurve; U: Standard_Real; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter",
    header: "Geom2d_OffsetCurve.hxx".}
proc ParametricTransformation*(this: Geom2d_OffsetCurve; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom2d_OffsetCurve.hxx".}
proc Copy*(this: Geom2d_OffsetCurve): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_OffsetCurve.hxx".}
proc GetBasisCurveContinuity*(this: Geom2d_OffsetCurve): GeomAbs_Shape {.
    noSideEffect, importcpp: "GetBasisCurveContinuity",
    header: "Geom2d_OffsetCurve.hxx".}
proc DumpJson*(this: Geom2d_OffsetCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_OffsetCurve.hxx".}
type
  Geom2d_OffsetCurvebase_type* = Geom2d_Curve

proc get_type_name*(): cstring {.importcpp: "Geom2d_OffsetCurve::get_type_name(@)",
                              header: "Geom2d_OffsetCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_OffsetCurve::get_type_descriptor(@)",
    header: "Geom2d_OffsetCurve.hxx".}
proc DynamicType*(this: Geom2d_OffsetCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_OffsetCurve.hxx".}