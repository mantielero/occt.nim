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

type
  AspectNeutralWindow* {.importcpp: "Aspect_NeutralWindow",
                        header: "Aspect_NeutralWindow.hxx", bycopy.} = object of AspectWindow ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Note
                                                                                       ## that
                                                                                       ## window
                                                                                       ## is
                                                                                       ## considered
                                                                                       ## "mapped"
                                                                                       ## by
                                                                                       ## default.

  AspectNeutralWindowbaseType* = AspectWindow

proc getTypeName*(): cstring {.importcpp: "Aspect_NeutralWindow::get_type_name(@)",
                            header: "Aspect_NeutralWindow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_NeutralWindow::get_type_descriptor(@)",
    header: "Aspect_NeutralWindow.hxx".}
proc dynamicType*(this: AspectNeutralWindow): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_NeutralWindow.hxx".}
proc constructAspectNeutralWindow*(): AspectNeutralWindow {.constructor,
    importcpp: "Aspect_NeutralWindow(@)", header: "Aspect_NeutralWindow.hxx".}
proc nativeHandle*(this: AspectNeutralWindow): AspectDrawable {.noSideEffect,
    importcpp: "NativeHandle", header: "Aspect_NeutralWindow.hxx".}
proc nativeParentHandle*(this: AspectNeutralWindow): AspectDrawable {.noSideEffect,
    importcpp: "NativeParentHandle", header: "Aspect_NeutralWindow.hxx".}
proc nativeFBConfig*(this: AspectNeutralWindow): AspectFBConfig {.noSideEffect,
    importcpp: "NativeFBConfig", header: "Aspect_NeutralWindow.hxx".}
proc setNativeHandle*(this: var AspectNeutralWindow; theWindow: AspectDrawable): StandardBoolean {.
    importcpp: "SetNativeHandle", header: "Aspect_NeutralWindow.hxx".}
proc setNativeHandles*(this: var AspectNeutralWindow; theWindow: AspectDrawable;
                      theParentWindow: AspectDrawable; theFbConfig: AspectFBConfig): StandardBoolean {.
    importcpp: "SetNativeHandles", header: "Aspect_NeutralWindow.hxx".}
proc isMapped*(this: AspectNeutralWindow): StandardBoolean {.noSideEffect,
    importcpp: "IsMapped", header: "Aspect_NeutralWindow.hxx".}
proc map*(this: AspectNeutralWindow) {.noSideEffect, importcpp: "Map",
                                    header: "Aspect_NeutralWindow.hxx".}
proc unmap*(this: AspectNeutralWindow) {.noSideEffect, importcpp: "Unmap",
                                      header: "Aspect_NeutralWindow.hxx".}
proc doResize*(this: var AspectNeutralWindow): AspectTypeOfResize {.
    importcpp: "DoResize", header: "Aspect_NeutralWindow.hxx".}
proc doMapping*(this: AspectNeutralWindow): StandardBoolean {.noSideEffect,
    importcpp: "DoMapping", header: "Aspect_NeutralWindow.hxx".}
proc ratio*(this: AspectNeutralWindow): StandardReal {.noSideEffect,
    importcpp: "Ratio", header: "Aspect_NeutralWindow.hxx".}
proc position*(this: AspectNeutralWindow; theX1: var StandardInteger;
              theY1: var StandardInteger; theX2: var StandardInteger;
              theY2: var StandardInteger) {.noSideEffect, importcpp: "Position",
    header: "Aspect_NeutralWindow.hxx".}
proc setPosition*(this: var AspectNeutralWindow; theX1: StandardInteger;
                 theY1: StandardInteger): StandardBoolean {.
    importcpp: "SetPosition", header: "Aspect_NeutralWindow.hxx".}
proc setPosition*(this: var AspectNeutralWindow; theX1: StandardInteger;
                 theY1: StandardInteger; theX2: StandardInteger;
                 theY2: StandardInteger): StandardBoolean {.
    importcpp: "SetPosition", header: "Aspect_NeutralWindow.hxx".}
proc size*(this: AspectNeutralWindow; theWidth: var StandardInteger;
          theHeight: var StandardInteger) {.noSideEffect, importcpp: "Size",
    header: "Aspect_NeutralWindow.hxx".}
proc setSize*(this: var AspectNeutralWindow; theWidth: StandardInteger;
             theHeight: StandardInteger): StandardBoolean {.importcpp: "SetSize",
    header: "Aspect_NeutralWindow.hxx".}
discard "forward decl of Aspect_NeutralWindow"
type
  HandleAspectNeutralWindow* = Handle[AspectNeutralWindow]


