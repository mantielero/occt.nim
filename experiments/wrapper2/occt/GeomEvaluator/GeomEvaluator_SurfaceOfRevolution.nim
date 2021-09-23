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
  GeomEvaluator_Surface, ../Geom/Geom_Curve, ../gp/gp_Dir, ../gp/gp_Pnt,
  ../gp/gp_Ax1

discard "forward decl of Adaptor3d_HCurve"
type
  GeomEvaluator_SurfaceOfRevolution* {.importcpp: "GeomEvaluator_SurfaceOfRevolution", header: "GeomEvaluator_SurfaceOfRevolution.hxx",
                                      bycopy.} = object of GeomEvaluator_Surface ## !
                                                                            ## Initialize
                                                                            ## evaluator by
                                                                            ## revolved
                                                                            ## curve, the axis of
                                                                            ## revolution and the
                                                                            ## location


proc constructGeomEvaluator_SurfaceOfRevolution*(theBase: handle[Geom_Curve];
    theRevolDir: gp_Dir; theRevolLoc: gp_Pnt): GeomEvaluator_SurfaceOfRevolution {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfRevolution(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc constructGeomEvaluator_SurfaceOfRevolution*(
    theBase: handle[Adaptor3d_HCurve]; theRevolDir: gp_Dir; theRevolLoc: gp_Pnt): GeomEvaluator_SurfaceOfRevolution {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfRevolution(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc SetDirection*(this: var GeomEvaluator_SurfaceOfRevolution; theDirection: gp_Dir) {.
    importcpp: "SetDirection", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc SetLocation*(this: var GeomEvaluator_SurfaceOfRevolution; theLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc SetAxis*(this: var GeomEvaluator_SurfaceOfRevolution; theAxis: gp_Ax1) {.
    importcpp: "SetAxis", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc D0*(this: GeomEvaluator_SurfaceOfRevolution; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt) {.noSideEffect, importcpp: "D0",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc D1*(this: GeomEvaluator_SurfaceOfRevolution; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt; theD1U: var gp_Vec;
        theD1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                           header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc D2*(this: GeomEvaluator_SurfaceOfRevolution; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt; theD1U: var gp_Vec;
        theD1V: var gp_Vec; theD2U: var gp_Vec; theD2V: var gp_Vec; theD2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc D3*(this: GeomEvaluator_SurfaceOfRevolution; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt; theD1U: var gp_Vec;
        theD1V: var gp_Vec; theD2U: var gp_Vec; theD2V: var gp_Vec; theD2UV: var gp_Vec;
        theD3U: var gp_Vec; theD3V: var gp_Vec; theD3UUV: var gp_Vec;
        theD3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                             header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc DN*(this: GeomEvaluator_SurfaceOfRevolution; theU: Standard_Real;
        theV: Standard_Real; theDerU: Standard_Integer; theDerV: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
type
  GeomEvaluator_SurfaceOfRevolutionbase_type* = GeomEvaluator_Surface

proc get_type_name*(): cstring {.importcpp: "GeomEvaluator_SurfaceOfRevolution::get_type_name(@)",
                              header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomEvaluator_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
proc DynamicType*(this: GeomEvaluator_SurfaceOfRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_SurfaceOfRevolution.hxx".}
discard "forward decl of GeomEvaluator_SurfaceOfRevolution"
type
  Handle_GeomEvaluator_SurfaceOfRevolution* = handle[
      GeomEvaluator_SurfaceOfRevolution]
