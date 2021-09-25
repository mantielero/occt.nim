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

when not defined(win32) and (not defined(apple) or defined(macosx_Use_Glx)) and
    not defined(android) and not defined(qnx) and not defined(emscripten):
  discard "forward decl of Aspect_WindowDefinitionError"
  discard "forward decl of Aspect_WindowError"
  discard "forward decl of Aspect_Background"
  discard "forward decl of Quantity_Color"
  discard "forward decl of Aspect_GradientBackground"
  type
    XwWindow* {.importcpp: "Xw_Window", header: "Xw_Window.hxx", bycopy.} = object of AspectWindow ##
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

  proc virtualKeyFromNative*(theKey: culong): AspectVKey {.
      importcpp: "Xw_Window::VirtualKeyFromNative(@)", header: "Xw_Window.hxx".}
  proc constructXwWindow*(theXDisplay: Handle[AspectDisplayConnection];
                         theTitle: StandardCString; thePxLeft: int; thePxTop: int;
                         thePxWidth: int; thePxHeight: int;
                         theFBConfig: AspectFBConfig = nil): XwWindow {.constructor,
      importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}
  proc constructXwWindow*(theXDisplay: Handle[AspectDisplayConnection];
                         theXWin: Window; theFBConfig: AspectFBConfig = nil): XwWindow {.
      constructor, importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}
  proc destroyXwWindow*(this: var XwWindow) {.importcpp: "#.~Xw_Window()",
      header: "Xw_Window.hxx".}
  proc map*(this: XwWindow) {.noSideEffect, importcpp: "Map", header: "Xw_Window.hxx".}
  proc unmap*(this: XwWindow) {.noSideEffect, importcpp: "Unmap",
                             header: "Xw_Window.hxx".}
  proc doResize*(this: var XwWindow): AspectTypeOfResize {.importcpp: "DoResize",
      header: "Xw_Window.hxx".}
  proc doMapping*(this: XwWindow): bool {.noSideEffect, importcpp: "DoMapping",
                                      header: "Xw_Window.hxx".}
  proc isMapped*(this: XwWindow): bool {.noSideEffect, importcpp: "IsMapped",
                                     header: "Xw_Window.hxx".}
  proc ratio*(this: XwWindow): float {.noSideEffect, importcpp: "Ratio",
                                   header: "Xw_Window.hxx".}
  proc position*(this: XwWindow; x1: var int; y1: var int; x2: var int; y2: var int) {.
      noSideEffect, importcpp: "Position", header: "Xw_Window.hxx".}
  proc size*(this: XwWindow; theWidth: var int; theHeight: var int) {.noSideEffect,
      importcpp: "Size", header: "Xw_Window.hxx".}
  proc xWindow*(this: XwWindow): Window {.noSideEffect, importcpp: "XWindow",
                                      header: "Xw_Window.hxx".}
  proc displayConnection*(this: XwWindow): Handle[AspectDisplayConnection] {.
      noSideEffect, importcpp: "DisplayConnection", header: "Xw_Window.hxx".}
  proc nativeHandle*(this: XwWindow): AspectDrawable {.noSideEffect,
      importcpp: "NativeHandle", header: "Xw_Window.hxx".}
  proc nativeParentHandle*(this: XwWindow): AspectDrawable {.noSideEffect,
      importcpp: "NativeParentHandle", header: "Xw_Window.hxx".}
  proc nativeFBConfig*(this: XwWindow): AspectFBConfig {.noSideEffect,
      importcpp: "NativeFBConfig", header: "Xw_Window.hxx".}
  proc setTitle*(this: var XwWindow; theTitle: TCollectionAsciiString) {.
      importcpp: "SetTitle", header: "Xw_Window.hxx".}
  proc invalidateContent*(this: var XwWindow;
                         theDisp: Handle[AspectDisplayConnection]) {.
      importcpp: "InvalidateContent", header: "Xw_Window.hxx".}
  type
    XwWindowbaseType* = AspectWindow
  proc getTypeName*(): cstring {.importcpp: "Xw_Window::get_type_name(@)",
                              header: "Xw_Window.hxx".}
  proc getTypeDescriptor*(): Handle[StandardType] {.
      importcpp: "Xw_Window::get_type_descriptor(@)", header: "Xw_Window.hxx".}
  proc dynamicType*(this: XwWindow): Handle[StandardType] {.noSideEffect,
      importcpp: "DynamicType", header: "Xw_Window.hxx".}
  discard "forward decl of Xw_Window"
  type
    HandleXwWindow* = Handle[XwWindow]
