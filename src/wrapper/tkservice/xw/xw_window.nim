import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../aspect/aspect_types
import xw_types


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



proc virtualKeyFromNative*(theKey: culong): AspectVKey {.cdecl,
    importcpp: "Xw_Window::VirtualKeyFromNative(@)", header: "Xw_Window.hxx".}
proc newXwWindow*(theXDisplay: Handle[AspectDisplayConnection];
                theTitle: cstring; thePxLeft: cint; thePxTop: cint;
                thePxWidth: cint; thePxHeight: cint;
                theFBConfig: AspectFBConfig): XwWindow {.cdecl, constructor,
    importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}
proc newXwWindow*(theXDisplay: Handle[AspectDisplayConnection];
                theTitle: cstring; thePxLeft: cint; thePxTop: cint;
                thePxWidth: cint; thePxHeight: cint): XwWindow {.cdecl, constructor,
    importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}    
# proc newXwWindow*(theXDisplay: Handle[AspectDisplayConnection]; theXWin: Window;
#                 theFBConfig: AspectFBConfig = nil): XwWindow {.cdecl, constructor,
#     importcpp: "Xw_Window(@)", header: "Xw_Window.hxx".}
proc destroyXwWindow*(this: var XwWindow) {.cdecl, importcpp: "#.~Xw_Window()",
    header: "Xw_Window.hxx".}
proc map*(this: XwWindow) {.noSideEffect, cdecl, importcpp: "Map", header: "Xw_Window.hxx".}
proc unmap*(this: XwWindow) {.noSideEffect, cdecl, importcpp: "Unmap",
                            header: "Xw_Window.hxx".}
proc doResize*(this: var XwWindow): AspectTypeOfResize {.cdecl,
    importcpp: "DoResize", header: "Xw_Window.hxx".}
proc doMapping*(this: XwWindow): bool {.noSideEffect, cdecl, importcpp: "DoMapping",
                                    header: "Xw_Window.hxx".}
proc isMapped*(this: XwWindow): bool {.noSideEffect, cdecl, importcpp: "IsMapped",
                                    header: "Xw_Window.hxx".}
proc ratio*(this: XwWindow): cfloat {.noSideEffect, cdecl, importcpp: "Ratio",
                                header: "Xw_Window.hxx".}
proc position*(this: XwWindow; x1: var cint; y1: var cint; x2: var cint; y2: var cint) {.
    noSideEffect, cdecl, importcpp: "Position", header: "Xw_Window.hxx".}
proc size*(this: XwWindow; theWidth: var cint; theHeight: var cint) {.noSideEffect,
    cdecl, importcpp: "Size", header: "Xw_Window.hxx".}
# proc xWindow*(this: XwWindow): Window {.noSideEffect, cdecl, importcpp: "XWindow",
#                                     header: "Xw_Window.hxx".}
proc displayConnection*(this: XwWindow): Handle[AspectDisplayConnection] {.
    noSideEffect, cdecl, importcpp: "DisplayConnection", header: "Xw_Window.hxx".}
proc nativeHandle*(this: XwWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeHandle", header: "Xw_Window.hxx".}
proc nativeParentHandle*(this: XwWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeParentHandle", header: "Xw_Window.hxx".}
proc nativeFBConfig*(this: XwWindow): AspectFBConfig {.noSideEffect, cdecl,
    importcpp: "NativeFBConfig", header: "Xw_Window.hxx".}
proc setTitle*(this: var XwWindow; theTitle: TCollectionAsciiString) {.cdecl,
    importcpp: "SetTitle", header: "Xw_Window.hxx".}
proc invalidateContent*(this: var XwWindow;
                        theDisp: Handle[AspectDisplayConnection]) {.cdecl,
    importcpp: "InvalidateContent", header: "Xw_Window.hxx".}

