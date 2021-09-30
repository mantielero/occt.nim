##  Created on: 1994-02-23
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor2d_HCurve2d"
type
  HandleAdaptor2dHCurve2d* = Handle[Adaptor2dHCurve2d]

## ! Root class for 2D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve, and those required of
## ! the curve by algorithms, which use it.
## ! A derived specific class is provided:
## ! Geom2dAdaptor_HCurve for a curve from the Geom2d package.

type
  Adaptor2dHCurve2d* {.importcpp: "Adaptor2d_HCurve2d",
                      header: "Adaptor2d_HCurve2d.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## reference
                                                                                        ## to
                                                                                        ## the
                                                                                        ## Curve2d
                                                                                        ## inside
                                                                                        ## the
                                                                                        ## HCurve2d.


proc curve2d*(this: Adaptor2dHCurve2d): Adaptor2dCurve2d {.noSideEffect,
    importcpp: "Curve2d", header: "Adaptor2d_HCurve2d.hxx".}
proc firstParameter*(this: Adaptor2dHCurve2d): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor2d_HCurve2d.hxx".}
proc lastParameter*(this: Adaptor2dHCurve2d): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor2d_HCurve2d.hxx".}
proc continuity*(this: Adaptor2dHCurve2d): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor2d_HCurve2d.hxx".}
proc nbIntervals*(this: Adaptor2dHCurve2d; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Adaptor2d_HCurve2d.hxx".}
#[ proc intervals*(this: Adaptor2dHCurve2d; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor2d_HCurve2d.hxx".} ]#
proc trim*(this: Adaptor2dHCurve2d; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor2dHCurve2d] {.noSideEffect, importcpp: "Trim",
                        header: "Adaptor2d_HCurve2d.hxx".}
proc isClosed*(this: Adaptor2dHCurve2d): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Adaptor2d_HCurve2d.hxx".}
proc isPeriodic*(this: Adaptor2dHCurve2d): bool {.noSideEffect,
    importcpp: "IsPeriodic", header: "Adaptor2d_HCurve2d.hxx".}
proc period*(this: Adaptor2dHCurve2d): cfloat {.noSideEffect, importcpp: "Period",
    header: "Adaptor2d_HCurve2d.hxx".}
proc value*(this: Adaptor2dHCurve2d; u: cfloat): Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Adaptor2d_HCurve2d.hxx".}
proc d0*(this: Adaptor2dHCurve2d; u: cfloat; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Adaptor2d_HCurve2d.hxx".}
proc d1*(this: Adaptor2dHCurve2d; u: cfloat; p: var Pnt2d; v: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "Adaptor2d_HCurve2d.hxx".}
proc d2*(this: Adaptor2dHCurve2d; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "Adaptor2d_HCurve2d.hxx".}
proc d3*(this: Adaptor2dHCurve2d; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3",
                      header: "Adaptor2d_HCurve2d.hxx".}
proc dn*(this: Adaptor2dHCurve2d; u: cfloat; n: cint): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Adaptor2d_HCurve2d.hxx".}
proc resolution*(this: Adaptor2dHCurve2d; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "Adaptor2d_HCurve2d.hxx".}
proc getType*(this: Adaptor2dHCurve2d): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor2d_HCurve2d.hxx".}
proc line*(this: Adaptor2dHCurve2d): Lin2d {.noSideEffect, importcpp: "Line",
    header: "Adaptor2d_HCurve2d.hxx".}
proc circle*(this: Adaptor2dHCurve2d): Circ2d {.noSideEffect, importcpp: "Circle",
    header: "Adaptor2d_HCurve2d.hxx".}
proc ellipse*(this: Adaptor2dHCurve2d): Elips2d {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor2d_HCurve2d.hxx".}
proc hyperbola*(this: Adaptor2dHCurve2d): Hypr2d {.noSideEffect,
    importcpp: "Hyperbola", header: "Adaptor2d_HCurve2d.hxx".}
proc parabola*(this: Adaptor2dHCurve2d): Parab2d {.noSideEffect,
    importcpp: "Parabola", header: "Adaptor2d_HCurve2d.hxx".}
proc degree*(this: Adaptor2dHCurve2d): cint {.noSideEffect, importcpp: "Degree",
    header: "Adaptor2d_HCurve2d.hxx".}
proc isRational*(this: Adaptor2dHCurve2d): bool {.noSideEffect,
    importcpp: "IsRational", header: "Adaptor2d_HCurve2d.hxx".}
proc nbPoles*(this: Adaptor2dHCurve2d): cint {.noSideEffect, importcpp: "NbPoles",
    header: "Adaptor2d_HCurve2d.hxx".}
proc nbKnots*(this: Adaptor2dHCurve2d): cint {.noSideEffect, importcpp: "NbKnots",
    header: "Adaptor2d_HCurve2d.hxx".}
proc bezier*(this: Adaptor2dHCurve2d): Handle[Geom2dBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor2d_HCurve2d.hxx".}
proc bSpline*(this: Adaptor2dHCurve2d): Handle[Geom2dBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor2d_HCurve2d.hxx".}
type
  Adaptor2dHCurve2dbaseType* = StandardTransient

#[ proc getTypeName*(): cstring {.importcpp: "Adaptor2d_HCurve2d::get_type_name(@)",
                            header: "Adaptor2d_HCurve2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor2d_HCurve2d::get_type_descriptor(@)",
    header: "Adaptor2d_HCurve2d.hxx".}
proc dynamicType*(this: Adaptor2dHCurve2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor2d_HCurve2d.hxx".} ]#

























