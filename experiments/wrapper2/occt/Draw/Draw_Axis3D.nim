##  Created on: 1992-04-29
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

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax3"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Axis3D"
discard "forward decl of Draw_Axis3D"
type
  HandleC1C1* = Handle[DrawAxis3D]
  DrawAxis3D* {.importcpp: "Draw_Axis3D", header: "Draw_Axis3D.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawAxis3D*(col: DrawColor; size: cint = 5): DrawAxis3D {.constructor,
    importcpp: "Draw_Axis3D(@)", header: "Draw_Axis3D.hxx".}
proc constructDrawAxis3D*(p: Pnt; col: DrawColor; size: cint = 5): DrawAxis3D {.
    constructor, importcpp: "Draw_Axis3D(@)", header: "Draw_Axis3D.hxx".}
proc constructDrawAxis3D*(a: Ax3; col: DrawColor; size: cint = 5): DrawAxis3D {.
    constructor, importcpp: "Draw_Axis3D(@)", header: "Draw_Axis3D.hxx".}
proc drawOn*(this: DrawAxis3D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Axis3D.hxx".}
type
  DrawAxis3DbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Axis3D::get_type_name(@)",
                            header: "Draw_Axis3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Axis3D::get_type_descriptor(@)", header: "Draw_Axis3D.hxx".}
proc dynamicType*(this: DrawAxis3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Axis3D.hxx".}

























