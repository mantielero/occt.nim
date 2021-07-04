##  Created on: 1991-07-15
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, Draw_MarkerShape,
  ../Standard/Standard_CString

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Circ2d"
type
  Draw_Display* {.importcpp: "Draw_Display", header: "Draw_Display.hxx", bycopy.} = object


proc constructDraw_Display*(): Draw_Display {.constructor,
    importcpp: "Draw_Display(@)", header: "Draw_Display.hxx".}
proc SetColor*(this: Draw_Display; col: Draw_Color) {.noSideEffect,
    importcpp: "SetColor", header: "Draw_Display.hxx".}
proc SetMode*(this: Draw_Display; M: Standard_Integer) {.noSideEffect,
    importcpp: "SetMode", header: "Draw_Display.hxx".}
proc Flush*(this: Draw_Display) {.noSideEffect, importcpp: "Flush",
                               header: "Draw_Display.hxx".}
proc MoveTo*(this: var Draw_Display; pt: gp_Pnt) {.importcpp: "MoveTo",
    header: "Draw_Display.hxx".}
proc DrawTo*(this: var Draw_Display; pt: gp_Pnt) {.importcpp: "DrawTo",
    header: "Draw_Display.hxx".}
proc MoveTo*(this: var Draw_Display; pt: gp_Pnt2d) {.importcpp: "MoveTo",
    header: "Draw_Display.hxx".}
proc DrawTo*(this: var Draw_Display; pt: gp_Pnt2d) {.importcpp: "DrawTo",
    header: "Draw_Display.hxx".}
proc Draw*(this: var Draw_Display; p1: gp_Pnt; p2: gp_Pnt) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc Draw*(this: var Draw_Display; p1: gp_Pnt2d; p2: gp_Pnt2d) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc Draw*(this: var Draw_Display; C: gp_Circ; A1: Standard_Real; A2: Standard_Real;
          ModifyWithZoom: Standard_Boolean = Standard_True) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc Draw*(this: var Draw_Display; C: gp_Circ2d; A1: Standard_Real; A2: Standard_Real;
          ModifyWithZoom: Standard_Boolean = Standard_True) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc DrawMarker*(this: var Draw_Display; pt: gp_Pnt; S: Draw_MarkerShape;
                Size: Standard_Integer = 5) {.importcpp: "DrawMarker",
    header: "Draw_Display.hxx".}
proc DrawMarker*(this: var Draw_Display; pt: gp_Pnt2d; S: Draw_MarkerShape;
                Size: Standard_Integer = 5) {.importcpp: "DrawMarker",
    header: "Draw_Display.hxx".}
proc DrawMarker*(this: var Draw_Display; pt: gp_Pnt; S: Draw_MarkerShape;
                Size: Standard_Real) {.importcpp: "DrawMarker",
                                     header: "Draw_Display.hxx".}
proc DrawMarker*(this: var Draw_Display; pt: gp_Pnt2d; S: Draw_MarkerShape;
                Size: Standard_Real) {.importcpp: "DrawMarker",
                                     header: "Draw_Display.hxx".}
proc DrawString*(this: var Draw_Display; pt: gp_Pnt; S: Standard_CString) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc DrawString*(this: var Draw_Display; pt: gp_Pnt2d; S: Standard_CString) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc DrawString*(this: var Draw_Display; pt: gp_Pnt; S: Standard_CString;
                moveX: Standard_Real; moveY: Standard_Real) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc DrawString*(this: var Draw_Display; pt: gp_Pnt2d; S: Standard_CString;
                moveX: Standard_Real; moveY: Standard_Real) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc Project*(this: Draw_Display; pt: gp_Pnt): gp_Pnt2d {.noSideEffect,
    importcpp: "Project", header: "Draw_Display.hxx".}
proc Project*(this: Draw_Display; pt: gp_Pnt; pt2d: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Project", header: "Draw_Display.hxx".}
proc Zoom*(this: Draw_Display): Standard_Real {.noSideEffect, importcpp: "Zoom",
    header: "Draw_Display.hxx".}
proc ViewId*(this: Draw_Display): Standard_Integer {.noSideEffect,
    importcpp: "ViewId", header: "Draw_Display.hxx".}
proc HasPicked*(this: Draw_Display): Standard_Boolean {.noSideEffect,
    importcpp: "HasPicked", header: "Draw_Display.hxx".}