##  Created on: 2013-04-06
##  Created by: Kirill Gavrilov
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

when not defined(_WIN32) and (not defined(__APPLE__) or defined(MACOSX_USE_GLX)) and
    not defined(__ANDROID__) and not defined(__QNX__) and
    not defined(__EMSCRIPTEN__):
  import
    ../Aspect/Aspect_Window, ../Aspect/Aspect_VKey,
    ../Aspect/Aspect_DisplayConnection, ../Aspect/Aspect_FillMethod,
    ../Aspect/Aspect_GradientFillMethod, ../Aspect/Aspect_Handle,
    ../Aspect/Aspect_TypeOfResize, ../Standard/Standard,
    ../Standard/Standard_Type, ../Quantity/Quantity_NameOfColor

  discard "forward decl of Aspect_WindowDefinitionError"
  discard "forward decl of Aspect_WindowError"
  discard "forward decl of Aspect_Background"
  discard "forward decl of Quantity_Color"
  discard "forward decl of Aspect_GradientBackground"
  type
    Xw_Window* {.importcpp: "Xw_Window", header: "Xw_Window.hxx", bycopy.} = object of Aspect_Window ##
                                                                                           ## !
                                                                                           ## Convert
                                                                                           ## X11
                                                                                           ## virtual
                                                                                           ## key
                                                                                           ## (KeySym)
                                                                                           ## into
                                                                                           ## Aspect_VKey.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## XLib
                                                                                           ## window
                                                                                           ## defined
                                                                                           ## by
                                                                                           ## his
                                                                                           ## position
                                                                                           ## and
                                                                                           ## size
                                                                                           ## in
                                                                                           ## pixels.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Throws
                                                                                           ## exception
                                                                                           ## if
                                                                                           ## window
                                                                                           ## can
                                                                                           ## not
                                                                                           ## be
                                                                                           ## created
                                                                                           ## or
                                                                                           ## Display
                                                                                           ## do
                                                                                           ## not
                                                                                           ## support
                                                                                           ## GLX
                                                                                           ## extension.
      ## !< X Display connection
      ## !< XLib window handle
      ## !< GLXFBConfig
      ## !< left   position in pixels
      ## !< top    position in pixels
      ## !< right  position in pixels
      ## !< bottom position in pixels
      ## !< flag to indicate own window handle (to be deallocated on destruction)

  proc VirtualKeyFromNative*(theKey: culong): Aspect_VKey {.
      importcpp: "Xw_Window::VirtualKeyFromNative(@)", header: "Xw_Window.hxx".}
  proc constructXw_Window*(theXDisplay: handle[Aspect_DisplayConnection];
                          theTitle: Standard_CString; thePxLeft: Standard_Integer;
                          thePxTop: Standard_Integer;
                          thePxWidth: Standard_Integer;
                          thePxHeight: Standard_Integer;
                          theFBConfig: Aspect_FBConfig = nil): Xw_Window {.
      constructor, importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}
  proc constructXw_Window*(theXDisplay: handle[Aspect_DisplayConnection];
                          theXWin: Window; theFBConfig: Aspect_FBConfig = nil): Xw_Window {.
      constructor, importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}
  proc destroyXw_Window*(this: var Xw_Window) {.importcpp: "#.~Xw_Window()",
      header: "Xw_Window.hxx".}
  proc Map*(this: Xw_Window) {.noSideEffect, importcpp: "Map", header: "Xw_Window.hxx".}
  proc Unmap*(this: Xw_Window) {.noSideEffect, importcpp: "Unmap",
                              header: "Xw_Window.hxx".}
  proc DoResize*(this: var Xw_Window): Aspect_TypeOfResize {.importcpp: "DoResize",
      header: "Xw_Window.hxx".}
  proc DoMapping*(this: Xw_Window): Standard_Boolean {.noSideEffect,
      importcpp: "DoMapping", header: "Xw_Window.hxx".}
  proc IsMapped*(this: Xw_Window): Standard_Boolean {.noSideEffect,
      importcpp: "IsMapped", header: "Xw_Window.hxx".}
  proc Ratio*(this: Xw_Window): Standard_Real {.noSideEffect, importcpp: "Ratio",
      header: "Xw_Window.hxx".}
  proc Position*(this: Xw_Window; X1: var Standard_Integer; Y1: var Standard_Integer;
                X2: var Standard_Integer; Y2: var Standard_Integer) {.noSideEffect,
      importcpp: "Position", header: "Xw_Window.hxx".}
  proc Size*(this: Xw_Window; theWidth: var Standard_Integer;
            theHeight: var Standard_Integer) {.noSideEffect, importcpp: "Size",
      header: "Xw_Window.hxx".}
  proc XWindow*(this: Xw_Window): Window {.noSideEffect, importcpp: "XWindow",
                                       header: "Xw_Window.hxx".}
  proc DisplayConnection*(this: Xw_Window): handle[Aspect_DisplayConnection] {.
      noSideEffect, importcpp: "DisplayConnection", header: "Xw_Window.hxx".}
  proc NativeHandle*(this: Xw_Window): Aspect_Drawable {.noSideEffect,
      importcpp: "NativeHandle", header: "Xw_Window.hxx".}
  proc NativeParentHandle*(this: Xw_Window): Aspect_Drawable {.noSideEffect,
      importcpp: "NativeParentHandle", header: "Xw_Window.hxx".}
  proc NativeFBConfig*(this: Xw_Window): Aspect_FBConfig {.noSideEffect,
      importcpp: "NativeFBConfig", header: "Xw_Window.hxx".}
  proc SetTitle*(this: var Xw_Window; theTitle: TCollection_AsciiString) {.
      importcpp: "SetTitle", header: "Xw_Window.hxx".}
  proc InvalidateContent*(this: var Xw_Window;
                         theDisp: handle[Aspect_DisplayConnection]) {.
      importcpp: "InvalidateContent", header: "Xw_Window.hxx".}
  type
    Xw_Windowbase_type* = Aspect_Window
  proc get_type_name*(): cstring {.importcpp: "Xw_Window::get_type_name(@)",
                                header: "Xw_Window.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "Xw_Window::get_type_descriptor(@)", header: "Xw_Window.hxx".}
  proc DynamicType*(this: Xw_Window): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "Xw_Window.hxx".}
  discard "forward decl of Xw_Window"
  type
    Handle_Xw_Window* = handle[Xw_Window]