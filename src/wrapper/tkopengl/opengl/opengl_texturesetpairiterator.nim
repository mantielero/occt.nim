import opengl_types
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types

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

## ! Class for iterating pair of texture sets through each defined texture slot.
## ! Note that iterator considers texture slots being in ascending order within OpenGl_TextureSet.



proc newOpenGlTextureSetPairIterator*(theSet1: Handle[OpenGlTextureSet];
                                     theSet2: Handle[OpenGlTextureSet]): OpenGlTextureSetPairIterator {.
    cdecl, constructor, importcpp: "OpenGl_TextureSetPairIterator(@)",
    header: "OpenGl_TextureSetPairIterator.hxx".}
proc more*(this: OpenGlTextureSetPairIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "OpenGl_TextureSetPairIterator.hxx".}
proc unit*(this: OpenGlTextureSetPairIterator): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "Unit", header: "OpenGl_TextureSetPairIterator.hxx".}
proc texture1*(this: OpenGlTextureSetPairIterator): ptr OpenGlTexture {.noSideEffect,
    cdecl, importcpp: "Texture1", header: "OpenGl_TextureSetPairIterator.hxx".}
proc texture2*(this: OpenGlTextureSetPairIterator): ptr OpenGlTexture {.noSideEffect,
    cdecl, importcpp: "Texture2", header: "OpenGl_TextureSetPairIterator.hxx".}
proc next*(this: var OpenGlTextureSetPairIterator) {.cdecl, importcpp: "Next",
    header: "OpenGl_TextureSetPairIterator.hxx".}
