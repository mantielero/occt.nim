##  Created by: NW,JPB,CAL
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
  Aspect_Background, Aspect_GradientBackground, Aspect_FBConfig, Aspect_FillMethod,
  ../Quantity/Quantity_Color, Aspect_GradientFillMethod, Aspect_TypeOfResize,
  Aspect_Drawable, ../Standard/Standard, ../Standard/Standard_Transient,
  ../Standard/Standard_Type, ../TCollection/TCollection_AsciiString

discard "forward decl of Aspect_DisplayConnection"
discard "forward decl of Aspect_Window"
type
  Handle_Aspect_Window* = handle[Aspect_Window]

## ! Defines a window.

type
  Aspect_Window* {.importcpp: "Aspect_Window", header: "Aspect_Window.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Modifies
                                                                                                          ## the
                                                                                                          ## window
                                                                                                          ## background.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## the
                                                                                                          ## datas
                                                                                                          ## of
                                                                                                          ## a
                                                                                                          ## Window.


proc SetBackground*(this: var Aspect_Window; ABack: Aspect_Background) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc SetBackground*(this: var Aspect_Window; color: Quantity_Color) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc SetBackground*(this: var Aspect_Window; ABackground: Aspect_GradientBackground) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc SetBackground*(this: var Aspect_Window; theFirstColor: Quantity_Color;
                   theSecondColor: Quantity_Color;
                   theFillMethod: Aspect_GradientFillMethod) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc Map*(this: Aspect_Window) {.noSideEffect, importcpp: "Map",
                              header: "Aspect_Window.hxx".}
proc Unmap*(this: Aspect_Window) {.noSideEffect, importcpp: "Unmap",
                                header: "Aspect_Window.hxx".}
proc DoResize*(this: var Aspect_Window): Aspect_TypeOfResize {.importcpp: "DoResize",
    header: "Aspect_Window.hxx".}
proc DoMapping*(this: Aspect_Window): Standard_Boolean {.noSideEffect,
    importcpp: "DoMapping", header: "Aspect_Window.hxx".}
proc Background*(this: Aspect_Window): Aspect_Background {.noSideEffect,
    importcpp: "Background", header: "Aspect_Window.hxx".}
proc BackgroundFillMethod*(this: Aspect_Window): Aspect_FillMethod {.noSideEffect,
    importcpp: "BackgroundFillMethod", header: "Aspect_Window.hxx".}
proc GradientBackground*(this: Aspect_Window): Aspect_GradientBackground {.
    noSideEffect, importcpp: "GradientBackground", header: "Aspect_Window.hxx".}
proc IsMapped*(this: Aspect_Window): Standard_Boolean {.noSideEffect,
    importcpp: "IsMapped", header: "Aspect_Window.hxx".}
proc IsVirtual*(this: Aspect_Window): Standard_Boolean {.noSideEffect,
    importcpp: "IsVirtual", header: "Aspect_Window.hxx".}
proc SetVirtual*(this: var Aspect_Window; theVirtual: Standard_Boolean) {.
    importcpp: "SetVirtual", header: "Aspect_Window.hxx".}
proc Ratio*(this: Aspect_Window): Standard_Real {.noSideEffect, importcpp: "Ratio",
    header: "Aspect_Window.hxx".}
proc Position*(this: Aspect_Window; X1: var Standard_Integer;
              Y1: var Standard_Integer; X2: var Standard_Integer;
              Y2: var Standard_Integer) {.noSideEffect, importcpp: "Position",
                                       header: "Aspect_Window.hxx".}
proc Size*(this: Aspect_Window; Width: var Standard_Integer;
          Height: var Standard_Integer) {.noSideEffect, importcpp: "Size",
                                       header: "Aspect_Window.hxx".}
proc NativeHandle*(this: Aspect_Window): Aspect_Drawable {.noSideEffect,
    importcpp: "NativeHandle", header: "Aspect_Window.hxx".}
proc NativeParentHandle*(this: Aspect_Window): Aspect_Drawable {.noSideEffect,
    importcpp: "NativeParentHandle", header: "Aspect_Window.hxx".}
proc NativeFBConfig*(this: Aspect_Window): Aspect_FBConfig {.noSideEffect,
    importcpp: "NativeFBConfig", header: "Aspect_Window.hxx".}
proc SetTitle*(this: var Aspect_Window; theTitle: TCollection_AsciiString) {.
    importcpp: "SetTitle", header: "Aspect_Window.hxx".}
proc InvalidateContent*(this: var Aspect_Window;
                       theDisp: handle[Aspect_DisplayConnection]) {.
    importcpp: "InvalidateContent", header: "Aspect_Window.hxx".}
proc DumpJson*(this: Aspect_Window; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_Window.hxx".}
type
  Aspect_Windowbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Aspect_Window::get_type_name(@)",
                              header: "Aspect_Window.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Aspect_Window::get_type_descriptor(@)",
    header: "Aspect_Window.hxx".}
proc DynamicType*(this: Aspect_Window): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_Window.hxx".}