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

discard "forward decl of Draw_Drawable2D"
discard "forward decl of Draw_Drawable2D"
type
  HandleDrawDrawable2D* = Handle[DrawDrawable2D]
  DrawDrawable2D* {.importcpp: "Draw_Drawable2D", header: "Draw_Drawable2D.hxx",
                   bycopy.} = object of DrawDrawable3D ## ! Returns False.


proc is3D*(this: DrawDrawable2D): StandardBoolean {.noSideEffect, importcpp: "Is3D",
    header: "Draw_Drawable2D.hxx".}
type
  DrawDrawable2DbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Drawable2D::get_type_name(@)",
                            header: "Draw_Drawable2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Drawable2D::get_type_descriptor(@)",
    header: "Draw_Drawable2D.hxx".}
proc dynamicType*(this: DrawDrawable2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Drawable2D.hxx".}

