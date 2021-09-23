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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dEvaluator_Curve* {.importcpp: "Geom2dEvaluator_Curve",
                          header: "Geom2dEvaluator_Curve.hxx", bycopy.} = object of Standard_Transient


proc constructGeom2dEvaluator_Curve*(): Geom2dEvaluator_Curve {.constructor,
    importcpp: "Geom2dEvaluator_Curve(@)", header: "Geom2dEvaluator_Curve.hxx".}
proc D0*(this: Geom2dEvaluator_Curve; theU: Standard_Real; theValue: var gp_Pnt2d) {.
    noSideEffect, importcpp: "D0", header: "Geom2dEvaluator_Curve.hxx".}
proc D1*(this: Geom2dEvaluator_Curve; theU: Standard_Real; theValue: var gp_Pnt2d;
        theD1: var gp_Vec2d) {.noSideEffect, importcpp: "D1",
                            header: "Geom2dEvaluator_Curve.hxx".}
proc D2*(this: Geom2dEvaluator_Curve; theU: Standard_Real; theValue: var gp_Pnt2d;
        theD1: var gp_Vec2d; theD2: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
    header: "Geom2dEvaluator_Curve.hxx".}
proc D3*(this: Geom2dEvaluator_Curve; theU: Standard_Real; theValue: var gp_Pnt2d;
        theD1: var gp_Vec2d; theD2: var gp_Vec2d; theD3: var gp_Vec2d) {.noSideEffect,
    importcpp: "D3", header: "Geom2dEvaluator_Curve.hxx".}
proc DN*(this: Geom2dEvaluator_Curve; theU: Standard_Real; theDerU: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "Geom2dEvaluator_Curve.hxx".}
type
  Geom2dEvaluator_Curvebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Geom2dEvaluator_Curve::get_type_name(@)",
                              header: "Geom2dEvaluator_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2dEvaluator_Curve::get_type_descriptor(@)",
    header: "Geom2dEvaluator_Curve.hxx".}
proc DynamicType*(this: Geom2dEvaluator_Curve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom2dEvaluator_Curve.hxx".}
discard "forward decl of Geom2dEvaluator_Curve"
type
  Handle_Geom2dEvaluator_Curve* = handle[Geom2dEvaluator_Curve]
