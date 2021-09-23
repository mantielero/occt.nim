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
  GeomEvaluator_Surface, ../Geom/Geom_Curve, ../gp/gp_Dir

discard "forward decl of Adaptor3d_HCurve"
type
  GeomEvaluator_SurfaceOfExtrusion* {.importcpp: "GeomEvaluator_SurfaceOfExtrusion", header: "GeomEvaluator_SurfaceOfExtrusion.hxx",
                                     bycopy.} = object of GeomEvaluator_Surface ## !
                                                                           ## Initialize
                                                                           ## evaluator by
                                                                           ## surface
                                                                           ## ! Shift the point along
                                                                           ## direction to the given
                                                                           ## distance
                                                                           ## (theShift)


proc constructGeomEvaluator_SurfaceOfExtrusion*(theBase: handle[Geom_Curve];
    theExtrusionDir: gp_Dir): GeomEvaluator_SurfaceOfExtrusion {.constructor,
    importcpp: "GeomEvaluator_SurfaceOfExtrusion(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc constructGeomEvaluator_SurfaceOfExtrusion*(
    theBase: handle[Adaptor3d_HCurve]; theExtrusionDir: gp_Dir): GeomEvaluator_SurfaceOfExtrusion {.
    constructor, importcpp: "GeomEvaluator_SurfaceOfExtrusion(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc SetDirection*(this: var GeomEvaluator_SurfaceOfExtrusion; theDirection: gp_Dir) {.
    importcpp: "SetDirection", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc D0*(this: GeomEvaluator_SurfaceOfExtrusion; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt) {.noSideEffect, importcpp: "D0",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc D1*(this: GeomEvaluator_SurfaceOfExtrusion; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt; theD1U: var gp_Vec;
        theD1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                           header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc D2*(this: GeomEvaluator_SurfaceOfExtrusion; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt; theD1U: var gp_Vec;
        theD1V: var gp_Vec; theD2U: var gp_Vec; theD2V: var gp_Vec; theD2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc D3*(this: GeomEvaluator_SurfaceOfExtrusion; theU: Standard_Real;
        theV: Standard_Real; theValue: var gp_Pnt; theD1U: var gp_Vec;
        theD1V: var gp_Vec; theD2U: var gp_Vec; theD2V: var gp_Vec; theD2UV: var gp_Vec;
        theD3U: var gp_Vec; theD3V: var gp_Vec; theD3UUV: var gp_Vec;
        theD3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                             header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc DN*(this: GeomEvaluator_SurfaceOfExtrusion; theU: Standard_Real;
        theV: Standard_Real; theDerU: Standard_Integer; theDerV: Standard_Integer): gp_Vec {.
    noSideEffect, importcpp: "DN", header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
type
  GeomEvaluator_SurfaceOfExtrusionbase_type* = GeomEvaluator_Surface

proc get_type_name*(): cstring {.importcpp: "GeomEvaluator_SurfaceOfExtrusion::get_type_name(@)",
                              header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomEvaluator_SurfaceOfExtrusion::get_type_descriptor(@)",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
proc DynamicType*(this: GeomEvaluator_SurfaceOfExtrusion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_SurfaceOfExtrusion.hxx".}
discard "forward decl of GeomEvaluator_SurfaceOfExtrusion"
type
  Handle_GeomEvaluator_SurfaceOfExtrusion* = handle[
      GeomEvaluator_SurfaceOfExtrusion]
