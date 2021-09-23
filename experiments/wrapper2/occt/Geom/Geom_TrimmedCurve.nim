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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Geom_BoundedCurve, ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer

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
  Handle_Geom_TrimmedCurve* = handle[Geom_TrimmedCurve]

## ! Describes a portion of a curve (termed the "basis
## ! curve") limited by two parameter values inside the
## ! parametric domain of the basis curve.
## ! The trimmed curve is defined by:
## ! - the basis curve, and
## ! - the two parameter values which limit it.
## ! The trimmed curve can either have the same
## ! orientation as the basis curve or the opposite orientation.

type
  Geom_TrimmedCurve* {.importcpp: "Geom_TrimmedCurve",
                      header: "Geom_TrimmedCurve.hxx", bycopy.} = object of Geom_BoundedCurve ##
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


proc constructGeom_TrimmedCurve*(C: handle[Geom_Curve]; U1: Standard_Real;
                                U2: Standard_Real;
                                Sense: Standard_Boolean = Standard_True;
    theAdjustPeriodic: Standard_Boolean = Standard_True): Geom_TrimmedCurve {.
    constructor, importcpp: "Geom_TrimmedCurve(@)", header: "Geom_TrimmedCurve.hxx".}
proc Reverse*(this: var Geom_TrimmedCurve) {.importcpp: "Reverse",
    header: "Geom_TrimmedCurve.hxx".}
proc ReversedParameter*(this: Geom_TrimmedCurve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_TrimmedCurve.hxx".}
proc SetTrim*(this: var Geom_TrimmedCurve; U1: Standard_Real; U2: Standard_Real;
             Sense: Standard_Boolean = Standard_True;
             theAdjustPeriodic: Standard_Boolean = Standard_True) {.
    importcpp: "SetTrim", header: "Geom_TrimmedCurve.hxx".}
proc BasisCurve*(this: Geom_TrimmedCurve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Geom_TrimmedCurve.hxx".}
proc Continuity*(this: Geom_TrimmedCurve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_TrimmedCurve.hxx".}
proc IsCN*(this: Geom_TrimmedCurve; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCN", header: "Geom_TrimmedCurve.hxx".}
proc EndPoint*(this: Geom_TrimmedCurve): gp_Pnt {.noSideEffect,
    importcpp: "EndPoint", header: "Geom_TrimmedCurve.hxx".}
proc FirstParameter*(this: Geom_TrimmedCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_TrimmedCurve.hxx".}
proc IsClosed*(this: Geom_TrimmedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_TrimmedCurve.hxx".}
proc IsPeriodic*(this: Geom_TrimmedCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_TrimmedCurve.hxx".}
proc Period*(this: Geom_TrimmedCurve): Standard_Real {.noSideEffect,
    importcpp: "Period", header: "Geom_TrimmedCurve.hxx".}
proc LastParameter*(this: Geom_TrimmedCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_TrimmedCurve.hxx".}
proc StartPoint*(this: Geom_TrimmedCurve): gp_Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "Geom_TrimmedCurve.hxx".}
proc D0*(this: Geom_TrimmedCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "Geom_TrimmedCurve.hxx".}
proc D1*(this: Geom_TrimmedCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_TrimmedCurve.hxx".}
proc D2*(this: Geom_TrimmedCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
                       header: "Geom_TrimmedCurve.hxx".}
proc D3*(this: Geom_TrimmedCurve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.noSideEffect, importcpp: "D3",
                                    header: "Geom_TrimmedCurve.hxx".}
proc DN*(this: Geom_TrimmedCurve; U: Standard_Real; N: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "Geom_TrimmedCurve.hxx".}
proc Transform*(this: var Geom_TrimmedCurve; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_TrimmedCurve.hxx".}
proc TransformedParameter*(this: Geom_TrimmedCurve; U: Standard_Real; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter",
    header: "Geom_TrimmedCurve.hxx".}
proc ParametricTransformation*(this: Geom_TrimmedCurve; T: gp_Trsf): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_TrimmedCurve.hxx".}
proc Copy*(this: Geom_TrimmedCurve): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_TrimmedCurve.hxx".}
proc DumpJson*(this: Geom_TrimmedCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_TrimmedCurve.hxx".}
type
  Geom_TrimmedCurvebase_type* = Geom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "Geom_TrimmedCurve::get_type_name(@)",
                              header: "Geom_TrimmedCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_TrimmedCurve::get_type_descriptor(@)",
    header: "Geom_TrimmedCurve.hxx".}
proc DynamicType*(this: Geom_TrimmedCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_TrimmedCurve.hxx".}