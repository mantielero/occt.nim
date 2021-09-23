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
  GeomEvaluator_Surface, ../Geom/Geom_OsculatingSurface, ../Geom/Geom_Surface

discard "forward decl of GeomAdaptor_HSurface"
type
  GeomEvaluator_OffsetSurface* {.importcpp: "GeomEvaluator_OffsetSurface",
                                header: "GeomEvaluator_OffsetSurface.hxx", bycopy.} = object of GeomEvaluator_Surface ##
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


proc constructGeomEvaluator_OffsetSurface*(theBase: handle[Geom_Surface];
    theOffset: Standard_Real; theOscSurf: handle[Geom_OsculatingSurface] = handle[
    Geom_OsculatingSurface]()): GeomEvaluator_OffsetSurface {.constructor,
    importcpp: "GeomEvaluator_OffsetSurface(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc constructGeomEvaluator_OffsetSurface*(theBase: handle[GeomAdaptor_HSurface];
    theOffset: Standard_Real; theOscSurf: handle[Geom_OsculatingSurface] = handle[
    Geom_OsculatingSurface]()): GeomEvaluator_OffsetSurface {.constructor,
    importcpp: "GeomEvaluator_OffsetSurface(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc SetOffsetValue*(this: var GeomEvaluator_OffsetSurface; theOffset: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "GeomEvaluator_OffsetSurface.hxx".}
proc D0*(this: GeomEvaluator_OffsetSurface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                             header: "GeomEvaluator_OffsetSurface.hxx".}
proc D1*(this: GeomEvaluator_OffsetSurface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt; theD1U: var gp_Vec; theD1V: var gp_Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomEvaluator_OffsetSurface.hxx".}
proc D2*(this: GeomEvaluator_OffsetSurface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt; theD1U: var gp_Vec; theD1V: var gp_Vec; theD2U: var gp_Vec;
        theD2V: var gp_Vec; theD2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc D3*(this: GeomEvaluator_OffsetSurface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt; theD1U: var gp_Vec; theD1V: var gp_Vec; theD2U: var gp_Vec;
        theD2V: var gp_Vec; theD2UV: var gp_Vec; theD3U: var gp_Vec; theD3V: var gp_Vec;
        theD3UUV: var gp_Vec; theD3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc DN*(this: GeomEvaluator_OffsetSurface; theU: Standard_Real; theV: Standard_Real;
        theDerU: Standard_Integer; theDerV: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "GeomEvaluator_OffsetSurface.hxx".}
type
  GeomEvaluator_OffsetSurfacebase_type* = GeomEvaluator_Surface

proc get_type_name*(): cstring {.importcpp: "GeomEvaluator_OffsetSurface::get_type_name(@)",
                              header: "GeomEvaluator_OffsetSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomEvaluator_OffsetSurface::get_type_descriptor(@)",
    header: "GeomEvaluator_OffsetSurface.hxx".}
proc DynamicType*(this: GeomEvaluator_OffsetSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomEvaluator_OffsetSurface.hxx".}
discard "forward decl of GeomEvaluator_OffsetSurface"
type
  Handle_GeomEvaluator_OffsetSurface* = handle[GeomEvaluator_OffsetSurface]
