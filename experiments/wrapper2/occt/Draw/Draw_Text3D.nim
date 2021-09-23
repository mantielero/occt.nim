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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt, Draw_Color,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Real,
  Draw_Drawable3D, ../Standard/Standard_CString

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Text3D"
discard "forward decl of Draw_Text3D"
type
  Handle_Draw_Text3D* = handle[Draw_Text3D]
  Draw_Text3D* {.importcpp: "Draw_Text3D", header: "Draw_Text3D.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDraw_Text3D*(p: gp_Pnt; T: Standard_CString; col: Draw_Color): Draw_Text3D {.
    constructor, importcpp: "Draw_Text3D(@)", header: "Draw_Text3D.hxx".}
proc constructDraw_Text3D*(p: gp_Pnt; T: Standard_CString; col: Draw_Color;
                          moveX: Standard_Real; moveY: Standard_Real): Draw_Text3D {.
    constructor, importcpp: "Draw_Text3D(@)", header: "Draw_Text3D.hxx".}
proc SetPnt*(this: var Draw_Text3D; p: gp_Pnt) {.importcpp: "SetPnt",
    header: "Draw_Text3D.hxx".}
proc DrawOn*(this: Draw_Text3D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Text3D.hxx".}
type
  Draw_Text3Dbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Text3D::get_type_name(@)",
                              header: "Draw_Text3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Text3D::get_type_descriptor(@)", header: "Draw_Text3D.hxx".}
proc DynamicType*(this: Draw_Text3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Text3D.hxx".}