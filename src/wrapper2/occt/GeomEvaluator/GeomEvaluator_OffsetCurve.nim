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
  ../Geom/Geom_Curve, GeomEvaluator_Curve, ../gp/gp_Dir

discard "forward decl of GeomAdaptor_HCurve"
type
  GeomEvaluator_OffsetCurve* {.importcpp: "GeomEvaluator_OffsetCurve",
                              header: "GeomEvaluator_OffsetCurve.hxx", bycopy.} = object of GeomEvaluator_Curve ##
                                                                                                         ## !
                                                                                                         ## Initialize
                                                                                                         ## evaluator
                                                                                                         ## by
                                                                                                         ## curve
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Recalculate
                                                                                                         ## D1
                                                                                                         ## values
                                                                                                         ## of
                                                                                                         ## base
                                                                                                         ## curve
                                                                                                         ## into
                                                                                                         ## D0
                                                                                                         ## value
                                                                                                         ## of
                                                                                                         ## offset
                                                                                                         ## curve
    ## /< offset value
    ## /< offset direction


proc constructGeomEvaluator_OffsetCurve*(theBase: handle[Geom_Curve];
                                        theOffset: Standard_Real;
                                        theDirection: gp_Dir): GeomEvaluator_OffsetCurve {.
    constructor, importcpp: "GeomEvaluator_OffsetCurve(@)",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc constructGeomEvaluator_OffsetCurve*(theBase: handle[GeomAdaptor_HCurve];
                                        theOffset: Standard_Real;
                                        theDirection: gp_Dir): GeomEvaluator_OffsetCurve {.
    constructor, importcpp: "GeomEvaluator_OffsetCurve(@)",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc SetOffsetValue*(this: var GeomEvaluator_OffsetCurve; theOffset: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "GeomEvaluator_OffsetCurve.hxx".}
proc SetOffsetDirection*(this: var GeomEvaluator_OffsetCurve; theDirection: gp_Dir) {.
    importcpp: "SetOffsetDirection", header: "GeomEvaluator_OffsetCurve.hxx".}
proc D0*(this: GeomEvaluator_OffsetCurve; theU: Standard_Real; theValue: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "GeomEvaluator_OffsetCurve.hxx".}
proc D1*(this: GeomEvaluator_OffsetCurve; theU: Standard_Real; theValue: var gp_Pnt;
        theD1: var gp_Vec) {.noSideEffect, importcpp: "D1",
                          header: "GeomEvaluator_OffsetCurve.hxx".}
proc D2*(this: GeomEvaluator_OffsetCurve; theU: Standard_Real; theValue: var gp_Pnt;
        theD1: var gp_Vec; theD2: var gp_Vec) {.noSideEffect, importcpp: "D2",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc D3*(this: GeomEvaluator_OffsetCurve; theU: Standard_Real; theValue: var gp_Pnt;
        theD1: var gp_Vec; theD2: var gp_Vec; theD3: var gp_Vec) {.noSideEffect,
    importcpp: "D3", header: "GeomEvaluator_OffsetCurve.hxx".}
proc DN*(this: GeomEvaluator_OffsetCurve; theU: Standard_Real;
        theDeriv: Standard_Integer): gp_Vec {.noSideEffect, importcpp: "DN",
    header: "GeomEvaluator_OffsetCurve.hxx".}
type
  GeomEvaluator_OffsetCurvebase_type* = GeomEvaluator_Curve

proc get_type_name*(): cstring {.importcpp: "GeomEvaluator_OffsetCurve::get_type_name(@)",
                              header: "GeomEvaluator_OffsetCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomEvaluator_OffsetCurve::get_type_descriptor(@)",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc DynamicType*(this: GeomEvaluator_OffsetCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomEvaluator_OffsetCurve.hxx".}
discard "forward decl of GeomEvaluator_OffsetCurve"
type
  Handle_GeomEvaluator_OffsetCurve* = handle[GeomEvaluator_OffsetCurve]
