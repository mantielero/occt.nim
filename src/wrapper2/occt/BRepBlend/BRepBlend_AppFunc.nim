##  Created on: 1996-11-25
##  Created by: Philippe MANGIN
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, BRepBlend_AppFuncRoot,
  ../Standard/Standard_Real, ../math/math_Vector

discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepBlend_Line"
discard "forward decl of Blend_Function"
discard "forward decl of Blend_AppFunction"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_AppFunc"
discard "forward decl of BRepBlend_AppFunc"
type
  Handle_BRepBlend_AppFunc* = handle[BRepBlend_AppFunc]

## ! Function to approximate by AppSurface
## ! for Surface/Surface contact.

type
  BRepBlend_AppFunc* {.importcpp: "BRepBlend_AppFunc",
                      header: "BRepBlend_AppFunc.hxx", bycopy.} = object of BRepBlend_AppFuncRoot


proc constructBRepBlend_AppFunc*(Line: var handle[BRepBlend_Line];
                                Func: var Blend_Function; Tol3d: Standard_Real;
                                Tol2d: Standard_Real): BRepBlend_AppFunc {.
    constructor, importcpp: "BRepBlend_AppFunc(@)", header: "BRepBlend_AppFunc.hxx".}
proc Point*(this: BRepBlend_AppFunc; Func: Blend_AppFunction; Param: Standard_Real;
           Sol: math_Vector; Pnt: var Blend_Point) {.noSideEffect, importcpp: "Point",
    header: "BRepBlend_AppFunc.hxx".}
proc Vec*(this: BRepBlend_AppFunc; Sol: var math_Vector; Pnt: Blend_Point) {.
    noSideEffect, importcpp: "Vec", header: "BRepBlend_AppFunc.hxx".}
type
  BRepBlend_AppFuncbase_type* = BRepBlend_AppFuncRoot

proc get_type_name*(): cstring {.importcpp: "BRepBlend_AppFunc::get_type_name(@)",
                              header: "BRepBlend_AppFunc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepBlend_AppFunc::get_type_descriptor(@)",
    header: "BRepBlend_AppFunc.hxx".}
proc DynamicType*(this: BRepBlend_AppFunc): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepBlend_AppFunc.hxx".}