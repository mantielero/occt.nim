##  Created on: 2015-09-21
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dEvaluatorCurve* {.importcpp: "Geom2dEvaluator_Curve",
                         header: "Geom2dEvaluator_Curve.hxx", bycopy.} = object of StandardTransient


proc constructGeom2dEvaluatorCurve*(): Geom2dEvaluatorCurve {.constructor,
    importcpp: "Geom2dEvaluator_Curve(@)", header: "Geom2dEvaluator_Curve.hxx".}
proc d0*(this: Geom2dEvaluatorCurve; theU: StandardReal; theValue: var GpPnt2d) {.
    noSideEffect, importcpp: "D0", header: "Geom2dEvaluator_Curve.hxx".}
proc d1*(this: Geom2dEvaluatorCurve; theU: StandardReal; theValue: var GpPnt2d;
        theD1: var GpVec2d) {.noSideEffect, importcpp: "D1",
                           header: "Geom2dEvaluator_Curve.hxx".}
proc d2*(this: Geom2dEvaluatorCurve; theU: StandardReal; theValue: var GpPnt2d;
        theD1: var GpVec2d; theD2: var GpVec2d) {.noSideEffect, importcpp: "D2",
    header: "Geom2dEvaluator_Curve.hxx".}
proc d3*(this: Geom2dEvaluatorCurve; theU: StandardReal; theValue: var GpPnt2d;
        theD1: var GpVec2d; theD2: var GpVec2d; theD3: var GpVec2d) {.noSideEffect,
    importcpp: "D3", header: "Geom2dEvaluator_Curve.hxx".}
proc dn*(this: Geom2dEvaluatorCurve; theU: StandardReal; theDerU: StandardInteger): GpVec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2dEvaluator_Curve.hxx".}
type
  Geom2dEvaluatorCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom2dEvaluator_Curve::get_type_name(@)",
                            header: "Geom2dEvaluator_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2dEvaluator_Curve::get_type_descriptor(@)",
    header: "Geom2dEvaluator_Curve.hxx".}
proc dynamicType*(this: Geom2dEvaluatorCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2dEvaluator_Curve.hxx".}
discard "forward decl of Geom2dEvaluator_Curve"
type
  HandleGeom2dEvaluatorCurve* = Handle[Geom2dEvaluatorCurve]


