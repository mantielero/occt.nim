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
  ../Standard/Standard, ../Standard/Standard_Type, Draw_Drawable3D,
  ../Standard/Standard_Boolean

discard "forward decl of Draw_Drawable2D"
discard "forward decl of Draw_Drawable2D"
type
  Handle_Draw_Drawable2D* = handle[Draw_Drawable2D]
  Draw_Drawable2D* {.importcpp: "Draw_Drawable2D", header: "Draw_Drawable2D.hxx",
                    bycopy.} = object of Draw_Drawable3D ## ! Returns False.


proc Is3D*(this: Draw_Drawable2D): Standard_Boolean {.noSideEffect,
    importcpp: "Is3D", header: "Draw_Drawable2D.hxx".}
type
  Draw_Drawable2Dbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Drawable2D::get_type_name(@)",
                              header: "Draw_Drawable2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Drawable2D::get_type_descriptor(@)",
    header: "Draw_Drawable2D.hxx".}
proc DynamicType*(this: Draw_Drawable2D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Drawable2D.hxx".}