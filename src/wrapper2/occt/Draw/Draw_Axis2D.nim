##  Created on: 1994-04-18
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Ax22d, Draw_Color,
  ../Standard/Standard_Integer, Draw_Drawable2D

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Axis2D"
discard "forward decl of Draw_Axis2D"
type
  Handle_Draw_Axis2D* = handle[Draw_Axis2D]
  Draw_Axis2D* {.importcpp: "Draw_Axis2D", header: "Draw_Axis2D.hxx", bycopy.} = object of Draw_Drawable2D


proc constructDraw_Axis2D*(col: Draw_Color; Size: Standard_Integer = 5): Draw_Axis2D {.
    constructor, importcpp: "Draw_Axis2D(@)", header: "Draw_Axis2D.hxx".}
proc constructDraw_Axis2D*(p: gp_Pnt2d; col: Draw_Color; Size: Standard_Integer = 5): Draw_Axis2D {.
    constructor, importcpp: "Draw_Axis2D(@)", header: "Draw_Axis2D.hxx".}
proc constructDraw_Axis2D*(A: gp_Ax22d; col: Draw_Color; Size: Standard_Integer = 5): Draw_Axis2D {.
    constructor, importcpp: "Draw_Axis2D(@)", header: "Draw_Axis2D.hxx".}
proc DrawOn*(this: Draw_Axis2D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Axis2D.hxx".}
type
  Draw_Axis2Dbase_type* = Draw_Drawable2D

proc get_type_name*(): cstring {.importcpp: "Draw_Axis2D::get_type_name(@)",
                              header: "Draw_Axis2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Axis2D::get_type_descriptor(@)", header: "Draw_Axis2D.hxx".}
proc DynamicType*(this: Draw_Axis2D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Axis2D.hxx".}