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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax3, Draw_Color,
  ../Standard/Standard_Integer, Draw_Drawable3D

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax3"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Axis3D"
discard "forward decl of Draw_Axis3D"
type
  Handle_Draw_Axis3D* = handle[Draw_Axis3D]
  Draw_Axis3D* {.importcpp: "Draw_Axis3D", header: "Draw_Axis3D.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDraw_Axis3D*(col: Draw_Color; Size: Standard_Integer = 5): Draw_Axis3D {.
    constructor, importcpp: "Draw_Axis3D(@)", header: "Draw_Axis3D.hxx".}
proc constructDraw_Axis3D*(p: gp_Pnt; col: Draw_Color; Size: Standard_Integer = 5): Draw_Axis3D {.
    constructor, importcpp: "Draw_Axis3D(@)", header: "Draw_Axis3D.hxx".}
proc constructDraw_Axis3D*(A: gp_Ax3; col: Draw_Color; Size: Standard_Integer = 5): Draw_Axis3D {.
    constructor, importcpp: "Draw_Axis3D(@)", header: "Draw_Axis3D.hxx".}
proc DrawOn*(this: Draw_Axis3D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Axis3D.hxx".}
type
  Draw_Axis3Dbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Axis3D::get_type_name(@)",
                              header: "Draw_Axis3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Axis3D::get_type_descriptor(@)", header: "Draw_Axis3D.hxx".}
proc DynamicType*(this: Draw_Axis3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Axis3D.hxx".}