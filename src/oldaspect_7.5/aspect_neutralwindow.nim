import aspect_types





##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Defines a platform-neutral window.
## ! This class is intended to be used in context when window management (including OpenGL context creation)
## ! is performed on application side (e.g. using external framework).
## !
## ! Window properties should be managed by application and assigned to this class as properties.



proc newAspectNeutralWindow*(): AspectNeutralWindow {.cdecl, constructor,
    importcpp: "Aspect_NeutralWindow(@)", header: "Aspect_NeutralWindow.hxx".}
proc nativeHandle*(this: AspectNeutralWindow): AspectDrawable {.noSideEffect, cdecl,
    importcpp: "NativeHandle", header: "Aspect_NeutralWindow.hxx".}
proc nativeParentHandle*(this: AspectNeutralWindow): AspectDrawable {.noSideEffect,
    cdecl, importcpp: "NativeParentHandle", header: "Aspect_NeutralWindow.hxx".}
proc nativeFBConfig*(this: AspectNeutralWindow): AspectFBConfig {.noSideEffect,
    cdecl, importcpp: "NativeFBConfig", header: "Aspect_NeutralWindow.hxx".}
proc setNativeHandle*(this: var AspectNeutralWindow; theWindow: AspectDrawable): bool {.
    cdecl, importcpp: "SetNativeHandle", header: "Aspect_NeutralWindow.hxx".}
proc setNativeHandles*(this: var AspectNeutralWindow; theWindow: AspectDrawable;
                      theParentWindow: AspectDrawable; theFbConfig: AspectFBConfig): bool {.
    cdecl, importcpp: "SetNativeHandles", header: "Aspect_NeutralWindow.hxx".}
proc isMapped*(this: AspectNeutralWindow): bool {.noSideEffect, cdecl,
    importcpp: "IsMapped", header: "Aspect_NeutralWindow.hxx".}
proc map*(this: AspectNeutralWindow) {.noSideEffect, cdecl, importcpp: "Map",
                                    header: "Aspect_NeutralWindow.hxx".}
proc unmap*(this: AspectNeutralWindow) {.noSideEffect, cdecl, importcpp: "Unmap",
                                      header: "Aspect_NeutralWindow.hxx".}
proc doResize*(this: var AspectNeutralWindow): AspectTypeOfResize {.cdecl,
    importcpp: "DoResize", header: "Aspect_NeutralWindow.hxx".}
proc doMapping*(this: AspectNeutralWindow): bool {.noSideEffect, cdecl,
    importcpp: "DoMapping", header: "Aspect_NeutralWindow.hxx".}
proc ratio*(this: AspectNeutralWindow): cfloat {.noSideEffect, cdecl,
    importcpp: "Ratio", header: "Aspect_NeutralWindow.hxx".}
proc position*(this: AspectNeutralWindow; theX1: var cint; theY1: var cint;
              theX2: var cint; theY2: var cint) {.noSideEffect, cdecl,
    importcpp: "Position", header: "Aspect_NeutralWindow.hxx".}
proc setPosition*(this: var AspectNeutralWindow; theX1: cint; theY1: cint): bool {.cdecl,
    importcpp: "SetPosition", header: "Aspect_NeutralWindow.hxx".}
proc setPosition*(this: var AspectNeutralWindow; theX1: cint; theY1: cint; theX2: cint;
                 theY2: cint): bool {.cdecl, importcpp: "SetPosition",
                                   header: "Aspect_NeutralWindow.hxx".}
proc size*(this: AspectNeutralWindow; theWidth: var cint; theHeight: var cint) {.
    noSideEffect, cdecl, importcpp: "Size", header: "Aspect_NeutralWindow.hxx".}
proc setSize*(this: var AspectNeutralWindow; theWidth: cint; theHeight: cint): bool {.
    cdecl, importcpp: "SetSize", header: "Aspect_NeutralWindow.hxx".}



