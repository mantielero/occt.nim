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
  GeomEvaluatorSurfaceOfRevolution* {.importcpp: "GeomEvaluator_SurfaceOfRevolution", header: "GeomEvaluator_SurfaceOfRevolution.hxx",
                                     bycopy.} = object of GeomEvaluatorSurface ## !
                                                                          ## Initialize
                                                                          ## evaluator by
                                                                          ## revolved curve, the axis of
                                                                          ## revolution and the
                                                                          ## location


proc constructGeomEvaluatorSurfaceOfRevolution*(theBase: Handle[GeomCurve];
    theRevolDir: GpDir; theRevolLoc: GpPnt): GeomEvaluatorSurfaceOfRevolution {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfRevolution(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc constructGeomEvaluatorSurfaceOfRevolution*(theBase: Handle[Adaptor3dHCurve];
    theRevolDir: GpDir; theRevolLoc: GpPnt): GeomEvaluatorSurfaceOfRevolution {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfRevolution(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc setDirection*(this: var GeomEvaluatorSurfaceOfRevolution; theDirection: GpDir) {.
    importcpp: "SetDirection", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc setLocation*(this: var GeomEvaluatorSurfaceOfRevolution; theLocation: GpPnt) {.
    importcpp: "SetLocation", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc setAxis*(this: var GeomEvaluatorSurfaceOfRevolution; theAxis: GpAx1) {.
    importcpp: "SetAxis", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d0*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt) {.noSideEffect, importcpp: "D0",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d1*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d2*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec;
        theD2U: var GpVec; theD2V: var GpVec; theD2UV: var GpVec) {.noSideEffect,
    importcpp: "D2", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d3*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec;
        theD2U: var GpVec; theD2V: var GpVec; theD2UV: var GpVec; theD3U: var GpVec;
        theD3V: var GpVec; theD3UUV: var GpVec; theD3UVV: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc dn*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theDerU: StandardInteger; theDerV: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
type
  GeomEvaluatorSurfaceOfRevolutionbaseType* = GeomEvaluatorSurface

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_SurfaceOfRevolution::get_type_name(@)",
                            header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomEvaluator_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc dynamicType*(this: GeomEvaluatorSurfaceOfRevolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
discard "forward decl of GeomEvaluator_SurfaceOfRevolution"
type
  HandleGeomEvaluatorSurfaceOfRevolution* = Handle[
      GeomEvaluatorSurfaceOfRevolution]


