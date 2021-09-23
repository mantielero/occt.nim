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

import
  ../Geom2d/Geom2d_Curve, Geom2dEvaluator_Curve

discard "forward decl of Geom2dAdaptor_HCurve"
type
  Geom2dEvaluator_OffsetCurve* {.importcpp: "Geom2dEvaluator_OffsetCurve",
                                header: "Geom2dEvaluator_OffsetCurve.hxx", bycopy.} = object of Geom2dEvaluator_Curve ##
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


proc constructGeom2dEvaluator_OffsetCurve*(theBase: handle[Geom2d_Curve];
    theOffset: Standard_Real): Geom2dEvaluator_OffsetCurve {.constructor,
    importcpp: "Geom2dEvaluator_OffsetCurve(@)",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc constructGeom2dEvaluator_OffsetCurve*(theBase: handle[Geom2dAdaptor_HCurve];
    theOffset: Standard_Real): Geom2dEvaluator_OffsetCurve {.constructor,
    importcpp: "Geom2dEvaluator_OffsetCurve(@)",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc SetOffsetValue*(this: var Geom2dEvaluator_OffsetCurve; theOffset: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc D0*(this: Geom2dEvaluator_OffsetCurve; theU: Standard_Real;
        theValue: var gp_Pnt2d) {.noSideEffect, importcpp: "D0",
                               header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc D1*(this: Geom2dEvaluator_OffsetCurve; theU: Standard_Real;
        theValue: var gp_Pnt2d; theD1: var gp_Vec2d) {.noSideEffect, importcpp: "D1",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc D2*(this: Geom2dEvaluator_OffsetCurve; theU: Standard_Real;
        theValue: var gp_Pnt2d; theD1: var gp_Vec2d; theD2: var gp_Vec2d) {.noSideEffect,
    importcpp: "D2", header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc D3*(this: Geom2dEvaluator_OffsetCurve; theU: Standard_Real;
        theValue: var gp_Pnt2d; theD1: var gp_Vec2d; theD2: var gp_Vec2d;
        theD3: var gp_Vec2d) {.noSideEffect, importcpp: "D3",
                            header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc DN*(this: Geom2dEvaluator_OffsetCurve; theU: Standard_Real;
        theDeriv: Standard_Integer): gp_Vec2d {.noSideEffect, importcpp: "DN",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
type
  Geom2dEvaluator_OffsetCurvebase_type* = Geom2dEvaluator_Curve

proc get_type_name*(): cstring {.importcpp: "Geom2dEvaluator_OffsetCurve::get_type_name(@)",
                              header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2dEvaluator_OffsetCurve::get_type_descriptor(@)",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
proc DynamicType*(this: Geom2dEvaluator_OffsetCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom2dEvaluator_OffsetCurve.hxx".}
discard "forward decl of Geom2dEvaluator_OffsetCurve"
type
  Handle_Geom2dEvaluator_OffsetCurve* = handle[Geom2dEvaluator_OffsetCurve]
