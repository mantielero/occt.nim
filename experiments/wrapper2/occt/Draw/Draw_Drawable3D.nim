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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_CString,
  ../Standard/Standard_Transient, ../Standard/Standard_OStream, Draw_Interpretor

discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of Draw_Drawable3D"
type
  Handle_Draw_Drawable3D* = handle[Draw_Drawable3D]
  Draw_Drawable3D* {.importcpp: "Draw_Drawable3D", header: "Draw_Drawable3D.hxx",
                    bycopy.} = object of Standard_Transient


proc DrawOn*(this: Draw_Drawable3D; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Drawable3D.hxx".}
proc PickReject*(this: Draw_Drawable3D; X: Standard_Real; Y: Standard_Real;
                Prec: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "PickReject", header: "Draw_Drawable3D.hxx".}
proc Copy*(this: Draw_Drawable3D): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "Draw_Drawable3D.hxx".}
proc Dump*(this: Draw_Drawable3D; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Draw_Drawable3D.hxx".}
proc Whatis*(this: Draw_Drawable3D; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "Draw_Drawable3D.hxx".}
proc Is3D*(this: Draw_Drawable3D): Standard_Boolean {.noSideEffect,
    importcpp: "Is3D", header: "Draw_Drawable3D.hxx".}
proc SetBounds*(this: var Draw_Drawable3D; xmin: Standard_Real; xmax: Standard_Real;
               ymin: Standard_Real; ymax: Standard_Real) {.importcpp: "SetBounds",
    header: "Draw_Drawable3D.hxx".}
proc Bounds*(this: Draw_Drawable3D; xmin: var Standard_Real; xmax: var Standard_Real;
            ymin: var Standard_Real; ymax: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Draw_Drawable3D.hxx".}
proc Visible*(this: Draw_Drawable3D): Standard_Boolean {.noSideEffect,
    importcpp: "Visible", header: "Draw_Drawable3D.hxx".}
proc Visible*(this: var Draw_Drawable3D; V: Standard_Boolean) {.importcpp: "Visible",
    header: "Draw_Drawable3D.hxx".}
proc Protected*(this: Draw_Drawable3D): Standard_Boolean {.noSideEffect,
    importcpp: "Protected", header: "Draw_Drawable3D.hxx".}
proc Protected*(this: var Draw_Drawable3D; P: Standard_Boolean) {.
    importcpp: "Protected", header: "Draw_Drawable3D.hxx".}
proc Name*(this: Draw_Drawable3D): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "Draw_Drawable3D.hxx".}
proc Name*(this: var Draw_Drawable3D; N: Standard_CString) {.importcpp: "Name",
    header: "Draw_Drawable3D.hxx".}
type
  Draw_Drawable3Dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Draw_Drawable3D::get_type_name(@)",
                              header: "Draw_Drawable3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_Drawable3D::get_type_descriptor(@)",
    header: "Draw_Drawable3D.hxx".}
proc DynamicType*(this: Draw_Drawable3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Drawable3D.hxx".}