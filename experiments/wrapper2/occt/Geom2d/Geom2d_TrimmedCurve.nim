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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2d_UndefinedDerivative"
discard "forward decl of Geom2d_UndefinedValue"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_TrimmedCurve"
discard "forward decl of Geom2d_TrimmedCurve"
type
  HandleGeom2dTrimmedCurve* = Handle[Geom2dTrimmedCurve]

## ! Defines a portion of a curve limited by two values of
## ! parameters inside the parametric domain of the curve.
## ! The trimmed curve is defined by:
## ! - the basis curve, and
## ! - the two parameter values which limit it.
## ! The trimmed curve can either have the same
## ! orientation as the basis curve or the opposite orientation.

type
  Geom2dTrimmedCurve* {.importcpp: "Geom2d_TrimmedCurve",
                       header: "Geom2d_TrimmedCurve.hxx", bycopy.} = object of Geom2dBoundedCurve ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## trimmed
                                                                                           ## curve
                                                                                           ## from
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## C
                                                                                           ## limited
                                                                                           ## between
                                                                                           ##
                                                                                           ## !
                                                                                           ## U1
                                                                                           ## and
                                                                                           ## U2.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## .
                                                                                           ## U1
                                                                                           ## can
                                                                                           ## be
                                                                                           ## greater
                                                                                           ## or
                                                                                           ## lower
                                                                                           ## than
                                                                                           ## U2.
                                                                                           ##
                                                                                           ## !
                                                                                           ## .
                                                                                           ## The
                                                                                           ## returned
                                                                                           ## curve
                                                                                           ## is
                                                                                           ## oriented
                                                                                           ## from
                                                                                           ## U1
                                                                                           ## to
                                                                                           ## U2.
                                                                                           ##
                                                                                           ## !
                                                                                           ## .
                                                                                           ## If
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## C
                                                                                           ## is
                                                                                           ## periodic
                                                                                           ## there
                                                                                           ## is
                                                                                           ## an
                                                                                           ## ambiguity
                                                                                           ##
                                                                                           ## !
                                                                                           ## because
                                                                                           ## two
                                                                                           ## parts
                                                                                           ## are
                                                                                           ## available.
                                                                                           ## In
                                                                                           ## this
                                                                                           ## case
                                                                                           ## by
                                                                                           ## default
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ## curve
                                                                                           ## has
                                                                                           ## the
                                                                                           ## same
                                                                                           ## orientation
                                                                                           ## as
                                                                                           ## the
                                                                                           ## basis
                                                                                           ##
                                                                                           ## !
                                                                                           ## curve
                                                                                           ## (Sense
                                                                                           ## =
                                                                                           ## True).
                                                                                           ## If
                                                                                           ## Sense
                                                                                           ## =
                                                                                           ## False
                                                                                           ## then
                                                                                           ## the
                                                                                           ## orientation
                                                                                           ##
                                                                                           ## !
                                                                                           ## of
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ## curve
                                                                                           ## is
                                                                                           ## opposite
                                                                                           ## to
                                                                                           ## the
                                                                                           ## orientation
                                                                                           ## of
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## C.
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## is
                                                                                           ## closed
                                                                                           ## but
                                                                                           ## not
                                                                                           ## periodic
                                                                                           ## it
                                                                                           ## is
                                                                                           ## not
                                                                                           ## possible
                                                                                           ##
                                                                                           ## !
                                                                                           ## to
                                                                                           ## keep
                                                                                           ## the
                                                                                           ## part
                                                                                           ## of
                                                                                           ## the
                                                                                           ## curve
                                                                                           ## including
                                                                                           ## the
                                                                                           ## junction
                                                                                           ## point
                                                                                           ##
                                                                                           ## !
                                                                                           ## (except
                                                                                           ## if
                                                                                           ## the
                                                                                           ## junction
                                                                                           ## point
                                                                                           ## is
                                                                                           ## at
                                                                                           ## the
                                                                                           ## beginning
                                                                                           ## or
                                                                                           ##
                                                                                           ## !
                                                                                           ## at
                                                                                           ## the
                                                                                           ## end
                                                                                           ## of
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ## curve)
                                                                                           ## because
                                                                                           ## you
                                                                                           ## could
                                                                                           ## lose
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## fundamental
                                                                                           ## characteristics
                                                                                           ## of
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## curve
                                                                                           ## which
                                                                                           ## are
                                                                                           ##
                                                                                           ## !
                                                                                           ## used
                                                                                           ## for
                                                                                           ## example
                                                                                           ## to
                                                                                           ## compute
                                                                                           ## the
                                                                                           ## derivatives
                                                                                           ## of
                                                                                           ## the
                                                                                           ## trimmed
                                                                                           ##
                                                                                           ## !
                                                                                           ## curve.
                                                                                           ## So
                                                                                           ## for
                                                                                           ## a
                                                                                           ## closed
                                                                                           ## curve
                                                                                           ## the
                                                                                           ## rules
                                                                                           ## are
                                                                                           ## the
                                                                                           ## same
                                                                                           ## as
                                                                                           ## for
                                                                                           ##
                                                                                           ## !
                                                                                           ## a
                                                                                           ## open
                                                                                           ## curve.
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
                                                                                           ## TrimmedCurve
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
                                                                                           ## TrimmedCurve
                                                                                           ## is
                                                                                           ## not
                                                                                           ## modified
                                                                                           ##
                                                                                           ## !
                                                                                           ## Warnings
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## If
                                                                                           ## <C>
                                                                                           ## is
                                                                                           ## periodic
                                                                                           ## and
                                                                                           ## <theAdjustPeriodic>
                                                                                           ## is
                                                                                           ## True,
                                                                                           ## parametrics
                                                                                           ##
                                                                                           ## !
                                                                                           ## bounds
                                                                                           ## of
                                                                                           ## the
                                                                                           ## TrimmedCurve,
                                                                                           ## can
                                                                                           ## be
                                                                                           ## different
                                                                                           ## to
                                                                                           ## [<U1>;<U2>},
                                                                                           ##
                                                                                           ## !
                                                                                           ## if
                                                                                           ## <U1>
                                                                                           ## or
                                                                                           ## <U2>
                                                                                           ## are
                                                                                           ## not
                                                                                           ## in
                                                                                           ## the
                                                                                           ## principal
                                                                                           ## period.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Include
                                                                                           ## :
                                                                                           ##
                                                                                           ## !
                                                                                           ## For
                                                                                           ## more
                                                                                           ## explanation
                                                                                           ## see
                                                                                           ## the
                                                                                           ## scheme
                                                                                           ## given
                                                                                           ## with
                                                                                           ## this
                                                                                           ## class.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raises
                                                                                           ## ConstructionError
                                                                                           ## the
                                                                                           ## C
                                                                                           ## is
                                                                                           ## not
                                                                                           ## periodic
                                                                                           ## and
                                                                                           ## U1
                                                                                           ## or
                                                                                           ## U2
                                                                                           ## are
                                                                                           ## out
                                                                                           ## of
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## bounds
                                                                                           ## of
                                                                                           ## C.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raised
                                                                                           ## if
                                                                                           ## U1
                                                                                           ## =
                                                                                           ## U2.


proc constructGeom2dTrimmedCurve*(c: Handle[Geom2dCurve]; u1: float; u2: float;
                                 sense: bool = true; theAdjustPeriodic: bool = true): Geom2dTrimmedCurve {.
    constructor, importcpp: "Geom2d_TrimmedCurve(@)",
    header: "Geom2d_TrimmedCurve.hxx".}
proc reverse*(this: var Geom2dTrimmedCurve) {.importcpp: "Reverse",
    header: "Geom2d_TrimmedCurve.hxx".}
proc reversedParameter*(this: Geom2dTrimmedCurve; u: float): float {.noSideEffect,
    importcpp: "ReversedParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc setTrim*(this: var Geom2dTrimmedCurve; u1: float; u2: float; sense: bool = true;
             theAdjustPeriodic: bool = true) {.importcpp: "SetTrim",
    header: "Geom2d_TrimmedCurve.hxx".}
proc basisCurve*(this: Geom2dTrimmedCurve): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom2d_TrimmedCurve.hxx".}
proc continuity*(this: Geom2dTrimmedCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_TrimmedCurve.hxx".}
proc isCN*(this: Geom2dTrimmedCurve; n: int): bool {.noSideEffect, importcpp: "IsCN",
    header: "Geom2d_TrimmedCurve.hxx".}
proc endPoint*(this: Geom2dTrimmedCurve): Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "Geom2d_TrimmedCurve.hxx".}
proc firstParameter*(this: Geom2dTrimmedCurve): float {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc isClosed*(this: Geom2dTrimmedCurve): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Geom2d_TrimmedCurve.hxx".}
proc isPeriodic*(this: Geom2dTrimmedCurve): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_TrimmedCurve.hxx".}
proc period*(this: Geom2dTrimmedCurve): float {.noSideEffect, importcpp: "Period",
    header: "Geom2d_TrimmedCurve.hxx".}
proc lastParameter*(this: Geom2dTrimmedCurve): float {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc startPoint*(this: Geom2dTrimmedCurve): Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "Geom2d_TrimmedCurve.hxx".}
proc d0*(this: Geom2dTrimmedCurve; u: float; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_TrimmedCurve.hxx".}
proc d1*(this: Geom2dTrimmedCurve; u: float; p: var Pnt2d; v1: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Geom2d_TrimmedCurve.hxx".}
proc d2*(this: Geom2dTrimmedCurve; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Geom2d_TrimmedCurve.hxx".}
proc d3*(this: Geom2dTrimmedCurve; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                      header: "Geom2d_TrimmedCurve.hxx".}
proc dn*(this: Geom2dTrimmedCurve; u: float; n: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2d_TrimmedCurve.hxx".}
proc transform*(this: var Geom2dTrimmedCurve; t: Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_TrimmedCurve.hxx".}
proc transformedParameter*(this: Geom2dTrimmedCurve; u: float; t: Trsf2d): float {.
    noSideEffect, importcpp: "TransformedParameter",
    header: "Geom2d_TrimmedCurve.hxx".}
proc parametricTransformation*(this: Geom2dTrimmedCurve; t: Trsf2d): float {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom2d_TrimmedCurve.hxx".}
proc copy*(this: Geom2dTrimmedCurve): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_TrimmedCurve.hxx".}
proc dumpJson*(this: Geom2dTrimmedCurve; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom2d_TrimmedCurve.hxx".}
type
  Geom2dTrimmedCurvebaseType* = Geom2dBoundedCurve

proc getTypeName*(): cstring {.importcpp: "Geom2d_TrimmedCurve::get_type_name(@)",
                            header: "Geom2d_TrimmedCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_TrimmedCurve::get_type_descriptor(@)",
    header: "Geom2d_TrimmedCurve.hxx".}
proc dynamicType*(this: Geom2dTrimmedCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_TrimmedCurve.hxx".}
