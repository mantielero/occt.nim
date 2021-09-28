##  Created on: 1997-07-25
##  Created by: Jerome LEMONIER
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepBlend_Line"
discard "forward decl of Blend_SurfRstFunction"
discard "forward decl of Blend_AppFunction"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_AppFuncRst"
discard "forward decl of BRepBlend_AppFuncRst"
type
  HandleC1C1* = Handle[BRepBlendAppFuncRst]

## ! Function  to approximate by AppSurface  for Curve/Surface contact.

type
  BRepBlendAppFuncRst* {.importcpp: "BRepBlend_AppFuncRst",
                        header: "BRepBlend_AppFuncRst.hxx", bycopy.} = object of BRepBlendAppFuncRoot


proc constructBRepBlendAppFuncRst*(line: var Handle[BRepBlendLine];
                                  `func`: var BlendSurfRstFunction; tol3d: cfloat;
                                  tol2d: cfloat): BRepBlendAppFuncRst {.
    constructor, importcpp: "BRepBlend_AppFuncRst(@)",
    header: "BRepBlend_AppFuncRst.hxx".}
proc point*(this: BRepBlendAppFuncRst; `func`: BlendAppFunction; param: cfloat;
           sol: MathVector; pnt: var BlendPoint) {.noSideEffect, importcpp: "Point",
    header: "BRepBlend_AppFuncRst.hxx".}
proc vec*(this: BRepBlendAppFuncRst; sol: var MathVector; pnt: BlendPoint) {.
    noSideEffect, importcpp: "Vec", header: "BRepBlend_AppFuncRst.hxx".}
type
  BRepBlendAppFuncRstbaseType* = BRepBlendAppFuncRoot

proc getTypeName*(): cstring {.importcpp: "BRepBlend_AppFuncRst::get_type_name(@)",
                            header: "BRepBlend_AppFuncRst.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepBlend_AppFuncRst::get_type_descriptor(@)",
    header: "BRepBlend_AppFuncRst.hxx".}
proc dynamicType*(this: BRepBlendAppFuncRst): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepBlend_AppFuncRst.hxx".}

























