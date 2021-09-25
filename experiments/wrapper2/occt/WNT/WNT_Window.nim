##  Created on: 1996-01-26
##  Created by: PLOTNIKOV Eugeny
##  Copyright (c) 1996-1999 Matra Datavision
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

when defined(win32) and not defined(occt_Uwp):
  discard "forward decl of WNT_WClass"
  discard "forward decl of WNT_Window"
  type
    HandleWNT_Window* = Handle[WNT_Window]
  ## ! This class defines Windows NT window
  type
    WNT_Window* {.importcpp: "WNT_Window", header: "WNT_Window.hxx", bycopy.} = object of AspectWindow ##
                                                                                             ## !
                                                                                             ## Convert
                                                                                             ## WInAPI
                                                                                             ## virtual
                                                                                             ## key
                                                                                             ## (VK_
                                                                                             ## enumeration)
                                                                                             ## into
                                                                                             ## Aspect_VKey.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## Window
                                                                                             ## defined
                                                                                             ## by
                                                                                             ## his
                                                                                             ## position
                                                                                             ## and
                                                                                             ## size
                                                                                             ##
                                                                                             ## !
                                                                                             ## in
                                                                                             ## pixles
                                                                                             ## from
                                                                                             ## the
                                                                                             ## Parent
                                                                                             ## Window.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Trigger:
                                                                                             ## Raises
                                                                                             ## WindowDefinitionError
                                                                                             ## if
                                                                                             ## the
                                                                                             ## Position
                                                                                             ## out
                                                                                             ## of
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## Screen
                                                                                             ## Space
                                                                                             ## or
                                                                                             ## the
                                                                                             ## window
                                                                                             ## creation
                                                                                             ## failed.

  proc virtualKeyFromNative*(theKey: int): AspectVKey {.
      importcpp: "WNT_Window::VirtualKeyFromNative(@)", header: "WNT_Window.hxx".}
  proc mouseKeyFlagsFromEvent*(theKeys: Wparam): AspectVKeyFlags {.
      importcpp: "WNT_Window::MouseKeyFlagsFromEvent(@)", header: "WNT_Window.hxx".}
  proc mouseButtonsFromEvent*(theKeys: Wparam): AspectVKeyMouse {.
      importcpp: "WNT_Window::MouseButtonsFromEvent(@)", header: "WNT_Window.hxx".}
  proc mouseKeyFlagsAsync*(): AspectVKeyFlags {.
      importcpp: "WNT_Window::MouseKeyFlagsAsync(@)", header: "WNT_Window.hxx".}
  proc mouseButtonsAsync*(): AspectVKeyMouse {.
      importcpp: "WNT_Window::MouseButtonsAsync(@)", header: "WNT_Window.hxx".}
  proc constructWNT_Window*(theTitle: StandardCString;
                           theClass: Handle[WNT_WClass]; theStyle: WNT_Dword;
                           thePxLeft: int; thePxTop: int; thePxWidth: int;
                           thePxHeight: int; theBackColor: QuantityNameOfColor = quantityNOC_MATRAGRAY;
                           theParent: AspectHandle = 0; theMenu: AspectHandle = 0;
                           theClientStruct: StandardAddress = 0): WNT_Window {.
      constructor, importcpp: "WNT_Window(@)", header: "WNT_Window.hxx".}
  proc constructWNT_Window*(aHandle: AspectHandle; aBackColor: QuantityNameOfColor = quantityNOC_MATRAGRAY): WNT_Window {.
      constructor, importcpp: "WNT_Window(@)", header: "WNT_Window.hxx".}
  proc destroyWNT_Window*(this: var WNT_Window) {.importcpp: "#.~WNT_Window()",
      header: "WNT_Window.hxx".}
  proc setCursor*(this: WNT_Window; aCursor: AspectHandle) {.noSideEffect,
      importcpp: "SetCursor", header: "WNT_Window.hxx".}
  proc map*(this: WNT_Window) {.noSideEffect, importcpp: "Map",
                             header: "WNT_Window.hxx".}
  proc map*(this: WNT_Window; aMapMode: int) {.noSideEffect, importcpp: "Map",
      header: "WNT_Window.hxx".}
  proc unmap*(this: WNT_Window) {.noSideEffect, importcpp: "Unmap",
                               header: "WNT_Window.hxx".}
  proc doResize*(this: var WNT_Window): AspectTypeOfResize {.importcpp: "DoResize",
      header: "WNT_Window.hxx".}
  proc doMapping*(this: WNT_Window): bool {.noSideEffect, importcpp: "DoMapping",
                                        header: "WNT_Window.hxx".}
  proc setPos*(this: var WNT_Window; x: int; y: int; x1: int; y1: int) {.
      importcpp: "SetPos", header: "WNT_Window.hxx".}
  proc isMapped*(this: WNT_Window): bool {.noSideEffect, importcpp: "IsMapped",
                                       header: "WNT_Window.hxx".}
  proc ratio*(this: WNT_Window): float {.noSideEffect, importcpp: "Ratio",
                                     header: "WNT_Window.hxx".}
  proc position*(this: WNT_Window; x1: var int; y1: var int; x2: var int; y2: var int) {.
      noSideEffect, importcpp: "Position", header: "WNT_Window.hxx".}
  proc size*(this: WNT_Window; width: var int; height: var int) {.noSideEffect,
      importcpp: "Size", header: "WNT_Window.hxx".}
  proc hWindow*(this: WNT_Window): AspectHandle {.noSideEffect, importcpp: "HWindow",
      header: "WNT_Window.hxx".}
  proc hParentWindow*(this: WNT_Window): AspectHandle {.noSideEffect,
      importcpp: "HParentWindow", header: "WNT_Window.hxx".}
  proc nativeHandle*(this: WNT_Window): AspectDrawable {.noSideEffect,
      importcpp: "NativeHandle", header: "WNT_Window.hxx".}
  proc nativeParentHandle*(this: WNT_Window): AspectDrawable {.noSideEffect,
      importcpp: "NativeParentHandle", header: "WNT_Window.hxx".}
  proc nativeFBConfig*(this: WNT_Window): AspectFBConfig {.noSideEffect,
      importcpp: "NativeFBConfig", header: "WNT_Window.hxx".}
  proc setTitle*(this: var WNT_Window; theTitle: TCollectionAsciiString) {.
      importcpp: "SetTitle", header: "WNT_Window.hxx".}
  proc invalidateContent*(this: var WNT_Window;
                         theDisp: Handle[AspectDisplayConnection] = nil) {.
      importcpp: "InvalidateContent", header: "WNT_Window.hxx".}
  type
    WNT_WindowRawInputMask* {.size: sizeof(cint),
                             importcpp: "WNT_Window::RawInputMask",
                             header: "WNT_Window.hxx".} = enum
      RawInputMaskMouse = 0x01, ## !< HID_USAGE_GENERIC_MOUSE
      RawInputMaskSpaceMouse = 0x02 ## !< HID_USAGE_GENERIC_MULTI_AXIS_CONTROLLER
  proc registerRawInputDevices*(this: var WNT_Window; theRawDeviceMask: cuint): cint {.
      importcpp: "RegisterRawInputDevices", header: "WNT_Window.hxx".}
  type
    WNT_WindowbaseType* = AspectWindow
  proc getTypeName*(): cstring {.importcpp: "WNT_Window::get_type_name(@)",
                              header: "WNT_Window.hxx".}
  proc getTypeDescriptor*(): Handle[StandardType] {.
      importcpp: "WNT_Window::get_type_descriptor(@)", header: "WNT_Window.hxx".}
  proc dynamicType*(this: WNT_Window): Handle[StandardType] {.noSideEffect,
      importcpp: "DynamicType", header: "WNT_Window.hxx".}
