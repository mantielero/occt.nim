##  Created on: 1992-04-30
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Circ"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Circle3D"
discard "forward decl of Draw_Circle3D"
type
  HandleC1C1* = Handle[DrawCircle3D]
  DrawCircle3D* {.importcpp: "Draw_Circle3D", header: "Draw_Circle3D.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawCircle3D*(c: Circ; a1: cfloat; a2: cfloat; col: DrawColor): DrawCircle3D {.
    constructor, importcpp: "Draw_Circle3D(@)", header: "Draw_Circle3D.hxx".}
proc drawOn*(this: DrawCircle3D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Circle3D.hxx".}
type
  DrawCircle3DbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Circle3D::get_type_name(@)",
                            header: "Draw_Circle3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Circle3D::get_type_descriptor(@)",
    header: "Draw_Circle3D.hxx".}
proc dynamicType*(this: DrawCircle3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Circle3D.hxx".}

























