##  Created on: 1993-08-16
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  Draw_Drawable3D, ../Standard/Standard_OStream, Draw_Interpretor

discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of Draw_Number"
discard "forward decl of Draw_Number"
type
  Handle_Draw_Number* = handle[Draw_Number]

## ! To store nummbers in variables.

type
  Draw_Number* {.importcpp: "Draw_Number", header: "Draw_Number.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDraw_Number*(V: Standard_Real): Draw_Number {.constructor,
    importcpp: "Draw_Number(@)", header: "Draw_Number.hxx".}
proc Value*(this: Draw_Number): Standard_Real {.noSideEffect, importcpp: "Value",
    header: "Draw_Number.hxx".}
proc Value*(this: var Draw_Number; V: Standard_Real) {.importcpp: "Value",
    header: "Draw_Number.hxx".}
proc DrawOn*(this: Draw_Number; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Number.hxx".}
proc Copy*(this: Draw_Number): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "Draw_Number.hxx".}
proc Dump*(this: Draw_Number; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Number.hxx".}
proc Whatis*(this: Draw_Number; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Number.hxx".}
type
  Draw_Numberbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Number::get_type_name(@)",
                              header: "Draw_Number.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Number::get_type_descriptor(@)", header: "Draw_Number.hxx".}
proc DynamicType*(this: Draw_Number): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Number.hxx".}