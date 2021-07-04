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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom2d_BoundedCurve, ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer

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
  Handle_Geom2d_TrimmedCurve* = handle[Geom2d_TrimmedCurve]

## ! Defines a portion of a curve limited by two values of
## ! parameters inside the parametric domain of the curve.
## ! The trimmed curve is defined by:
## ! - the basis curve, and
## ! - the two parameter values which limit it.
## ! The trimmed curve can either have the same
## ! orientation as the basis curve or the opposite orientation.

type
  Geom2d_TrimmedCurve* {.importcpp: "Geom2d_TrimmedCurve",
                        header: "Geom2d_TrimmedCurve.hxx", bycopy.} = object of Geom2d_BoundedCurve ##
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


proc constructGeom2d_TrimmedCurve*(C: handle[Geom2d_Curve]; U1: Standard_Real;
                                  U2: Standard_Real;
                                  Sense: Standard_Boolean = Standard_True;
    theAdjustPeriodic: Standard_Boolean = Standard_True): Geom2d_TrimmedCurve {.
    constructor, importcpp: "Geom2d_TrimmedCurve(@)",
    header: "Geom2d_TrimmedCurve.hxx".}
proc Reverse*(this: var Geom2d_TrimmedCurve) {.importcpp: "Reverse",
    header: "Geom2d_TrimmedCurve.hxx".}
proc ReversedParameter*(this: Geom2d_TrimmedCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc SetTrim*(this: var Geom2d_TrimmedCurve; U1: Standard_Real; U2: Standard_Real;
             Sense: Standard_Boolean = Standard_True;
             theAdjustPeriodic: Standard_Boolean = Standard_True) {.
    importcpp: "SetTrim", header: "Geom2d_TrimmedCurve.hxx".}
proc BasisCurve*(this: Geom2d_TrimmedCurve): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom2d_TrimmedCurve.hxx".}
proc Continuity*(this: Geom2d_TrimmedCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_TrimmedCurve.hxx".}
proc IsCN*(this: Geom2d_TrimmedCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom2d_TrimmedCurve.hxx".}
proc EndPoint*(this: Geom2d_TrimmedCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "EndPoint", header: "Geom2d_TrimmedCurve.hxx".}
proc FirstParameter*(this: Geom2d_TrimmedCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc IsClosed*(this: Geom2d_TrimmedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_TrimmedCurve.hxx".}
proc IsPeriodic*(this: Geom2d_TrimmedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_TrimmedCurve.hxx".}
proc Period*(this: Geom2d_TrimmedCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Geom2d_TrimmedCurve.hxx".}
proc LastParameter*(this: Geom2d_TrimmedCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_TrimmedCurve.hxx".}
proc StartPoint*(this: Geom2d_TrimmedCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "StartPoint", header: "Geom2d_TrimmedCurve.hxx".}
proc D0*(this: Geom2d_TrimmedCurve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_TrimmedCurve.hxx".}
proc D1*(this: Geom2d_TrimmedCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_TrimmedCurve.hxx".}
proc D2*(this: Geom2d_TrimmedCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2d_TrimmedCurve.hxx".}
proc D3*(this: Geom2d_TrimmedCurve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_TrimmedCurve.hxx".}
proc DN*(this: Geom2d_TrimmedCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_TrimmedCurve.hxx".}
proc Transform*(this: var Geom2d_TrimmedCurve; T: gp_Trsf2d) {.importcpp: "Transform",
    header: "Geom2d_TrimmedCurve.hxx".}
proc TransformedParameter*(this: Geom2d_TrimmedCurve; U: Standard_Real; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter",
    header: "Geom2d_TrimmedCurve.hxx".}
proc ParametricTransformation*(this: Geom2d_TrimmedCurve; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom2d_TrimmedCurve.hxx".}
proc Copy*(this: Geom2d_TrimmedCurve): handle[Geom2d_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_TrimmedCurve.hxx".}
proc DumpJson*(this: Geom2d_TrimmedCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_TrimmedCurve.hxx".}
type
  Geom2d_TrimmedCurvebase_type* = Geom2d_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "Geom2d_TrimmedCurve::get_type_name(@)",
                              header: "Geom2d_TrimmedCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_TrimmedCurve::get_type_descriptor(@)",
    header: "Geom2d_TrimmedCurve.hxx".}
proc DynamicType*(this: Geom2d_TrimmedCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_TrimmedCurve.hxx".}