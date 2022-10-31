import brepblend_types
import ../../tkmath/math/math_types
import ../blend/blend_types
import ../../tkernel/standard/standard_types





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





proc newBRepBlendAppFunc*(line: var Handle[BRepBlendLine];
                         `func`: var BlendFunction; tol3d: cfloat; tol2d: cfloat): BRepBlendAppFunc {.
    cdecl, constructor, importcpp: "BRepBlend_AppFunc(@)", header: "BRepBlend_AppFunc.hxx".}
proc point*(this: BRepBlendAppFunc; `func`: BlendAppFunction; param: cfloat;
           sol: MathVector; pnt: var BlendPoint) {.noSideEffect, cdecl,
    importcpp: "Point", header: "BRepBlend_AppFunc.hxx".}
proc vec*(this: BRepBlendAppFunc; sol: var MathVector; pnt: BlendPoint) {.noSideEffect,
    cdecl, importcpp: "Vec", header: "BRepBlend_AppFunc.hxx".}


