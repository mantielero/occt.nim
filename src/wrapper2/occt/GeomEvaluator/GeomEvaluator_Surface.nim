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
  ../Standard/Standard_Transient, ../Standard/Standard_Type

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomEvaluator_Surface* {.importcpp: "GeomEvaluator_Surface",
                          header: "GeomEvaluator_Surface.hxx", bycopy.} = object of Standard_Transient


proc constructGeomEvaluator_Surface*(): GeomEvaluator_Surface {.constructor,
    importcpp: "GeomEvaluator_Surface(@)", header: "GeomEvaluator_Surface.hxx".}
proc D0*(this: GeomEvaluator_Surface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                             header: "GeomEvaluator_Surface.hxx".}
proc D1*(this: GeomEvaluator_Surface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt; theD1U: var gp_Vec; theD1V: var gp_Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomEvaluator_Surface.hxx".}
proc D2*(this: GeomEvaluator_Surface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt; theD1U: var gp_Vec; theD1V: var gp_Vec; theD2U: var gp_Vec;
        theD2V: var gp_Vec; theD2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
    header: "GeomEvaluator_Surface.hxx".}
proc D3*(this: GeomEvaluator_Surface; theU: Standard_Real; theV: Standard_Real;
        theValue: var gp_Pnt; theD1U: var gp_Vec; theD1V: var gp_Vec; theD2U: var gp_Vec;
        theD2V: var gp_Vec; theD2UV: var gp_Vec; theD3U: var gp_Vec; theD3V: var gp_Vec;
        theD3UUV: var gp_Vec; theD3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_Surface.hxx".}
proc DN*(this: GeomEvaluator_Surface; theU: Standard_Real; theV: Standard_Real;
        theDerU: Standard_Integer; theDerV: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "GeomEvaluator_Surface.hxx".}
type
  GeomEvaluator_Surfacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomEvaluator_Surface::get_type_name(@)",
                              header: "GeomEvaluator_Surface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomEvaluator_Surface::get_type_descriptor(@)",
    header: "GeomEvaluator_Surface.hxx".}
proc DynamicType*(this: GeomEvaluator_Surface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomEvaluator_Surface.hxx".}
discard "forward decl of GeomEvaluator_Surface"
type
  Handle_GeomEvaluator_Surface* = handle[GeomEvaluator_Surface]