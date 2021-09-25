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

discard "forward decl of OSD_Timer"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of Draw_Chronometer"
discard "forward decl of Draw_Chronometer"
type
  HandleDrawChronometer* = Handle[DrawChronometer]

## ! Class to store chronometer variables.

type
  DrawChronometer* {.importcpp: "Draw_Chronometer", header: "Draw_Chronometer.hxx",
                    bycopy.} = object of DrawDrawable3D


proc constructDrawChronometer*(): DrawChronometer {.constructor,
    importcpp: "Draw_Chronometer(@)", header: "Draw_Chronometer.hxx".}
proc timer*(this: var DrawChronometer): var OSD_Timer {.importcpp: "Timer",
    header: "Draw_Chronometer.hxx".}
proc drawOn*(this: DrawChronometer; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Chronometer.hxx".}
proc copy*(this: DrawChronometer): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "Draw_Chronometer.hxx".}
proc dump*(this: DrawChronometer; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Chronometer.hxx".}
proc whatis*(this: DrawChronometer; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Chronometer.hxx".}
type
  DrawChronometerbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Chronometer::get_type_name(@)",
                            header: "Draw_Chronometer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Chronometer::get_type_descriptor(@)",
    header: "Draw_Chronometer.hxx".}
proc dynamicType*(this: DrawChronometer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Chronometer.hxx".}
