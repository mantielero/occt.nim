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

discard "forward decl of Geom_Curve"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_TrimmedCurve"
discard "forward decl of Geom_TrimmedCurve"
type
  HandleGeomTrimmedCurve* = Handle[GeomTrimmedCurve]

## ! Describes a portion of a curve (termed the "basis
## ! curve") limited by two parameter values inside the
## ! parametric domain of the basis curve.
## ! The trimmed curve is defined by:
## ! - the basis curve, and
## ! - the two parameter values which limit it.
## ! The trimmed curve can either have the same
## ! orientation as the basis curve or the opposite orientation.

type
  GeomTrimmedCurve* {.importcpp: "Geom_TrimmedCurve",
                     header: "Geom_TrimmedCurve.hxx", bycopy.} = object of GeomBoundedCurve ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## a
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## from
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## C
                                                                                     ##
                                                                                     ## !
                                                                                     ## which
                                                                                     ## is
                                                                                     ## limited
                                                                                     ## between
                                                                                     ## parameter
                                                                                     ## values
                                                                                     ## U1
                                                                                     ## and
                                                                                     ## U2.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Note:
                                                                                     ## -
                                                                                     ## U1
                                                                                     ## can
                                                                                     ## be
                                                                                     ## greater
                                                                                     ## or
                                                                                     ## less
                                                                                     ## than
                                                                                     ## U2;
                                                                                     ## in
                                                                                     ## both
                                                                                     ## cases,
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
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
                                                                                     ## -
                                                                                     ## If
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## C
                                                                                     ## is
                                                                                     ## periodic,
                                                                                     ## there
                                                                                     ## is
                                                                                     ## an
                                                                                     ##
                                                                                     ## !
                                                                                     ## ambiguity
                                                                                     ## because
                                                                                     ## two
                                                                                     ## parts
                                                                                     ## are
                                                                                     ## available.
                                                                                     ## In
                                                                                     ## this
                                                                                     ##
                                                                                     ## !
                                                                                     ## case,
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## has
                                                                                     ## the
                                                                                     ## same
                                                                                     ## orientation
                                                                                     ##
                                                                                     ## !
                                                                                     ## as
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## if
                                                                                     ## Sense
                                                                                     ## is
                                                                                     ## true
                                                                                     ## (default
                                                                                     ## value)
                                                                                     ##
                                                                                     ## !
                                                                                     ## or
                                                                                     ## the
                                                                                     ## opposite
                                                                                     ## orientation
                                                                                     ## if
                                                                                     ## Sense
                                                                                     ## is
                                                                                     ## false.
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## If
                                                                                     ## the
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## closed
                                                                                     ## but
                                                                                     ## not
                                                                                     ## periodic,
                                                                                     ## it
                                                                                     ## is
                                                                                     ## not
                                                                                     ##
                                                                                     ## !
                                                                                     ## possible
                                                                                     ## to
                                                                                     ## keep
                                                                                     ## the
                                                                                     ## part
                                                                                     ## of
                                                                                     ## the
                                                                                     ## curve
                                                                                     ## which
                                                                                     ##
                                                                                     ## !
                                                                                     ## includes
                                                                                     ## the
                                                                                     ## junction
                                                                                     ## point
                                                                                     ## (except
                                                                                     ## if
                                                                                     ## the
                                                                                     ## junction
                                                                                     ##
                                                                                     ## !
                                                                                     ## point
                                                                                     ## is
                                                                                     ## at
                                                                                     ## the
                                                                                     ## beginning
                                                                                     ## or
                                                                                     ## at
                                                                                     ## the
                                                                                     ## end
                                                                                     ## of
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## trimmed
                                                                                     ## curve).
                                                                                     ## If
                                                                                     ## you
                                                                                     ## tried
                                                                                     ## to
                                                                                     ## do
                                                                                     ## this,
                                                                                     ## you
                                                                                     ## could
                                                                                     ##
                                                                                     ## !
                                                                                     ## alter
                                                                                     ## the
                                                                                     ## fundamental
                                                                                     ## characteristics
                                                                                     ## of
                                                                                     ## the
                                                                                     ## basis
                                                                                     ##
                                                                                     ## !
                                                                                     ## curve,
                                                                                     ## which
                                                                                     ## are
                                                                                     ## used,
                                                                                     ## for
                                                                                     ## example,
                                                                                     ## to
                                                                                     ## compute
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## derivatives
                                                                                     ## of
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve.
                                                                                     ## The
                                                                                     ## rules
                                                                                     ##
                                                                                     ## !
                                                                                     ## for
                                                                                     ## a
                                                                                     ## closed
                                                                                     ## curve
                                                                                     ## are
                                                                                     ## therefore
                                                                                     ## the
                                                                                     ## same
                                                                                     ## as
                                                                                     ##
                                                                                     ## !
                                                                                     ## those
                                                                                     ## for
                                                                                     ## an
                                                                                     ## open
                                                                                     ## curve.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Warning:
                                                                                     ## The
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## built
                                                                                     ## from
                                                                                     ## a
                                                                                     ## copy
                                                                                     ## of
                                                                                     ## curve
                                                                                     ## C.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Therefore,
                                                                                     ## when
                                                                                     ## C
                                                                                     ## is
                                                                                     ## modified,
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ##
                                                                                     ## !
                                                                                     ## is
                                                                                     ## not
                                                                                     ## modified.
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## If
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## periodic
                                                                                     ## and
                                                                                     ## theAdjustPeriodic
                                                                                     ## is
                                                                                     ## True,
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## bounds
                                                                                     ## of
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve
                                                                                     ## may
                                                                                     ## be
                                                                                     ## different
                                                                                     ## from
                                                                                     ## U1
                                                                                     ## and
                                                                                     ## U2
                                                                                     ##
                                                                                     ## !
                                                                                     ## if
                                                                                     ## the
                                                                                     ## parametric
                                                                                     ## origin
                                                                                     ## of
                                                                                     ## the
                                                                                     ## basis
                                                                                     ## curve
                                                                                     ## is
                                                                                     ## within
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## arc
                                                                                     ## of
                                                                                     ## the
                                                                                     ## trimmed
                                                                                     ## curve.
                                                                                     ## In
                                                                                     ## this
                                                                                     ## case,
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## modified
                                                                                     ## parameter
                                                                                     ## will
                                                                                     ## be
                                                                                     ## equal
                                                                                     ## to
                                                                                     ## U1
                                                                                     ## or
                                                                                     ## U2
                                                                                     ##
                                                                                     ## !
                                                                                     ## plus
                                                                                     ## or
                                                                                     ## minus
                                                                                     ## the
                                                                                     ## period.
                                                                                     ##
                                                                                     ## !
                                                                                     ## When
                                                                                     ## theAdjustPeriodic
                                                                                     ## is
                                                                                     ## False,
                                                                                     ## parameters
                                                                                     ## U1
                                                                                     ## and
                                                                                     ## U2
                                                                                     ## will
                                                                                     ## be
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## same,
                                                                                     ## without
                                                                                     ## adjustment
                                                                                     ## into
                                                                                     ## the
                                                                                     ## first
                                                                                     ## period.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Exceptions
                                                                                     ##
                                                                                     ## !
                                                                                     ## Standard_ConstructionError
                                                                                     ## if:
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## C
                                                                                     ## is
                                                                                     ## not
                                                                                     ## periodic
                                                                                     ## and
                                                                                     ## U1
                                                                                     ## or
                                                                                     ## U2
                                                                                     ## is
                                                                                     ## outside
                                                                                     ## the
                                                                                     ##
                                                                                     ## !
                                                                                     ## bounds
                                                                                     ## of
                                                                                     ## C,
                                                                                     ## or
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## U1
                                                                                     ## is
                                                                                     ## equal
                                                                                     ## to
                                                                                     ## U2.


proc constructGeomTrimmedCurve*(c: Handle[GeomCurve]; u1: float; u2: float;
                               sense: bool = true; theAdjustPeriodic: bool = true): GeomTrimmedCurve {.
    constructor, importcpp: "Geom_TrimmedCurve(@)", header: "Geom_TrimmedCurve.hxx".}
proc reverse*(this: var GeomTrimmedCurve) {.importcpp: "Reverse",
                                        header: "Geom_TrimmedCurve.hxx".}
proc reversedParameter*(this: GeomTrimmedCurve; u: float): float {.noSideEffect,
    importcpp: "ReversedParameter", header: "Geom_TrimmedCurve.hxx".}
proc setTrim*(this: var GeomTrimmedCurve; u1: float; u2: float; sense: bool = true;
             theAdjustPeriodic: bool = true) {.importcpp: "SetTrim",
    header: "Geom_TrimmedCurve.hxx".}
proc basisCurve*(this: GeomTrimmedCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom_TrimmedCurve.hxx".}
proc continuity*(this: GeomTrimmedCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_TrimmedCurve.hxx".}
proc isCN*(this: GeomTrimmedCurve; n: int): bool {.noSideEffect, importcpp: "IsCN",
    header: "Geom_TrimmedCurve.hxx".}
proc endPoint*(this: GeomTrimmedCurve): Pnt {.noSideEffect, importcpp: "EndPoint",
    header: "Geom_TrimmedCurve.hxx".}
proc firstParameter*(this: GeomTrimmedCurve): float {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_TrimmedCurve.hxx".}
proc isClosed*(this: GeomTrimmedCurve): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Geom_TrimmedCurve.hxx".}
proc isPeriodic*(this: GeomTrimmedCurve): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_TrimmedCurve.hxx".}
proc period*(this: GeomTrimmedCurve): float {.noSideEffect, importcpp: "Period",
    header: "Geom_TrimmedCurve.hxx".}
proc lastParameter*(this: GeomTrimmedCurve): float {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_TrimmedCurve.hxx".}
proc startPoint*(this: GeomTrimmedCurve): Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "Geom_TrimmedCurve.hxx".}
proc d0*(this: GeomTrimmedCurve; u: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Geom_TrimmedCurve.hxx".}
proc d1*(this: GeomTrimmedCurve; u: float; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_TrimmedCurve.hxx".}
proc d2*(this: GeomTrimmedCurve; u: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_TrimmedCurve.hxx".}
proc d3*(this: GeomTrimmedCurve; u: float; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Geom_TrimmedCurve.hxx".}
proc dn*(this: GeomTrimmedCurve; u: float; n: int): Vec {.noSideEffect, importcpp: "DN",
    header: "Geom_TrimmedCurve.hxx".}
proc transform*(this: var GeomTrimmedCurve; t: Trsf) {.importcpp: "Transform",
    header: "Geom_TrimmedCurve.hxx".}
proc transformedParameter*(this: GeomTrimmedCurve; u: float; t: Trsf): float {.
    noSideEffect, importcpp: "TransformedParameter",
    header: "Geom_TrimmedCurve.hxx".}
proc parametricTransformation*(this: GeomTrimmedCurve; t: Trsf): float {.noSideEffect,
    importcpp: "ParametricTransformation", header: "Geom_TrimmedCurve.hxx".}
proc copy*(this: GeomTrimmedCurve): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_TrimmedCurve.hxx".}
proc dumpJson*(this: GeomTrimmedCurve; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_TrimmedCurve.hxx".}
type
  GeomTrimmedCurvebaseType* = GeomBoundedCurve

proc getTypeName*(): cstring {.importcpp: "Geom_TrimmedCurve::get_type_name(@)",
                            header: "Geom_TrimmedCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_TrimmedCurve::get_type_descriptor(@)",
    header: "Geom_TrimmedCurve.hxx".}
proc dynamicType*(this: GeomTrimmedCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_TrimmedCurve.hxx".}
