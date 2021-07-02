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

discard "forward decl of Geom2dAdaptor_HCurve"
type
  Geom2dEvaluatorOffsetCurve* {.importcpp: "Geom2dEvaluator_OffsetCurve",
                               header: "Geom2dEvaluator_OffsetCurve.hxx", bycopy.} = object of Geom2dEvaluatorCurve ##
                                                                                                             ## !
                                                                                                             ## Initialize
                                                                                                             ## evaluator
                                                                                                             ## by
                                                                                                             ## curve
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Calculate
                                                                                                             ## value
                                                                                                             ## of
                                                                                                             ## base
                                                                                                             ## curve/adaptor
    ## /< offset value


proc constructGeom2dEvaluatorOffsetCurve*(theBase: Handle[Geom2dCurve];
    theOffset: StandardReal): Geom2dEvaluatorOffsetCurve {.constructor,
    importcpp: "Geom2dEvaluator_OffsetCurve(@)",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc constructGeom2dEvaluatorOffsetCurve*(theBase: Handle[Geom2dAdaptorHCurve];
    theOffset: StandardReal): Geom2dEvaluatorOffsetCurve {.constructor,
    importcpp: "Geom2dEvaluator_OffsetCurve(@)",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc setOffsetValue*(this: var Geom2dEvaluatorOffsetCurve; theOffset: StandardReal) {.
    importcpp: "SetOffsetValue", header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc d0*(this: Geom2dEvaluatorOffsetCurve; theU: StandardReal; theValue: var GpPnt2d) {.
    noSideEffect, importcpp: "D0", header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc d1*(this: Geom2dEvaluatorOffsetCurve; theU: StandardReal; theValue: var GpPnt2d;
        theD1: var GpVec2d) {.noSideEffect, importcpp: "D1",
                           header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc d2*(this: Geom2dEvaluatorOffsetCurve; theU: StandardReal; theValue: var GpPnt2d;
        theD1: var GpVec2d; theD2: var GpVec2d) {.noSideEffect, importcpp: "D2",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc d3*(this: Geom2dEvaluatorOffsetCurve; theU: StandardReal; theValue: var GpPnt2d;
        theD1: var GpVec2d; theD2: var GpVec2d; theD3: var GpVec2d) {.noSideEffect,
    importcpp: "D3", header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc dn*(this: Geom2dEvaluatorOffsetCurve; theU: StandardReal;
        theDeriv: StandardInteger): GpVec2d {.noSideEffect, importcpp: "DN",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
type
  Geom2dEvaluatorOffsetCurvebaseType* = Geom2dEvaluatorCurve

proc getTypeName*(): cstring {.importcpp: "Geom2dEvaluator_OffsetCurve::get_type_name(@)",
                            header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2dEvaluator_OffsetCurve::get_type_descriptor(@)",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc dynamicType*(this: Geom2dEvaluatorOffsetCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
discard "forward decl of Geom2dEvaluator_OffsetCurve"
type
  HandleGeom2dEvaluatorOffsetCurve* = Handle[Geom2dEvaluatorOffsetCurve]


