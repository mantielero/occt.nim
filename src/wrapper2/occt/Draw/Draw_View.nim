##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of Draw_Viewer"
type
  DrawView* {.importcpp: "Draw_View", header: "Draw_View.hxx", bycopy.} = object of DrawWindow ##
                                                                                     ## !
                                                                                     ## Constructor
                                                                                     ##
                                                                                     ## @name
                                                                                     ## getters
                                                                                     ## and
                                                                                     ## setters
                                                                                     ##
                                                                                     ## !
                                                                                     ## Sets
                                                                                     ## horizontal
                                                                                     ## offset.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## public
                                                                                     ## inline
                                                                                     ## methods
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## type
                                                                                     ## of
                                                                                     ## view.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## view
                                                                                     ## API
                                                                                     ##
                                                                                     ## !
                                                                                     ## Initialize
                                                                                     ## view
                                                                                     ## by
                                                                                     ## the
                                                                                     ## type.


proc constructDrawView*(theId: StandardInteger; theViewer: ptr DrawViewer;
                       theX: StandardInteger; theY: StandardInteger;
                       theWidth: StandardInteger; theHeight: StandardInteger): DrawView {.
    constructor, importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
when defined(win32) or defined(win32):
  proc constructDrawView*(theId: StandardInteger; theViewer: ptr DrawViewer;
                         theX: StandardInteger; theY: StandardInteger;
                         theWidth: StandardInteger; theHeight: StandardInteger;
                         theWindow: Hwnd): DrawView {.constructor,
      importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
when not (defined(win32) or defined(win32)) and
    not (defined(win32) or defined(win32)):
  proc constructDrawView*(theId: StandardInteger; theViewer: ptr DrawViewer;
                         theX: StandardInteger; theY: StandardInteger;
                         theWidth: StandardInteger; theHeight: StandardInteger;
                         theWindow: ptr NSWindow): DrawView {.constructor,
      importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
proc constructDrawView*(theId: StandardInteger; theViewer: ptr DrawViewer;
                       theTitle: cstring): DrawView {.constructor,
    importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
proc destroyDrawView*(this: var DrawView) {.importcpp: "#.~Draw_View()",
                                        header: "Draw_View.hxx".}
proc setDx*(this: var DrawView; theDx: StandardInteger) {.importcpp: "SetDx",
    header: "Draw_View.hxx".}
proc setDy*(this: var DrawView; theDy: StandardInteger) {.importcpp: "SetDy",
    header: "Draw_View.hxx".}
proc setZoom*(this: var DrawView; theZoom: StandardReal) {.importcpp: "SetZoom",
    header: "Draw_View.hxx".}
proc setMatrix*(this: var DrawView; theMatrix: GpTrsf) {.importcpp: "SetMatrix",
    header: "Draw_View.hxx".}
proc setFocalDistance*(this: var DrawView; theDistance: StandardReal) {.
    importcpp: "SetFocalDistance", header: "Draw_View.hxx".}
proc getDx*(this: DrawView): StandardInteger {.noSideEffect, importcpp: "GetDx",
    header: "Draw_View.hxx".}
proc getDy*(this: DrawView): StandardInteger {.noSideEffect, importcpp: "GetDy",
    header: "Draw_View.hxx".}
proc getZoom*(this: DrawView): StandardReal {.noSideEffect, importcpp: "GetZoom",
    header: "Draw_View.hxx".}
proc getMatrix*(this: DrawView): GpTrsf {.noSideEffect, importcpp: "GetMatrix",
                                      header: "Draw_View.hxx".}
proc getFocalDistance*(this: DrawView): StandardReal {.noSideEffect,
    importcpp: "GetFocalDistance", header: "Draw_View.hxx".}
proc `type`*(this: var DrawView): cstring {.importcpp: "Type", header: "Draw_View.hxx".}
proc is2D*(this: DrawView): StandardBoolean {.noSideEffect, importcpp: "Is2D",
    header: "Draw_View.hxx".}
proc isPerspective*(this: DrawView): StandardReal {.noSideEffect,
    importcpp: "IsPerspective", header: "Draw_View.hxx".}
proc init*(this: var DrawView; theType: cstring): StandardBoolean {.importcpp: "Init",
    header: "Draw_View.hxx".}
proc transform*(this: var DrawView; theTransformation: GpTrsf) {.
    importcpp: "Transform", header: "Draw_View.hxx".}
proc resetFrame*(this: var DrawView) {.importcpp: "ResetFrame",
                                   header: "Draw_View.hxx".}
proc getFrame*(this: var DrawView; theX0: var StandardInteger;
              theY0: var StandardInteger; theX1: var StandardInteger;
              theY1: var StandardInteger) {.importcpp: "GetFrame",
    header: "Draw_View.hxx".}
proc wExpose*(this: var DrawView) {.importcpp: "WExpose", header: "Draw_View.hxx".}

