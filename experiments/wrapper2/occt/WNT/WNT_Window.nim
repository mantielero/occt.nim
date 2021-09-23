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

import
  ../Aspect/Aspect_Window

when defined(_WIN32) and not defined(OCCT_UWP):
  import
    ../Aspect/Aspect_Drawable, ../Aspect/Aspect_VKey, ../Aspect/Aspect_Handle,
    ../Standard/Standard_Type, WNT_Dword

  discard "forward decl of WNT_WClass"
  discard "forward decl of WNT_Window"
  type
    Handle_WNT_Window* = handle[WNT_Window]
  ## ! This class defines Windows NT window
  type
    WNT_Window* {.importcpp: "WNT_Window", header: "WNT_Window.hxx", bycopy.} = object of Aspect_Window ##
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

  proc VirtualKeyFromNative*(theKey: Standard_Integer): Aspect_VKey {.
      importcpp: "WNT_Window::VirtualKeyFromNative(@)", header: "WNT_Window.hxx".}
  proc MouseKeyFlagsFromEvent*(theKeys: WPARAM): Aspect_VKeyFlags {.
      importcpp: "WNT_Window::MouseKeyFlagsFromEvent(@)", header: "WNT_Window.hxx".}
  proc MouseButtonsFromEvent*(theKeys: WPARAM): Aspect_VKeyMouse {.
      importcpp: "WNT_Window::MouseButtonsFromEvent(@)", header: "WNT_Window.hxx".}
  proc MouseKeyFlagsAsync*(): Aspect_VKeyFlags {.
      importcpp: "WNT_Window::MouseKeyFlagsAsync(@)", header: "WNT_Window.hxx".}
  proc MouseButtonsAsync*(): Aspect_VKeyMouse {.
      importcpp: "WNT_Window::MouseButtonsAsync(@)", header: "WNT_Window.hxx".}
  proc constructWNT_Window*(theTitle: Standard_CString;
                           theClass: handle[WNT_WClass]; theStyle: WNT_Dword;
                           thePxLeft: Standard_Integer;
                           thePxTop: Standard_Integer;
                           thePxWidth: Standard_Integer;
                           thePxHeight: Standard_Integer; theBackColor: Quantity_NameOfColor = Quantity_NOC_MATRAGRAY;
                           theParent: Aspect_Handle = 0; theMenu: Aspect_Handle = 0;
                           theClientStruct: Standard_Address = 0): WNT_Window {.
      constructor, importcpp: "WNT_Window(@)", header: "WNT_Window.hxx".}
  proc constructWNT_Window*(aHandle: Aspect_Handle; aBackColor: Quantity_NameOfColor = Quantity_NOC_MATRAGRAY): WNT_Window {.
      constructor, importcpp: "WNT_Window(@)", header: "WNT_Window.hxx".}
  proc destroyWNT_Window*(this: var WNT_Window) {.importcpp: "#.~WNT_Window()",
      header: "WNT_Window.hxx".}
  proc SetCursor*(this: WNT_Window; aCursor: Aspect_Handle) {.noSideEffect,
      importcpp: "SetCursor", header: "WNT_Window.hxx".}
  proc Map*(this: WNT_Window) {.noSideEffect, importcpp: "Map",
                             header: "WNT_Window.hxx".}
  proc Map*(this: WNT_Window; aMapMode: Standard_Integer) {.noSideEffect,
      importcpp: "Map", header: "WNT_Window.hxx".}
  proc Unmap*(this: WNT_Window) {.noSideEffect, importcpp: "Unmap",
                               header: "WNT_Window.hxx".}
  proc DoResize*(this: var WNT_Window): Aspect_TypeOfResize {.importcpp: "DoResize",
      header: "WNT_Window.hxx".}
  proc DoMapping*(this: WNT_Window): Standard_Boolean {.noSideEffect,
      importcpp: "DoMapping", header: "WNT_Window.hxx".}
  proc SetPos*(this: var WNT_Window; X: Standard_Integer; Y: Standard_Integer;
              X1: Standard_Integer; Y1: Standard_Integer) {.importcpp: "SetPos",
      header: "WNT_Window.hxx".}
  proc IsMapped*(this: WNT_Window): Standard_Boolean {.noSideEffect,
      importcpp: "IsMapped", header: "WNT_Window.hxx".}
  proc Ratio*(this: WNT_Window): Standard_Real {.noSideEffect, importcpp: "Ratio",
      header: "WNT_Window.hxx".}
  proc Position*(this: WNT_Window; X1: var Standard_Integer; Y1: var Standard_Integer;
                X2: var Standard_Integer; Y2: var Standard_Integer) {.noSideEffect,
      importcpp: "Position", header: "WNT_Window.hxx".}
  proc Size*(this: WNT_Window; Width: var Standard_Integer;
            Height: var Standard_Integer) {.noSideEffect, importcpp: "Size",
      header: "WNT_Window.hxx".}
  proc HWindow*(this: WNT_Window): Aspect_Handle {.noSideEffect,
      importcpp: "HWindow", header: "WNT_Window.hxx".}
  proc HParentWindow*(this: WNT_Window): Aspect_Handle {.noSideEffect,
      importcpp: "HParentWindow", header: "WNT_Window.hxx".}
  proc NativeHandle*(this: WNT_Window): Aspect_Drawable {.noSideEffect,
      importcpp: "NativeHandle", header: "WNT_Window.hxx".}
  proc NativeParentHandle*(this: WNT_Window): Aspect_Drawable {.noSideEffect,
      importcpp: "NativeParentHandle", header: "WNT_Window.hxx".}
  proc NativeFBConfig*(this: WNT_Window): Aspect_FBConfig {.noSideEffect,
      importcpp: "NativeFBConfig", header: "WNT_Window.hxx".}
  proc SetTitle*(this: var WNT_Window; theTitle: TCollection_AsciiString) {.
      importcpp: "SetTitle", header: "WNT_Window.hxx".}
  proc InvalidateContent*(this: var WNT_Window;
                         theDisp: handle[Aspect_DisplayConnection] = nil) {.
      importcpp: "InvalidateContent", header: "WNT_Window.hxx".}
  type
    WNT_WindowRawInputMask* {.size: sizeof(cint),
                             importcpp: "WNT_Window::RawInputMask",
                             header: "WNT_Window.hxx".} = enum
      RawInputMask_Mouse = 0x01, ## !< HID_USAGE_GENERIC_MOUSE
      RawInputMask_SpaceMouse = 0x02 ## !< HID_USAGE_GENERIC_MULTI_AXIS_CONTROLLER
  proc RegisterRawInputDevices*(this: var WNT_Window; theRawDeviceMask: cuint): cint {.
      importcpp: "RegisterRawInputDevices", header: "WNT_Window.hxx".}
  type
    WNT_Windowbase_type* = Aspect_Window
  proc get_type_name*(): cstring {.importcpp: "WNT_Window::get_type_name(@)",
                                header: "WNT_Window.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "WNT_Window::get_type_descriptor(@)", header: "WNT_Window.hxx".}
  proc DynamicType*(this: WNT_Window): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "WNT_Window.hxx".}