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
type
  HandleGeom2dOffsetCurve* = Handle[Geom2dOffsetCurve]

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
  Geom2dOffsetCurve* {.importcpp: "Geom2d_OffsetCurve",
                      header: "Geom2d_OffsetCurve.hxx", bycopy.} = object of Geom2dCurve ##
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


proc newGeom2dOffsetCurve*(c: Handle[Geom2dCurve]; offset: cfloat;
                          isNotCheckC0: bool = false): Geom2dOffsetCurve {.cdecl,
    constructor, importcpp: "Geom2d_OffsetCurve(@)", header: "Geom2d_OffsetCurve.hxx".}
proc reverse*(this: var Geom2dOffsetCurve) {.cdecl, importcpp: "Reverse", header: "Geom2d_OffsetCurve.hxx".}
proc reversedParameter*(this: Geom2dOffsetCurve; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom2d_OffsetCurve.hxx".}
proc setBasisCurve*(this: var Geom2dOffsetCurve; c: Handle[Geom2dCurve];
                   isNotCheckC0: bool = false) {.cdecl, importcpp: "SetBasisCurve",
    header: "Geom2d_OffsetCurve.hxx".}
proc setOffsetValue*(this: var Geom2dOffsetCurve; d: cfloat) {.cdecl,
    importcpp: "SetOffsetValue", header: "Geom2d_OffsetCurve.hxx".}
proc basisCurve*(this: Geom2dOffsetCurve): Handle[Geom2dCurve] {.noSideEffect, cdecl,
    importcpp: "BasisCurve", header: "Geom2d_OffsetCurve.hxx".}
proc continuity*(this: Geom2dOffsetCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_OffsetCurve.hxx".}
proc d0*(this: Geom2dOffsetCurve; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_OffsetCurve.hxx".}
proc d1*(this: Geom2dOffsetCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_OffsetCurve.hxx".}
proc d2*(this: Geom2dOffsetCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_OffsetCurve.hxx".}
proc d3*(this: Geom2dOffsetCurve; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_OffsetCurve.hxx".}
proc dn*(this: Geom2dOffsetCurve; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_OffsetCurve.hxx".}
proc firstParameter*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_OffsetCurve.hxx".}
proc lastParameter*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_OffsetCurve.hxx".}
proc offset*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Offset", header: "Geom2d_OffsetCurve.hxx".}
proc isClosed*(this: Geom2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_OffsetCurve.hxx".}
proc isCN*(this: Geom2dOffsetCurve; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCN", header: "Geom2d_OffsetCurve.hxx".}
proc isPeriodic*(this: Geom2dOffsetCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_OffsetCurve.hxx".}
proc period*(this: Geom2dOffsetCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", header: "Geom2d_OffsetCurve.hxx".}
proc transform*(this: var Geom2dOffsetCurve; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_OffsetCurve.hxx".}
proc transformedParameter*(this: Geom2dOffsetCurve; u: cfloat; t: Trsf2dObj): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom2d_OffsetCurve.hxx".}
proc parametricTransformation*(this: Geom2dOffsetCurve; t: Trsf2dObj): cfloat {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom2d_OffsetCurve.hxx".}
proc copy*(this: Geom2dOffsetCurve): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_OffsetCurve.hxx".}
proc getBasisCurveContinuity*(this: Geom2dOffsetCurve): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "GetBasisCurveContinuity", header: "Geom2d_OffsetCurve.hxx".}
proc dumpJson*(this: Geom2dOffsetCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_OffsetCurve.hxx".}