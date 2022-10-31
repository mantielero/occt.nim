import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import aspect_types
import ../../tkernel/quantity/quantity_types





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





proc setBackground*(this: var AspectWindow; aBack: AspectBackground) {.cdecl,
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc setBackground*(this: var AspectWindow; color: QuantityColor) {.cdecl,
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc setBackground*(this: var AspectWindow; aBackground: AspectGradientBackground) {.
    cdecl, importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc setBackground*(this: var AspectWindow; theFirstColor: QuantityColor;
                   theSecondColor: QuantityColor;
                   theFillMethod: AspectGradientFillMethod) {.cdecl,
    importcpp: "SetBackground", header: "Aspect_Window.hxx".}
proc map*(this: AspectWindow) {.noSideEffect, cdecl, importcpp: "Map",
                             header: "Aspect_Window.hxx".}
proc unmap*(this: AspectWindow) {.noSideEffect, cdecl, importcpp: "Unmap",
                               header: "Aspect_Window.hxx".}
proc doResize*(this: var AspectWindow): AspectTypeOfResize {.cdecl,
    importcpp: "DoResize", header: "Aspect_Window.hxx".}
proc doMapping*(this: AspectWindow): bool {.noSideEffect, cdecl,
                                        importcpp: "DoMapping", header: "Aspect_Window.hxx".}
proc background*(this: AspectWindow): AspectBackground {.noSideEffect, cdecl,
    importcpp: "Background", header: "Aspect_Window.hxx".}
proc backgroundFillMethod*(this: AspectWindow): AspectFillMethod {.noSideEffect,
    cdecl, importcpp: "BackgroundFillMethod", header: "Aspect_Window.hxx".}
proc gradientBackground*(this: AspectWindow): AspectGradientBackground {.
    noSideEffect, cdecl, importcpp: "GradientBackground", header: "Aspect_Window.hxx".}
proc isMapped*(this: AspectWindow): bool {.noSideEffect, cdecl, importcpp: "IsMapped",
                                       header: "Aspect_Window.hxx".}
proc isVirtual*(this: AspectWindow): bool {.noSideEffect, cdecl,
                                        importcpp: "IsVirtual", header: "Aspect_Window.hxx".}
proc setVirtual*(this: var AspectWindow; theVirtual: bool) {.cdecl,
    importcpp: "SetVirtual", header: "Aspect_Window.hxx".}
proc ratio*(this: AspectWindow): cfloat {.noSideEffect, cdecl, importcpp: "Ratio",
                                      header: "Aspect_Window.hxx".}
proc position*(this: AspectWindow; x1: var cint; y1: var cint; x2: var cint; y2: var cint) {.
    noSideEffect, cdecl, importcpp: "Position", header: "Aspect_Window.hxx".}
proc size*(this: AspectWindow; width: var cint; height: var cint) {.noSideEffect, cdecl,
    importcpp: "Size", header: "Aspect_Window.hxx".}
proc nativeHandle*(this: AspectWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeHandle", header: "Aspect_Window.hxx".}
proc nativeParentHandle*(this: AspectWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeParentHandle", header: "Aspect_Window.hxx".}
proc nativeFBConfig*(this: AspectWindow): AspectFBConfig {.noSideEffect, cdecl,
    importcpp: "NativeFBConfig", header: "Aspect_Window.hxx".}
proc setTitle*(this: var AspectWindow; theTitle: TCollectionAsciiString) {.cdecl,
    importcpp: "SetTitle", header: "Aspect_Window.hxx".}
proc invalidateContent*(this: var AspectWindow;
                       theDisp: Handle[AspectDisplayConnection]) {.cdecl,
    importcpp: "InvalidateContent", header: "Aspect_Window.hxx".}
proc dumpJson*(this: AspectWindow; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Aspect_Window.hxx".}


