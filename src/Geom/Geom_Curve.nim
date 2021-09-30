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

discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Curve"


type
  GeomCurve* {.importcpp: "Geom_Curve", header: "Geom_Curve.hxx", bycopy.} = object of GeomGeometry ##
                                                                                          ## !
                                                                                          ## Changes
                                                                                          ## the
                                                                                          ## direction
                                                                                          ## of
                                                                                          ## parametrization
                                                                                          ## of
                                                                                          ## <me>.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## "FirstParameter"
                                                                                          ## and
                                                                                          ## the
                                                                                          ## "LastParameter"
                                                                                          ## are
                                                                                          ## not
                                                                                          ## changed
                                                                                          ##
                                                                                          ## !
                                                                                          ## but
                                                                                          ## the
                                                                                          ## orientation
                                                                                          ## of
                                                                                          ## the
                                                                                          ## curve
                                                                                          ## is
                                                                                          ## modified.
                                                                                          ## If
                                                                                          ## the
                                                                                          ## curve
                                                                                          ##
                                                                                          ## !
                                                                                          ## is
                                                                                          ## bounded
                                                                                          ## the
                                                                                          ## StartPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## initial
                                                                                          ## curve
                                                                                          ## becomes
                                                                                          ## the
                                                                                          ##
                                                                                          ## !
                                                                                          ## EndPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## reversed
                                                                                          ## curve
                                                                                          ## and
                                                                                          ## the
                                                                                          ## EndPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## initial
                                                                                          ##
                                                                                          ## !
                                                                                          ## curve
                                                                                          ## becomes
                                                                                          ## the
                                                                                          ## StartPoint
                                                                                          ## of
                                                                                          ## the
                                                                                          ## reversed
                                                                                          ## curve.


type
  HandleGeomCurve* = Handle[GeomCurve]

## ! The abstract class Curve describes the common
## ! behavior of curves in 3D space. The Geom package
## ! provides numerous concrete classes of derived
## ! curves, including lines, circles, conics, Bezier or
## ! BSpline curves, etc.
## ! The main characteristic of these curves is that they
## ! are parameterized. The Geom_Curve class shows:
## ! - how to work with the parametric equation of a curve
## ! in order to calculate the point of parameter u,
## ! together with the vector tangent and the derivative
## ! vectors of order 2, 3,..., N at this point;
## ! - how to obtain general information about the curve
## ! (for example, level of continuity, closed
## ! characteristics, periodicity, bounds of the parameter field);
## ! - how the parameter changes when a geometric
## ! transformation is applied to the curve or when the
## ! orientation of the curve is inverted.
## ! All curves must have a geometric continuity: a curve is
## ! at least "C0". Generally, this property is checked at
## ! the time of construction or when the curve is edited.
## ! Where this is not the case, the documentation states so explicitly.
## ! Warning
## ! The Geom package does not prevent the
## ! construction of curves with null length or curves which
## ! self-intersect.

type
  GeomCurvebaseType* = GeomGeometry

proc reverse*(this: var GeomCurve) {.importcpp: "Reverse", header: "Geom_Curve.hxx".}
proc reversedParameter*(this: GeomCurve; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Curve.hxx".}
proc transformedParameter*(this: GeomCurve; u: StandardReal; t: Trsf): StandardReal {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom_Curve.hxx".}
proc parametricTransformation*(this: GeomCurve; t: Trsf): StandardReal {.noSideEffect,
    importcpp: "ParametricTransformation", header: "Geom_Curve.hxx".}
proc reversed*(this: GeomCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Reversed", header: "Geom_Curve.hxx".}
proc firstParameter*(this: GeomCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom_Curve.hxx".}
proc lastParameter*(this: GeomCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "Geom_Curve.hxx".}
proc isClosed*(this: GeomCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom_Curve.hxx".}
proc isPeriodic*(this: GeomCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom_Curve.hxx".}
proc period*(this: GeomCurve): StandardReal {.noSideEffect, importcpp: "Period",
    header: "Geom_Curve.hxx".}
#[ proc continuity*(this: GeomCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_Curve.hxx".} ]#
proc isCN*(this: GeomCurve; n: int): StandardBoolean {.noSideEffect, importcpp: "IsCN",
    header: "Geom_Curve.hxx".}
proc d0*(this: GeomCurve; u: StandardReal; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Geom_Curve.hxx".}
proc d1*(this: GeomCurve; u: StandardReal; p: var Pnt; v1: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Geom_Curve.hxx".}
proc d2*(this: GeomCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_Curve.hxx".}
proc d3*(this: GeomCurve; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Geom_Curve.hxx".}
proc dn*(this: GeomCurve; u: StandardReal; n: int): Vec {.noSideEffect, importcpp: "DN",
    header: "Geom_Curve.hxx".}
proc value*(this: GeomCurve; u: StandardReal): Pnt {.noSideEffect, importcpp: "Value",
    header: "Geom_Curve.hxx".}
proc dumpJson*(this: GeomCurve; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Geom_Curve.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "Geom_Curve::get_type_name(@)",
                            header: "Geom_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Curve::get_type_descriptor(@)", header: "Geom_Curve.hxx".}
proc dynamicType*(this: GeomCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Curve.hxx".} ]#