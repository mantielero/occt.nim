##  Copyright (c) 2020 OPEN CASCADE SAS
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
  OpenGl_TextureSet

## ! Class for iterating pair of texture sets through each defined texture slot.
## ! Note that iterator considers texture slots being in ascending order within OpenGl_TextureSet.

type
  OpenGl_TextureSetPairIterator* {.importcpp: "OpenGl_TextureSetPairIterator",
                                  header: "OpenGl_TextureSetPairIterator.hxx",
                                  bycopy.} = object ## ! Constructor.


proc constructOpenGl_TextureSetPairIterator*(theSet1: handle[OpenGl_TextureSet];
    theSet2: handle[OpenGl_TextureSet]): OpenGl_TextureSetPairIterator {.
    constructor, importcpp: "OpenGl_TextureSetPairIterator(@)",
    header: "OpenGl_TextureSetPairIterator.hxx".}
proc More*(this: OpenGl_TextureSetPairIterator): bool {.noSideEffect,
    importcpp: "More", header: "OpenGl_TextureSetPairIterator.hxx".}
proc Unit*(this: OpenGl_TextureSetPairIterator): Graphic3d_TextureUnit {.
    noSideEffect, importcpp: "Unit", header: "OpenGl_TextureSetPairIterator.hxx".}
proc Texture1*(this: OpenGl_TextureSetPairIterator): ptr OpenGl_Texture {.
    noSideEffect, importcpp: "Texture1",
    header: "OpenGl_TextureSetPairIterator.hxx".}
proc Texture2*(this: OpenGl_TextureSetPairIterator): ptr OpenGl_Texture {.
    noSideEffect, importcpp: "Texture2",
    header: "OpenGl_TextureSetPairIterator.hxx".}
proc Next*(this: var OpenGl_TextureSetPairIterator) {.importcpp: "Next",
    header: "OpenGl_TextureSetPairIterator.hxx".}