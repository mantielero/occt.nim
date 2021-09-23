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
  ../Standard/Standard, ../Standard/Standard_Type, Geom2d_Geometry,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer

discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom2d_UndefinedDerivative"
discard "forward decl of Geom2d_UndefinedValue"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2d_Curve"
type
  Handle_Geom2d_Curve* = handle[Geom2d_Curve]

## ! The abstract class Curve describes the common
## ! behavior of curves in 2D space. The Geom2d
## ! package provides numerous concrete classes of
## ! derived curves, including lines, circles, conics, Bezier
## ! or BSpline curves, etc.
## ! The main characteristic of these curves is that they
## ! are parameterized. The Geom2d_Curve class shows:
## ! - how to work with the parametric equation of a
## ! curve in order to calculate the point of parameter
## ! u, together with the vector tangent and the
## ! derivative vectors of order 2, 3,..., N at this point;
## ! - how to obtain general information about the curve
## ! (for example, level of continuity, closed
## ! characteristics, periodicity, bounds of the parameter field);
## ! - how the parameter changes when a geometric
## ! transformation is applied to the curve or when the
## ! orientation of the curve is inverted.
## ! All curves must have a geometric continuity: a curve is
## ! at least "C0". Generally, this property is checked at
## ! the time of construction or when the curve is edited.
## ! Where this is not the case, the documentation
## ! explicitly states so.
## ! Warning
## ! The Geom2d package does not prevent the
## ! construction of curves with null length or curves which
## ! self-intersect.

type
  Geom2d_Curve* {.importcpp: "Geom2d_Curve", header: "Geom2d_Curve.hxx", bycopy.} = object of Geom2d_Geometry ##
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
    opencascade* {.importc: "opencascade".}: Standard_NODISCARD


proc Reverse*(this: var Geom2d_Curve) {.importcpp: "Reverse",
                                    header: "Geom2d_Curve.hxx".}
proc ReversedParameter*(this: Geom2d_Curve; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom2d_Curve.hxx".}
proc TransformedParameter*(this: Geom2d_Curve; U: Standard_Real; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "TransformedParameter", header: "Geom2d_Curve.hxx".}
proc ParametricTransformation*(this: Geom2d_Curve; T: gp_Trsf2d): Standard_Real {.
    noSideEffect, importcpp: "ParametricTransformation", header: "Geom2d_Curve.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_Curve > [end of template] Reversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc FirstParameter*(this: Geom2d_Curve): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "Geom2d_Curve.hxx".}
proc LastParameter*(this: Geom2d_Curve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "Geom2d_Curve.hxx".}
proc IsClosed*(this: Geom2d_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "Geom2d_Curve.hxx".}
proc IsPeriodic*(this: Geom2d_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "Geom2d_Curve.hxx".}
proc Period*(this: Geom2d_Curve): Standard_Real {.noSideEffect, importcpp: "Period",
    header: "Geom2d_Curve.hxx".}
proc Continuity*(this: Geom2d_Curve): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom2d_Curve.hxx".}
proc IsCN*(this: Geom2d_Curve; N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom2d_Curve.hxx".}
proc D0*(this: Geom2d_Curve; U: Standard_Real; P: var gp_Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2d_Curve.hxx".}
proc D1*(this: Geom2d_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2d_Curve.hxx".}
proc D2*(this: Geom2d_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2", header: "Geom2d_Curve.hxx".}
proc D3*(this: Geom2d_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2d_Curve.hxx".}
proc DN*(this: Geom2d_Curve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2d_Curve.hxx".}
proc Value*(this: Geom2d_Curve; U: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Geom2d_Curve.hxx".}
proc DumpJson*(this: Geom2d_Curve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Curve.hxx".}
type
  Geom2d_Curvebase_type* = Geom2d_Geometry

proc get_type_name*(): cstring {.importcpp: "Geom2d_Curve::get_type_name(@)",
                              header: "Geom2d_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2d_Curve::get_type_descriptor(@)", header: "Geom2d_Curve.hxx".}
proc DynamicType*(this: Geom2d_Curve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Curve.hxx".}