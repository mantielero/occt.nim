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
    theExtrusionDir: GpDir): GeomEvaluatorSurfaceOfExtrusion {.constructor,
    importcpp: "GeomEvaluator_SurfaceOfExtrusion(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc constructGeomEvaluatorSurfaceOfExtrusion*(theBase: Handle[Adaptor3dHCurve];
    theExtrusionDir: GpDir): GeomEvaluatorSurfaceOfExtrusion {.constructor,
    importcpp: "GeomEvaluator_SurfaceOfExtrusion(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc setDirection*(this: var GeomEvaluatorSurfaceOfExtrusion; theDirection: GpDir) {.
    importcpp: "SetDirection", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d0*(this: GeomEvaluatorSurfaceOfExtrusion; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt) {.noSideEffect, importcpp: "D0",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d1*(this: GeomEvaluatorSurfaceOfExtrusion; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d2*(this: GeomEvaluatorSurfaceOfExtrusion; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec;
        theD2U: var GpVec; theD2V: var GpVec; theD2UV: var GpVec) {.noSideEffect,
    importcpp: "D2", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc d3*(this: GeomEvaluatorSurfaceOfExtrusion; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec;
        theD2U: var GpVec; theD2V: var GpVec; theD2UV: var GpVec; theD3U: var GpVec;
        theD3V: var GpVec; theD3UUV: var GpVec; theD3UVV: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc dn*(this: GeomEvaluatorSurfaceOfExtrusion; theU: StandardReal;
        theV: StandardReal; theDerU: StandardInteger; theDerV: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
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


