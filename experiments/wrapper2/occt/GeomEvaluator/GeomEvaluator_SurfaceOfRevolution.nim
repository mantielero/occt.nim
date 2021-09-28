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
    theRevolDir: Dir; theRevolLoc: Pnt): GeomEvaluatorSurfaceOfRevolution {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfRevolution(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc constructGeomEvaluatorSurfaceOfRevolution*(theBase: Handle[Adaptor3dHCurve];
    theRevolDir: Dir; theRevolLoc: Pnt): GeomEvaluatorSurfaceOfRevolution {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfRevolution(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc setDirection*(this: var GeomEvaluatorSurfaceOfRevolution; theDirection: Dir) {.
    importcpp: "SetDirection", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc setLocation*(this: var GeomEvaluatorSurfaceOfRevolution; theLocation: Pnt) {.
    importcpp: "SetLocation", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc setAxis*(this: var GeomEvaluatorSurfaceOfRevolution; theAxis: Ax1) {.
    importcpp: "SetAxis", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d0*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d1*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var Pnt; theD1U: var Vec; theD1V: var Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d2*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var Pnt; theD1U: var Vec; theD1V: var Vec;
        theD2U: var Vec; theD2V: var Vec; theD2UV: var Vec) {.noSideEffect,
    importcpp: "D2", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc d3*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theValue: var Pnt; theD1U: var Vec; theD1V: var Vec;
        theD2U: var Vec; theD2V: var Vec; theD2UV: var Vec; theD3U: var Vec;
        theD3V: var Vec; theD3UUV: var Vec; theD3UVV: var Vec) {.noSideEffect,
    importcpp: "D3", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc dn*(this: GeomEvaluatorSurfaceOfRevolution; theU: StandardReal;
        theV: StandardReal; theDerU: int; theDerV: int): Vec {.noSideEffect,
    importcpp: "DN", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
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
  HandleC1C1* = Handle[GeomEvaluatorSurfaceOfRevolution]
