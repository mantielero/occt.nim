import opengl_types
import ../standard/standard_types

##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_Texture"



converter `constopencascade`*(this: OpenGlTextureSetTextureSlot): Handle[
    OpenGlTexture] {.noSideEffect, cdecl,
                    importcpp: "TextureSlot::operator constopencascade",
                    header: "OpenGl_TextureSet.hxx".}
converter `opencascade`*(this: var OpenGlTextureSetTextureSlot): var Handle[
    OpenGlTexture] {.cdecl, importcpp: "TextureSlot::operator opencascade",
                    header: "OpenGl_TextureSet.hxx".}
proc newOpenGlTextureSetTextureSlot*(): OpenGlTextureSetTextureSlot {.cdecl,
    constructor, importcpp: "OpenGl_TextureSet::TextureSlot(@)", header: "OpenGl_TextureSet.hxx".}


proc newOpenGlTextureSetIterator*(): OpenGlTextureSetIterator {.cdecl, constructor,
    importcpp: "OpenGl_TextureSet::Iterator(@)", header: "OpenGl_TextureSet.hxx".}
proc newOpenGlTextureSetIterator*(theSet: Handle[OpenGlTextureSet]): OpenGlTextureSetIterator {.
    cdecl, constructor, importcpp: "OpenGl_TextureSet::Iterator(@)",
    header: "OpenGl_TextureSet.hxx".}
proc value*(this: OpenGlTextureSetIterator): Handle[OpenGlTexture] {.noSideEffect,
    cdecl, importcpp: "Value", header: "OpenGl_TextureSet.hxx".}
proc changeValue*(this: var OpenGlTextureSetIterator): var Handle[OpenGlTexture] {.
    cdecl, importcpp: "ChangeValue", header: "OpenGl_TextureSet.hxx".}
proc unit*(this: OpenGlTextureSetIterator): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "Unit", header: "OpenGl_TextureSet.hxx".}
proc changeUnit*(this: var OpenGlTextureSetIterator): var Graphic3dTextureUnit {.
    cdecl, importcpp: "ChangeUnit", header: "OpenGl_TextureSet.hxx".}
proc newOpenGlTextureSet*(): OpenGlTextureSet {.cdecl, constructor,
    importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc newOpenGlTextureSet*(theNbTextures: cint): OpenGlTextureSet {.cdecl,
    constructor, importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc newOpenGlTextureSet*(theTexture: Handle[OpenGlTexture]): OpenGlTextureSet {.
    cdecl, constructor, importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc textureSetBits*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl,
    importcpp: "TextureSetBits", header: "OpenGl_TextureSet.hxx".}
proc changeTextureSetBits*(this: var OpenGlTextureSet): var cint {.cdecl,
    importcpp: "ChangeTextureSetBits", header: "OpenGl_TextureSet.hxx".}
proc isEmpty*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "OpenGl_TextureSet.hxx".}
proc size*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl, importcpp: "Size",
                                       header: "OpenGl_TextureSet.hxx".}
proc lower*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl, importcpp: "Lower",
                                        header: "OpenGl_TextureSet.hxx".}
proc upper*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl, importcpp: "Upper",
                                        header: "OpenGl_TextureSet.hxx".}
proc first*(this: OpenGlTextureSet): Handle[OpenGlTexture] {.noSideEffect, cdecl,
    importcpp: "First", header: "OpenGl_TextureSet.hxx".}
proc changeFirst*(this: var OpenGlTextureSet): var Handle[OpenGlTexture] {.cdecl,
    importcpp: "ChangeFirst", header: "OpenGl_TextureSet.hxx".}
proc firstUnit*(this: OpenGlTextureSet): Graphic3dTextureUnit {.noSideEffect, cdecl,
    importcpp: "FirstUnit", header: "OpenGl_TextureSet.hxx".}
proc last*(this: OpenGlTextureSet): Handle[OpenGlTexture] {.noSideEffect, cdecl,
    importcpp: "Last", header: "OpenGl_TextureSet.hxx".}
proc changeLast*(this: var OpenGlTextureSet): var Handle[OpenGlTexture] {.cdecl,
    importcpp: "ChangeLast", header: "OpenGl_TextureSet.hxx".}
proc lastUnit*(this: OpenGlTextureSet): Graphic3dTextureUnit {.noSideEffect, cdecl,
    importcpp: "LastUnit", header: "OpenGl_TextureSet.hxx".}
proc changeLastUnit*(this: var OpenGlTextureSet): var Graphic3dTextureUnit {.cdecl,
    importcpp: "ChangeLastUnit", header: "OpenGl_TextureSet.hxx".}
proc value*(this: OpenGlTextureSet; theIndex: cint): Handle[OpenGlTexture] {.
    noSideEffect, cdecl, importcpp: "Value", header: "OpenGl_TextureSet.hxx".}
proc changeValue*(this: var OpenGlTextureSet; theIndex: cint): var Handle[OpenGlTexture] {.
    cdecl, importcpp: "ChangeValue", header: "OpenGl_TextureSet.hxx".}
proc isModulate*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsModulate", header: "OpenGl_TextureSet.hxx".}
proc hasNonPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "HasNonPointSprite", header: "OpenGl_TextureSet.hxx".}
proc hasPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "HasPointSprite", header: "OpenGl_TextureSet.hxx".}
proc initZero*(this: var OpenGlTextureSet) {.cdecl, importcpp: "InitZero",
    header: "OpenGl_TextureSet.hxx".}
