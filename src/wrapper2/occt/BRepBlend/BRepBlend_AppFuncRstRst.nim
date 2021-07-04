##  Created on: 1998-05-12
##  Created by: Philippe NOUAILLE
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of Blend_RstRstFunction"
discard "forward decl of Blend_AppFunction"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_AppFuncRstRst"
discard "forward decl of BRepBlend_AppFuncRstRst"
type
  Handle_BRepBlend_AppFuncRstRst* = handle[BRepBlend_AppFuncRstRst]

## ! Function to approximate by AppSurface for Edge/Face (Curve/Curve contact).

type
  BRepBlend_AppFuncRstRst* {.importcpp: "BRepBlend_AppFuncRstRst",
                            header: "BRepBlend_AppFuncRstRst.hxx", bycopy.} = object of BRepBlend_AppFuncRoot


proc constructBRepBlend_AppFuncRstRst*(Line: var handle[BRepBlend_Line];
                                      Func: var Blend_RstRstFunction;
                                      Tol3d: Standard_Real; Tol2d: Standard_Real): BRepBlend_AppFuncRstRst {.
    constructor, importcpp: "BRepBlend_AppFuncRstRst(@)",
    header: "BRepBlend_AppFuncRstRst.hxx".}
proc Point*(this: BRepBlend_AppFuncRstRst; Func: Blend_AppFunction;
           Param: Standard_Real; Sol: math_Vector; Pnt: var Blend_Point) {.
    noSideEffect, importcpp: "Point", header: "BRepBlend_AppFuncRstRst.hxx".}
proc Vec*(this: BRepBlend_AppFuncRstRst; Sol: var math_Vector; Pnt: Blend_Point) {.
    noSideEffect, importcpp: "Vec", header: "BRepBlend_AppFuncRstRst.hxx".}
type
  BRepBlend_AppFuncRstRstbase_type* = BRepBlend_AppFuncRoot

proc get_type_name*(): cstring {.importcpp: "BRepBlend_AppFuncRstRst::get_type_name(@)",
                              header: "BRepBlend_AppFuncRstRst.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepBlend_AppFuncRstRst::get_type_descriptor(@)",
    header: "BRepBlend_AppFuncRstRst.hxx".}
proc DynamicType*(this: BRepBlend_AppFuncRstRst): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepBlend_AppFuncRstRst.hxx".}