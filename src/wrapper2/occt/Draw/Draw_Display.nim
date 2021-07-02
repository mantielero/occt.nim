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
proc setMode*(this: DrawDisplay; m: StandardInteger) {.noSideEffect,
    importcpp: "SetMode", header: "Draw_Display.hxx".}
proc flush*(this: DrawDisplay) {.noSideEffect, importcpp: "Flush",
                              header: "Draw_Display.hxx".}
proc moveTo*(this: var DrawDisplay; pt: GpPnt) {.importcpp: "MoveTo",
    header: "Draw_Display.hxx".}
proc drawTo*(this: var DrawDisplay; pt: GpPnt) {.importcpp: "DrawTo",
    header: "Draw_Display.hxx".}
proc moveTo*(this: var DrawDisplay; pt: GpPnt2d) {.importcpp: "MoveTo",
    header: "Draw_Display.hxx".}
proc drawTo*(this: var DrawDisplay; pt: GpPnt2d) {.importcpp: "DrawTo",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; p1: GpPnt; p2: GpPnt) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; p1: GpPnt2d; p2: GpPnt2d) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; c: GpCirc; a1: StandardReal; a2: StandardReal;
          modifyWithZoom: StandardBoolean = standardTrue) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc draw*(this: var DrawDisplay; c: GpCirc2d; a1: StandardReal; a2: StandardReal;
          modifyWithZoom: StandardBoolean = standardTrue) {.importcpp: "Draw",
    header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: GpPnt; s: DrawMarkerShape;
                size: StandardInteger = 5) {.importcpp: "DrawMarker",
    header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: GpPnt2d; s: DrawMarkerShape;
                size: StandardInteger = 5) {.importcpp: "DrawMarker",
    header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: GpPnt; s: DrawMarkerShape;
                size: StandardReal) {.importcpp: "DrawMarker",
                                    header: "Draw_Display.hxx".}
proc drawMarker*(this: var DrawDisplay; pt: GpPnt2d; s: DrawMarkerShape;
                size: StandardReal) {.importcpp: "DrawMarker",
                                    header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: GpPnt; s: StandardCString) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: GpPnt2d; s: StandardCString) {.
    importcpp: "DrawString", header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: GpPnt; s: StandardCString;
                moveX: StandardReal; moveY: StandardReal) {.importcpp: "DrawString",
    header: "Draw_Display.hxx".}
proc drawString*(this: var DrawDisplay; pt: GpPnt2d; s: StandardCString;
                moveX: StandardReal; moveY: StandardReal) {.importcpp: "DrawString",
    header: "Draw_Display.hxx".}
proc project*(this: DrawDisplay; pt: GpPnt): GpPnt2d {.noSideEffect,
    importcpp: "Project", header: "Draw_Display.hxx".}
proc project*(this: DrawDisplay; pt: GpPnt; pt2d: var GpPnt2d) {.noSideEffect,
    importcpp: "Project", header: "Draw_Display.hxx".}
proc zoom*(this: DrawDisplay): StandardReal {.noSideEffect, importcpp: "Zoom",
    header: "Draw_Display.hxx".}
proc viewId*(this: DrawDisplay): StandardInteger {.noSideEffect, importcpp: "ViewId",
    header: "Draw_Display.hxx".}
proc hasPicked*(this: DrawDisplay): StandardBoolean {.noSideEffect,
    importcpp: "HasPicked", header: "Draw_Display.hxx".}

