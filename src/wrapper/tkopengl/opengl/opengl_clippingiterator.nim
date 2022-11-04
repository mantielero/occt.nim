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

## ! The iterator through clipping planes.

type
  OpenGlClippingIterator* {.importcpp: "OpenGl_ClippingIterator",
                           header: "OpenGl_ClippingIterator.hxx", bycopy.} = object ## !
                                                                               ## Main
                                                                               ## constructor.


proc newOpenGlClippingIterator*(theClipping: OpenGlClipping): OpenGlClippingIterator {.
    cdecl, constructor, importcpp: "OpenGl_ClippingIterator(@)", dynlib: tkkxbase.}
proc more*(this: OpenGlClippingIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkkxbase.}
proc next*(this: var OpenGlClippingIterator) {.cdecl, importcpp: "Next",
    dynlib: tkkxbase.}
proc isDisabled*(this: OpenGlClippingIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsDisabled", dynlib: tkkxbase.}
proc value*(this: OpenGlClippingIterator): Handle[Graphic3dClipPlane] {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkkxbase.}
proc isGlobal*(this: OpenGlClippingIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsGlobal", dynlib: tkkxbase.}
proc planeIndex*(this: OpenGlClippingIterator): cint {.noSideEffect, cdecl,
    importcpp: "PlaneIndex", dynlib: tkkxbase.}