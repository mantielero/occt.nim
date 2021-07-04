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
  ../Standard/Standard, ../Standard/Standard_Type, ../OSD/OSD_Timer,
  Draw_Drawable3D, ../Standard/Standard_OStream, Draw_Interpretor

discard "forward decl of OSD_Timer"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of Draw_Chronometer"
discard "forward decl of Draw_Chronometer"
type
  Handle_Draw_Chronometer* = handle[Draw_Chronometer]

## ! Class to store chronometer variables.

type
  Draw_Chronometer* {.importcpp: "Draw_Chronometer",
                     header: "Draw_Chronometer.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDraw_Chronometer*(): Draw_Chronometer {.constructor,
    importcpp: "Draw_Chronometer(@)", header: "Draw_Chronometer.hxx".}
proc Timer*(this: var Draw_Chronometer): var OSD_Timer {.importcpp: "Timer",
    header: "Draw_Chronometer.hxx".}
proc DrawOn*(this: Draw_Chronometer; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Chronometer.hxx".}
proc Copy*(this: Draw_Chronometer): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "Draw_Chronometer.hxx".}
proc Dump*(this: Draw_Chronometer; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Chronometer.hxx".}
proc Whatis*(this: Draw_Chronometer; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Chronometer.hxx".}
type
  Draw_Chronometerbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "Draw_Chronometer::get_type_name(@)",
                              header: "Draw_Chronometer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Chronometer::get_type_descriptor(@)",
    header: "Draw_Chronometer.hxx".}
proc DynamicType*(this: Draw_Chronometer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Chronometer.hxx".}