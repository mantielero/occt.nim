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

discard "forward decl of GeomAdaptor_HSurface"
type
  GeomEvaluatorOffsetSurface* {.importcpp: "GeomEvaluator_OffsetSurface",
                               header: "GeomEvaluator_OffsetSurface.hxx", bycopy.} = object of GeomEvaluatorSurface ##
                                                                                                             ## !
                                                                                                             ## Initialize
                                                                                                             ## evaluator
                                                                                                             ## by
                                                                                                             ## surface
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## bounds
                                                                                                             ## of
                                                                                                             ## a
                                                                                                             ## base
                                                                                                             ## surface
    ## /< offset value
    ## /< auxiliary osculating surface


proc constructGeomEvaluatorOffsetSurface*(theBase: Handle[GeomSurface];
    theOffset: StandardReal;
    theOscSurf: Handle[GeomOsculatingSurface] = handle[GeomOsculatingSurface]()): GeomEvaluatorOffsetSurface {.
    constructor, importcpp: "GeomEvaluator_OffsetSurface(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc constructGeomEvaluatorOffsetSurface*(theBase: Handle[GeomAdaptorHSurface];
    theOffset: StandardReal;
    theOscSurf: Handle[GeomOsculatingSurface] = handle[GeomOsculatingSurface]()): GeomEvaluatorOffsetSurface {.
    constructor, importcpp: "GeomEvaluator_OffsetSurface(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc setOffsetValue*(this: var GeomEvaluatorOffsetSurface; theOffset: StandardReal) {.
    importcpp: "SetOffsetValue", header: "GeomEvaluator_OffsetSurface.hxx".}
proc d0*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var Pnt) {.noSideEffect, importcpp: "D0",
                          header: "GeomEvaluator_OffsetSurface.hxx".}
proc d1*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var Pnt; theD1U: var Vec; theD1V: var Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomEvaluator_OffsetSurface.hxx".}
proc d2*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var Pnt; theD1U: var Vec; theD1V: var Vec; theD2U: var Vec;
        theD2V: var Vec; theD2UV: var Vec) {.noSideEffect, importcpp: "D2", header: "GeomEvaluator_OffsetSurface.hxx".}
proc d3*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theValue: var Pnt; theD1U: var Vec; theD1V: var Vec; theD2U: var Vec;
        theD2V: var Vec; theD2UV: var Vec; theD3U: var Vec; theD3V: var Vec;
        theD3UUV: var Vec; theD3UVV: var Vec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc dn*(this: GeomEvaluatorOffsetSurface; theU: StandardReal; theV: StandardReal;
        theDerU: int; theDerV: int): Vec {.noSideEffect, importcpp: "DN",
                                      header: "GeomEvaluator_OffsetSurface.hxx".}
type
  GeomEvaluatorOffsetSurfacebaseType* = GeomEvaluatorSurface

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_OffsetSurface::get_type_name(@)",
                            header: "GeomEvaluator_OffsetSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomEvaluator_OffsetSurface::get_type_descriptor(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc dynamicType*(this: GeomEvaluatorOffsetSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_OffsetSurface.hxx".}
discard "forward decl of GeomEvaluator_OffsetSurface"
type
  HandleC1C1* = Handle[GeomEvaluatorOffsetSurface]
