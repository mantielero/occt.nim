import ../tcollection/tcollection_types
import ../standard/standard_types
import aspect_types
import ../quantity/quantity_types
import ../graphic3d/graphic3d_types





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
    importcpp: "SetBackground".}
proc setBackground*(this: var AspectWindow; color: QuantityColor) {.cdecl,
    importcpp: "SetBackground".}
proc setBackground*(this: var AspectWindow; aBackground: AspectGradientBackground) {.
    cdecl, importcpp: "SetBackground".}
proc setBackground*(this: var AspectWindow; theFirstColor: QuantityColor;
                   theSecondColor: QuantityColor;
                   theFillMethod: AspectGradientFillMethod) {.cdecl,
    importcpp: "SetBackground".}
proc map*(this: AspectWindow) {.noSideEffect, cdecl, importcpp: "Map",
                             .}
proc unmap*(this: AspectWindow) {.noSideEffect, cdecl, importcpp: "Unmap",
                               .}
proc doResize*(this: var AspectWindow): AspectTypeOfResize {.cdecl,
    importcpp: "DoResize".}
proc doMapping*(this: AspectWindow): bool {.noSideEffect, cdecl,
                                        importcpp: "DoMapping".}
proc background*(this: AspectWindow): AspectBackground {.noSideEffect, cdecl,
    importcpp: "Background".}
proc backgroundFillMethod*(this: AspectWindow): AspectFillMethod {.noSideEffect,
    cdecl, importcpp: "BackgroundFillMethod".}
proc gradientBackground*(this: AspectWindow): AspectGradientBackground {.
    noSideEffect, cdecl, importcpp: "GradientBackground".}
proc isMapped*(this: AspectWindow): bool {.noSideEffect, cdecl, importcpp: "IsMapped",
                                       .}
proc isVirtual*(this: AspectWindow): bool {.noSideEffect, cdecl,
                                        importcpp: "IsVirtual".}
proc setVirtual*(this: var AspectWindow; theVirtual: bool) {.cdecl,
    importcpp: "SetVirtual".}
proc ratio*(this: AspectWindow): cfloat {.noSideEffect, cdecl, importcpp: "Ratio",
                                      .}
proc position*(this: AspectWindow; x1: var cint; y1: var cint; x2: var cint; y2: var cint) {.
    noSideEffect, cdecl, importcpp: "Position".}
proc size*(this: AspectWindow; width: var cint; height: var cint) {.noSideEffect, cdecl,
    importcpp: "Size".}
proc nativeHandle*(this: AspectWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeHandle".}
proc nativeParentHandle*(this: AspectWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeParentHandle".}
proc nativeFBConfig*(this: AspectWindow): AspectFBConfig {.noSideEffect, cdecl,
    importcpp: "NativeFBConfig".}
proc displayConnection*(this: AspectWindow): Handle[AspectDisplayConnection] {.
    noSideEffect, cdecl, importcpp: "DisplayConnection".}
proc setTitle*(this: var AspectWindow; theTitle: TCollectionAsciiString) {.cdecl,
    importcpp: "SetTitle".}
proc invalidateContent*(this: var AspectWindow;
                       theDisp: Handle[AspectDisplayConnection]) {.cdecl,
    importcpp: "InvalidateContent".}
proc devicePixelRatio*(this: AspectWindow): cfloat {.noSideEffect, cdecl,
    importcpp: "DevicePixelRatio".}
proc convertPointToBacking*(this: AspectWindow; thePnt: Graphic3dVec2d): Graphic3dVec2d {.
    noSideEffect, cdecl, importcpp: "ConvertPointToBacking".}
proc convertPointFromBacking*(this: AspectWindow; thePnt: Graphic3dVec2d): Graphic3dVec2d {.
    noSideEffect, cdecl, importcpp: "ConvertPointFromBacking".}
proc dumpJson*(this: AspectWindow; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 .}


