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

discard "forward decl of Aspect_DisplayConnection"
discard "forward decl of Aspect_Window"
type
  HandleC1C1* = Handle[AspectWindow]

## ! Defines a window.

type
  AspectWindow* {.importcpp: "Aspect_Window", header: "Aspect_Window.hxx", bycopy.} = object of StandardTransient ##
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


proc setBackground*(this: var AspectWindow; aBack: AspectBackground) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc setBackground*(this: var AspectWindow; color: QuantityColor) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc setBackground*(this: var AspectWindow; aBackground: AspectGradientBackground) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc setBackground*(this: var AspectWindow; theFirstColor: QuantityColor;
                   theSecondColor: QuantityColor;
                   theFillMethod: AspectGradientFillMethod) {.
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc map*(this: AspectWindow) {.noSideEffect, importcpp: "Map",
                             header: "Aspect_Window.hxx".}
proc unmap*(this: AspectWindow) {.noSideEffect, importcpp: "Unmap",
                               header: "Aspect_Window.hxx".}
proc doResize*(this: var AspectWindow): AspectTypeOfResize {.importcpp: "DoResize",
    header: "Aspect_Window.hxx".}
proc doMapping*(this: AspectWindow): bool {.noSideEffect, importcpp: "DoMapping",
                                        header: "Aspect_Window.hxx".}
proc background*(this: AspectWindow): AspectBackground {.noSideEffect,
    importcpp: "Background", header: "Aspect_Window.hxx".}
proc backgroundFillMethod*(this: AspectWindow): AspectFillMethod {.noSideEffect,
    importcpp: "BackgroundFillMethod", header: "Aspect_Window.hxx".}
proc gradientBackground*(this: AspectWindow): AspectGradientBackground {.
    noSideEffect, importcpp: "GradientBackground", header: "Aspect_Window.hxx".}
proc isMapped*(this: AspectWindow): bool {.noSideEffect, importcpp: "IsMapped",
                                       header: "Aspect_Window.hxx".}
proc isVirtual*(this: AspectWindow): bool {.noSideEffect, importcpp: "IsVirtual",
                                        header: "Aspect_Window.hxx".}
proc setVirtual*(this: var AspectWindow; theVirtual: bool) {.importcpp: "SetVirtual",
    header: "Aspect_Window.hxx".}
proc ratio*(this: AspectWindow): cfloat {.noSideEffect, importcpp: "Ratio",
                                      header: "Aspect_Window.hxx".}
proc position*(this: AspectWindow; x1: var cint; y1: var cint; x2: var cint; y2: var cint) {.
    noSideEffect, importcpp: "Position", header: "Aspect_Window.hxx".}
proc size*(this: AspectWindow; width: var cint; height: var cint) {.noSideEffect,
    importcpp: "Size", header: "Aspect_Window.hxx".}
proc nativeHandle*(this: AspectWindow): AspectDrawable {.noSideEffect,
    importcpp: "NativeHandle", header: "Aspect_Window.hxx".}
proc nativeParentHandle*(this: AspectWindow): AspectDrawable {.noSideEffect,
    importcpp: "NativeParentHandle", header: "Aspect_Window.hxx".}
proc nativeFBConfig*(this: AspectWindow): AspectFBConfig {.noSideEffect,
    importcpp: "NativeFBConfig", header: "Aspect_Window.hxx".}
proc setTitle*(this: var AspectWindow; theTitle: TCollectionAsciiString) {.
    importcpp: "SetTitle", header: "Aspect_Window.hxx".}
proc invalidateContent*(this: var AspectWindow;
                       theDisp: Handle[AspectDisplayConnection]) {.
    importcpp: "InvalidateContent", header: "Aspect_Window.hxx".}
proc dumpJson*(this: AspectWindow; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Aspect_Window.hxx".}
type
  AspectWindowbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_Window::get_type_name(@)",
                            header: "Aspect_Window.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_Window::get_type_descriptor(@)",
    header: "Aspect_Window.hxx".}
proc dynamicType*(this: AspectWindow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_Window.hxx".}

























