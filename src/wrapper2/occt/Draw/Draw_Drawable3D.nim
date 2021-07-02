##  Created on: 1991-04-24
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of Draw_Drawable3D"
type
  HandleDrawDrawable3D* = Handle[DrawDrawable3D]
  DrawDrawable3D* {.importcpp: "Draw_Drawable3D", header: "Draw_Drawable3D.hxx",
                   bycopy.} = object of StandardTransient


proc drawOn*(this: DrawDrawable3D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Drawable3D.hxx".}
proc pickReject*(this: DrawDrawable3D; x: StandardReal; y: StandardReal;
                prec: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "PickReject", header: "Draw_Drawable3D.hxx".}
proc copy*(this: DrawDrawable3D): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "Draw_Drawable3D.hxx".}
proc dump*(this: DrawDrawable3D; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Drawable3D.hxx".}
proc whatis*(this: DrawDrawable3D; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Drawable3D.hxx".}
proc is3D*(this: DrawDrawable3D): StandardBoolean {.noSideEffect, importcpp: "Is3D",
    header: "Draw_Drawable3D.hxx".}
proc setBounds*(this: var DrawDrawable3D; xmin: StandardReal; xmax: StandardReal;
               ymin: StandardReal; ymax: StandardReal) {.importcpp: "SetBounds",
    header: "Draw_Drawable3D.hxx".}
proc bounds*(this: DrawDrawable3D; xmin: var StandardReal; xmax: var StandardReal;
            ymin: var StandardReal; ymax: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Draw_Drawable3D.hxx".}
proc visible*(this: DrawDrawable3D): StandardBoolean {.noSideEffect,
    importcpp: "Visible", header: "Draw_Drawable3D.hxx".}
proc visible*(this: var DrawDrawable3D; v: StandardBoolean) {.importcpp: "Visible",
    header: "Draw_Drawable3D.hxx".}
proc protected*(this: DrawDrawable3D): StandardBoolean {.noSideEffect,
    importcpp: "Protected", header: "Draw_Drawable3D.hxx".}
proc protected*(this: var DrawDrawable3D; p: StandardBoolean) {.
    importcpp: "Protected", header: "Draw_Drawable3D.hxx".}
proc name*(this: DrawDrawable3D): StandardCString {.noSideEffect, importcpp: "Name",
    header: "Draw_Drawable3D.hxx".}
proc name*(this: var DrawDrawable3D; n: StandardCString) {.importcpp: "Name",
    header: "Draw_Drawable3D.hxx".}
type
  DrawDrawable3DbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Draw_Drawable3D::get_type_name(@)",
                            header: "Draw_Drawable3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Drawable3D::get_type_descriptor(@)",
    header: "Draw_Drawable3D.hxx".}
proc dynamicType*(this: DrawDrawable3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Drawable3D.hxx".}

