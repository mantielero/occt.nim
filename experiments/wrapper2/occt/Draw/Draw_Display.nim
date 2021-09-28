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

discard "forward decl of Draw_Color"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Circ2d"
type
  DrawDisplay* {.importcpp: "Draw_Display", header: "Draw_Display.hxx", bycopy.} = object


proc constructDrawDisplay*(): DrawDisplay {.constructor,
    importcpp: "Draw_Display(@)", header: "Draw_Display.hxx".}
proc setColor*(this: DrawDisplay; col: DrawColor) {.noSideEffect,
    importcpp: "SetColor", header: "Draw_Display.hxx".}
proc setMode*(this: DrawDisplay; m: cint) {.noSideEffect, importcpp: "SetMode",
                                       header: "Draw_Display.hxx".}
proc flush*(this: DrawDisplay) {.noSideEffect, importcpp: "Flush",
                              header: "Draw_Display.hxx".}
proc moveTo*(this: var DrawDisplay; pt: Pnt) {.importcpp: "MoveTo",
    header: "Draw_Display.hxx".}
proc drawTo*(this: var DrawDisplay; pt: Pnt) {.importcpp: "DrawTo",
    header: "Draw_Display.hxx".}
proc moveTo*(this: var DrawDisplay; pt: Pnt2d) {.importcpp: "MoveTo",
    header: "Draw_Display.hxx".}
proc drawTo*(this: var DrawDisplay; pt: Pnt2d) {.importcpp: "DrawTo",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; p1: Pnt; p2: Pnt) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; c: Circ; a1: cfloat; a2: cfloat;
          modifyWithZoom: bool = true) {.importcpp: "Draw", header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; c: Circ2d; a1: cfloat; a2: cfloat;
          modifyWithZoom: bool = true) {.importcpp: "Draw", header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: Pnt; s: DrawMarkerShape; size: cint = 5) {.
    importcpp: "DrawMarker", header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: Pnt2d; s: DrawMarkerShape; size: cint = 5) {.
    importcpp: "DrawMarker", header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: Pnt; s: DrawMarkerShape; size: cfloat) {.
    importcpp: "DrawMarker", header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: Pnt2d; s: DrawMarkerShape; size: cfloat) {.
    importcpp: "DrawMarker", header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: Pnt; s: StandardCString) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: Pnt2d; s: StandardCString) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: Pnt; s: StandardCString; moveX: cfloat;
                moveY: cfloat) {.importcpp: "DrawString", header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: Pnt2d; s: StandardCString; moveX: cfloat;
                moveY: cfloat) {.importcpp: "DrawString", header: "Draw_Display.hxx".}
proc project*(this: DrawDisplay; pt: Pnt): Pnt2d {.noSideEffect, importcpp: "Project",
    header: "Draw_Display.hxx".}
proc project*(this: DrawDisplay; pt: Pnt; pt2d: var Pnt2d) {.noSideEffect,
    importcpp: "Project", header: "Draw_Display.hxx".}
proc zoom*(this: DrawDisplay): cfloat {.noSideEffect, importcpp: "Zoom",
                                    header: "Draw_Display.hxx".}
proc viewId*(this: DrawDisplay): cint {.noSideEffect, importcpp: "ViewId",
                                    header: "Draw_Display.hxx".}
proc hasPicked*(this: DrawDisplay): bool {.noSideEffect, importcpp: "HasPicked",
                                       header: "Draw_Display.hxx".}

























