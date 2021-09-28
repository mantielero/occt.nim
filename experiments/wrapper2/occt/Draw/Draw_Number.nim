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

discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of Draw_Number"
discard "forward decl of Draw_Number"
type
  HandleC1C1* = Handle[DrawNumber]

## ! To store nummbers in variables.

type
  DrawNumber* {.importcpp: "Draw_Number", header: "Draw_Number.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawNumber*(v: cfloat): DrawNumber {.constructor,
    importcpp: "Draw_Number(@)", header: "Draw_Number.hxx".}
proc value*(this: DrawNumber): cfloat {.noSideEffect, importcpp: "Value",
                                    header: "Draw_Number.hxx".}
proc value*(this: var DrawNumber; v: cfloat) {.importcpp: "Value",
    header: "Draw_Number.hxx".}
proc drawOn*(this: DrawNumber; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Number.hxx".}
proc copy*(this: DrawNumber): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "Draw_Number.hxx".}
proc dump*(this: DrawNumber; s: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "Draw_Number.hxx".}
proc whatis*(this: DrawNumber; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Number.hxx".}
type
  DrawNumberbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Number::get_type_name(@)",
                            header: "Draw_Number.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Number::get_type_descriptor(@)", header: "Draw_Number.hxx".}
proc dynamicType*(this: DrawNumber): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Number.hxx".}

























