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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepBlend_Line"
discard "forward decl of Blend_RstRstFunction"
discard "forward decl of Blend_AppFunction"
discard "forward decl of Blend_Point"
discard "forward decl of BRepBlend_AppFuncRstRst"
type
  HandleBRepBlendAppFuncRstRst* = Handle[BRepBlendAppFuncRstRst]

## ! Function to approximate by AppSurface for Edge/Face (Curve/Curve contact).

type
  BRepBlendAppFuncRstRst* {.importcpp: "BRepBlend_AppFuncRstRst",
                           header: "BRepBlend_AppFuncRstRst.hxx", bycopy.} = object of BRepBlendAppFuncRoot


proc newBRepBlendAppFuncRstRst*(line: var Handle[BRepBlendLine];
                               `func`: var BlendRstRstFunction; tol3d: cfloat;
                               tol2d: cfloat): BRepBlendAppFuncRstRst {.cdecl,
    constructor, importcpp: "BRepBlend_AppFuncRstRst(@)", dynlib: tkfillet.}
proc point*(this: BRepBlendAppFuncRstRst; `func`: BlendAppFunction; param: cfloat;
           sol: MathVector; pnt: var BlendPoint) {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkfillet.}
proc vec*(this: BRepBlendAppFuncRstRst; sol: var MathVector; pnt: BlendPoint) {.
    noSideEffect, cdecl, importcpp: "Vec", dynlib: tkfillet.}