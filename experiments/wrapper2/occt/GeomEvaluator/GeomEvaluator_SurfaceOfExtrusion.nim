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

discard "forward decl of Adaptor3d_HCurve"
type
  GeomEvaluatorSurfaceOfExtrusion* {.importcpp: "GeomEvaluator_SurfaceOfExtrusion", header: "GeomEvaluator_SurfaceOfExtrusion.hxx",
                                    bycopy.} = object of GeomEvaluatorSurface ## !
                                                                         ## Initialize
                                                                         ## evaluator by surface
                                                                         ## ! Shift the point along
                                                                         ## direction to the given
                                                                         ## distance
                                                                         ## (theShift)


proc constructGeomEvaluatorSurfaceOfExtrusion*(theBase: Handle[GeomCurve];
    theExtrusionDir: Dir): GeomEvaluatorSurfaceOfExtrusion {.constructor,
    importcpp: "GeomEvaluator_SurfaceOfExtrusion(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc constructGeomEvaluatorSurfaceOfExtrusion*(theBase: Handle[Adaptor3dHCurve];
    theExtrusionDir: Dir): GeomEvaluatorSurfaceOfExtrusion {.constructor,
    importcpp: "GeomEvaluator_SurfaceOfExtrusion(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc setDirection*(this: var GeomEvaluatorSurfaceOfExtrusion; theDirection: Dir) {.
    importcpp: "SetDirection", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d0*(this: GeomEvaluatorSurfaceOfExtrusion; theU: float; theV: float;
        theValue: var Pnt) {.noSideEffect, importcpp: "D0",
                          header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d1*(this: GeomEvaluatorSurfaceOfExtrusion; theU: float; theV: float;
        theValue: var Pnt; theD1U: var Vec; theD1V: var Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d2*(this: GeomEvaluatorSurfaceOfExtrusion; theU: float; theV: float;
        theValue: var Pnt; theD1U: var Vec; theD1V: var Vec; theD2U: var Vec;
        theD2V: var Vec; theD2UV: var Vec) {.noSideEffect, importcpp: "D2", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d3*(this: GeomEvaluatorSurfaceOfExtrusion; theU: float; theV: float;
        theValue: var Pnt; theD1U: var Vec; theD1V: var Vec; theD2U: var Vec;
        theD2V: var Vec; theD2UV: var Vec; theD3U: var Vec; theD3V: var Vec;
        theD3UUV: var Vec; theD3UVV: var Vec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc dn*(this: GeomEvaluatorSurfaceOfExtrusion; theU: float; theV: float; theDerU: int;
        theDerV: int): Vec {.noSideEffect, importcpp: "DN",
                          header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
type
  GeomEvaluatorSurfaceOfExtrusionbaseType* = GeomEvaluatorSurface

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_SurfaceOfExtrusion::get_type_name(@)",
                            header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomEvaluator_SurfaceOfExtrusion::get_type_descriptor(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc dynamicType*(this: GeomEvaluatorSurfaceOfExtrusion): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
discard "forward decl of GeomEvaluator_SurfaceOfExtrusion"
type
  HandleGeomEvaluatorSurfaceOfExtrusion* = Handle[GeomEvaluatorSurfaceOfExtrusion]

