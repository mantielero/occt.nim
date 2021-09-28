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

discard "forward decl of GeomAdaptor_HCurve"
type
  GeomEvaluatorOffsetCurve* {.importcpp: "GeomEvaluator_OffsetCurve",
                             header: "GeomEvaluator_OffsetCurve.hxx", bycopy.} = object of GeomEvaluatorCurve ##
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


proc constructGeomEvaluatorOffsetCurve*(theBase: Handle[GeomCurve];
                                       theOffset: StandardReal; theDirection: Dir): GeomEvaluatorOffsetCurve {.
    constructor, importcpp: "GeomEvaluator_OffsetCurve(@)",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc constructGeomEvaluatorOffsetCurve*(theBase: Handle[GeomAdaptorHCurve];
                                       theOffset: StandardReal; theDirection: Dir): GeomEvaluatorOffsetCurve {.
    constructor, importcpp: "GeomEvaluator_OffsetCurve(@)",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc setOffsetValue*(this: var GeomEvaluatorOffsetCurve; theOffset: StandardReal) {.
    importcpp: "SetOffsetValue", header: "GeomEvaluator_OffsetCurve.hxx".}
proc setOffsetDirection*(this: var GeomEvaluatorOffsetCurve; theDirection: Dir) {.
    importcpp: "SetOffsetDirection", header: "GeomEvaluator_OffsetCurve.hxx".}
proc d0*(this: GeomEvaluatorOffsetCurve; theU: StandardReal; theValue: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "GeomEvaluator_OffsetCurve.hxx".}
proc d1*(this: GeomEvaluatorOffsetCurve; theU: StandardReal; theValue: var Pnt;
        theD1: var Vec) {.noSideEffect, importcpp: "D1",
                       header: "GeomEvaluator_OffsetCurve.hxx".}
proc d2*(this: GeomEvaluatorOffsetCurve; theU: StandardReal; theValue: var Pnt;
        theD1: var Vec; theD2: var Vec) {.noSideEffect, importcpp: "D2",
                                    header: "GeomEvaluator_OffsetCurve.hxx".}
proc d3*(this: GeomEvaluatorOffsetCurve; theU: StandardReal; theValue: var Pnt;
        theD1: var Vec; theD2: var Vec; theD3: var Vec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc dn*(this: GeomEvaluatorOffsetCurve; theU: StandardReal; theDeriv: int): Vec {.
    noSideEffect, importcpp: "DN", header: "GeomEvaluator_OffsetCurve.hxx".}
type
  GeomEvaluatorOffsetCurvebaseType* = GeomEvaluatorCurve

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_OffsetCurve::get_type_name(@)",
                            header: "GeomEvaluator_OffsetCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomEvaluator_OffsetCurve::get_type_descriptor(@)",
    header: "GeomEvaluator_OffsetCurve.hxx".}
proc dynamicType*(this: GeomEvaluatorOffsetCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomEvaluator_OffsetCurve.hxx".}
discard "forward decl of GeomEvaluator_OffsetCurve"
type
  HandleC1C1* = Handle[GeomEvaluatorOffsetCurve]
