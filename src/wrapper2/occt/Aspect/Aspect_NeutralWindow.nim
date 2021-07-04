##  Copyright (c) 2016 OPEN CASCADE SAS
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
  Aspect_Window

## ! Defines a platform-neutral window.
## ! This class is intended to be used in context when window management (including OpenGL context creation)
## ! is performed on application side (e.g. using external framework).
## !
## ! Window properties should be managed by application and assigned to this class as properties.

type
  Aspect_NeutralWindow* {.importcpp: "Aspect_NeutralWindow",
                         header: "Aspect_NeutralWindow.hxx", bycopy.} = object of Aspect_Window ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Note
                                                                                         ## that
                                                                                         ## window
                                                                                         ## is
                                                                                         ## considered
                                                                                         ## "mapped"
                                                                                         ## by
                                                                                         ## default.

  Aspect_NeutralWindowbase_type* = Aspect_Window

proc get_type_name*(): cstring {.importcpp: "Aspect_NeutralWindow::get_type_name(@)",
                              header: "Aspect_NeutralWindow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_NeutralWindow::get_type_descriptor(@)",
    header: "Aspect_NeutralWindow.hxx".}
proc DynamicType*(this: Aspect_NeutralWindow): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_NeutralWindow.hxx".}
proc constructAspect_NeutralWindow*(): Aspect_NeutralWindow {.constructor,
    importcpp: "Aspect_NeutralWindow(@)", header: "Aspect_NeutralWindow.hxx".}
proc NativeHandle*(this: Aspect_NeutralWindow): Aspect_Drawable {.noSideEffect,
    importcpp: "NativeHandle", header: "Aspect_NeutralWindow.hxx".}
proc NativeParentHandle*(this: Aspect_NeutralWindow): Aspect_Drawable {.
    noSideEffect, importcpp: "NativeParentHandle",
    header: "Aspect_NeutralWindow.hxx".}
proc NativeFBConfig*(this: Aspect_NeutralWindow): Aspect_FBConfig {.noSideEffect,
    importcpp: "NativeFBConfig", header: "Aspect_NeutralWindow.hxx".}
proc SetNativeHandle*(this: var Aspect_NeutralWindow; theWindow: Aspect_Drawable): Standard_Boolean {.
    importcpp: "SetNativeHandle", header: "Aspect_NeutralWindow.hxx".}
proc SetNativeHandles*(this: var Aspect_NeutralWindow; theWindow: Aspect_Drawable;
                      theParentWindow: Aspect_Drawable;
                      theFbConfig: Aspect_FBConfig): Standard_Boolean {.
    importcpp: "SetNativeHandles", header: "Aspect_NeutralWindow.hxx".}
proc IsMapped*(this: Aspect_NeutralWindow): Standard_Boolean {.noSideEffect,
    importcpp: "IsMapped", header: "Aspect_NeutralWindow.hxx".}
proc Map*(this: Aspect_NeutralWindow) {.noSideEffect, importcpp: "Map",
                                     header: "Aspect_NeutralWindow.hxx".}
proc Unmap*(this: Aspect_NeutralWindow) {.noSideEffect, importcpp: "Unmap",
                                       header: "Aspect_NeutralWindow.hxx".}
proc DoResize*(this: var Aspect_NeutralWindow): Aspect_TypeOfResize {.
    importcpp: "DoResize", header: "Aspect_NeutralWindow.hxx".}
proc DoMapping*(this: Aspect_NeutralWindow): Standard_Boolean {.noSideEffect,
    importcpp: "DoMapping", header: "Aspect_NeutralWindow.hxx".}
proc Ratio*(this: Aspect_NeutralWindow): Standard_Real {.noSideEffect,
    importcpp: "Ratio", header: "Aspect_NeutralWindow.hxx".}
proc Position*(this: Aspect_NeutralWindow; theX1: var Standard_Integer;
              theY1: var Standard_Integer; theX2: var Standard_Integer;
              theY2: var Standard_Integer) {.noSideEffect, importcpp: "Position",
    header: "Aspect_NeutralWindow.hxx".}
proc SetPosition*(this: var Aspect_NeutralWindow; theX1: Standard_Integer;
                 theY1: Standard_Integer): Standard_Boolean {.
    importcpp: "SetPosition", header: "Aspect_NeutralWindow.hxx".}
proc SetPosition*(this: var Aspect_NeutralWindow; theX1: Standard_Integer;
                 theY1: Standard_Integer; theX2: Standard_Integer;
                 theY2: Standard_Integer): Standard_Boolean {.
    importcpp: "SetPosition", header: "Aspect_NeutralWindow.hxx".}
proc Size*(this: Aspect_NeutralWindow; theWidth: var Standard_Integer;
          theHeight: var Standard_Integer) {.noSideEffect, importcpp: "Size",
    header: "Aspect_NeutralWindow.hxx".}
proc SetSize*(this: var Aspect_NeutralWindow; theWidth: Standard_Integer;
             theHeight: Standard_Integer): Standard_Boolean {.importcpp: "SetSize",
    header: "Aspect_NeutralWindow.hxx".}
discard "forward decl of Aspect_NeutralWindow"
type
  Handle_Aspect_NeutralWindow* = handle[Aspect_NeutralWindow]
