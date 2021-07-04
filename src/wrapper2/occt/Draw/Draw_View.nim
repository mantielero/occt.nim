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

import
  ../gp/gp_Trsf, Draw_Window

discard "forward decl of Draw_Viewer"
type
  Draw_View* {.importcpp: "Draw_View", header: "Draw_View.hxx", bycopy.} = object of Draw_Window ##
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


proc constructDraw_View*(theId: Standard_Integer; theViewer: ptr Draw_Viewer;
                        theX: Standard_Integer; theY: Standard_Integer;
                        theWidth: Standard_Integer; theHeight: Standard_Integer): Draw_View {.
    constructor, importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
when defined(_WIN32) or defined(__WIN32__):
  proc constructDraw_View*(theId: Standard_Integer; theViewer: ptr Draw_Viewer;
                          theX: Standard_Integer; theY: Standard_Integer;
                          theWidth: Standard_Integer; theHeight: Standard_Integer;
                          theWindow: HWND): Draw_View {.constructor,
      importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
when not (defined(_WIN32) or defined(__WIN32__)) and
    not (defined(_WIN32) or defined(__WIN32__)):
  proc constructDraw_View*(theId: Standard_Integer; theViewer: ptr Draw_Viewer;
                          theX: Standard_Integer; theY: Standard_Integer;
                          theWidth: Standard_Integer; theHeight: Standard_Integer;
                          theWindow: ptr NSWindow): Draw_View {.constructor,
      importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
proc constructDraw_View*(theId: Standard_Integer; theViewer: ptr Draw_Viewer;
                        theTitle: cstring): Draw_View {.constructor,
    importcpp: "Draw_View(@)", header: "Draw_View.hxx".}
proc destroyDraw_View*(this: var Draw_View) {.importcpp: "#.~Draw_View()",
    header: "Draw_View.hxx".}
proc SetDx*(this: var Draw_View; theDx: Standard_Integer) {.importcpp: "SetDx",
    header: "Draw_View.hxx".}
proc SetDy*(this: var Draw_View; theDy: Standard_Integer) {.importcpp: "SetDy",
    header: "Draw_View.hxx".}
proc SetZoom*(this: var Draw_View; theZoom: Standard_Real) {.importcpp: "SetZoom",
    header: "Draw_View.hxx".}
proc SetMatrix*(this: var Draw_View; theMatrix: gp_Trsf) {.importcpp: "SetMatrix",
    header: "Draw_View.hxx".}
proc SetFocalDistance*(this: var Draw_View; theDistance: Standard_Real) {.
    importcpp: "SetFocalDistance", header: "Draw_View.hxx".}
proc GetDx*(this: Draw_View): Standard_Integer {.noSideEffect, importcpp: "GetDx",
    header: "Draw_View.hxx".}
proc GetDy*(this: Draw_View): Standard_Integer {.noSideEffect, importcpp: "GetDy",
    header: "Draw_View.hxx".}
proc GetZoom*(this: Draw_View): Standard_Real {.noSideEffect, importcpp: "GetZoom",
    header: "Draw_View.hxx".}
proc GetMatrix*(this: Draw_View): gp_Trsf {.noSideEffect, importcpp: "GetMatrix",
                                        header: "Draw_View.hxx".}
proc GetFocalDistance*(this: Draw_View): Standard_Real {.noSideEffect,
    importcpp: "GetFocalDistance", header: "Draw_View.hxx".}
proc Type*(this: var Draw_View): cstring {.importcpp: "Type", header: "Draw_View.hxx".}
proc Is2D*(this: Draw_View): Standard_Boolean {.noSideEffect, importcpp: "Is2D",
    header: "Draw_View.hxx".}
proc IsPerspective*(this: Draw_View): Standard_Real {.noSideEffect,
    importcpp: "IsPerspective", header: "Draw_View.hxx".}
proc Init*(this: var Draw_View; theType: cstring): Standard_Boolean {.
    importcpp: "Init", header: "Draw_View.hxx".}
proc Transform*(this: var Draw_View; theTransformation: gp_Trsf) {.
    importcpp: "Transform", header: "Draw_View.hxx".}
proc ResetFrame*(this: var Draw_View) {.importcpp: "ResetFrame",
                                    header: "Draw_View.hxx".}
proc GetFrame*(this: var Draw_View; theX0: var Standard_Integer;
              theY0: var Standard_Integer; theX1: var Standard_Integer;
              theY1: var Standard_Integer) {.importcpp: "GetFrame",
    header: "Draw_View.hxx".}
proc WExpose*(this: var Draw_View) {.importcpp: "WExpose", header: "Draw_View.hxx".}