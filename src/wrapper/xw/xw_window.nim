import ../tcollection/tcollection_types
import ../standard/standard_types
import ../aspect/aspect_types  # x11/xlib exported from here
import xw_types
import ../ais/ais_types

#import x11/xlib
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
    importcpp: "Xw_Window::VirtualKeyFromNative(@)".}
proc newXwWindow*(theXDisplay: Handle[AspectDisplayConnection]; theTitle: cstring;
                 thePxLeft: cint; thePxTop: cint; thePxWidth: cint; thePxHeight: cint): XwWindow {.
    cdecl, constructor, importcpp: "Xw_Window(@)".}
proc newXwWindow*(theXDisplay: Handle[AspectDisplayConnection];
                 theXWin: AspectDrawable; theFBConfig: AspectFBConfig): XwWindow {.
    cdecl, constructor, importcpp: "Xw_Window(@)".}
proc newXwWindow*(theXDisplay: Handle[AspectDisplayConnection];
                 theXWin: AspectDrawable): XwWindow {.
    cdecl, constructor, importcpp: "Xw_Window(@)".}    
proc destroyXwWindow*(this: var XwWindow) {.cdecl, importcpp: "#.~Xw_Window()".}
proc map*(this: XwWindow) {.noSideEffect, cdecl, importcpp: "Map".}
proc unmap*(this: XwWindow) {.noSideEffect, cdecl, importcpp: "Unmap".}
proc doResize*(this: var XwWindow): AspectTypeOfResize {.cdecl, importcpp: "DoResize".}
proc doMapping*(this: XwWindow): bool {.noSideEffect, cdecl, importcpp: "DoMapping".}
proc isMapped*(this: XwWindow): bool {.noSideEffect, cdecl, importcpp: "IsMapped".}
proc ratio*(this: XwWindow): cfloat {.noSideEffect, cdecl, importcpp: "Ratio".}
proc position*(this: XwWindow; x1: var cint; y1: var cint; x2: var cint; y2: var cint) {.
    noSideEffect, cdecl, importcpp: "Position".}
proc size*(this: XwWindow; theWidth: var cint; theHeight: var cint) {.noSideEffect, cdecl,
    importcpp: "Size".}
proc xWindow*(this: XwWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "XWindow".}
proc nativeHandle*(this: XwWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeHandle".}
proc nativeParentHandle*(this: XwWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeParentHandle".}
proc nativeFBConfig*(this: XwWindow): AspectFBConfig {.noSideEffect, cdecl,
    importcpp: "NativeFBConfig".}
proc setTitle*(this: var XwWindow; theTitle: TCollectionAsciiString) {.cdecl,
    importcpp: "SetTitle".}
proc invalidateContent*(this: var XwWindow; theDisp: Handle[AspectDisplayConnection]) {.
    cdecl, importcpp: "InvalidateContent".}
proc processMessage*(this: var XwWindow; theListener: var AIS_ViewController;
                    theMsg: var XEvent): bool {.cdecl, importcpp: "#.ProcessMessage((Aspect_WindowInputListener &) #, (XEvent &) #)".}

