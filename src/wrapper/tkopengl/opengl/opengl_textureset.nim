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
type
  OpenGlTextureSet* {.importcpp: "OpenGl_TextureSet",
                     header: "OpenGl_TextureSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Texture
                                                                                      ## slot
                                                                                      ## -
                                                                                      ## combination
                                                                                      ## of
                                                                                      ## Texture
                                                                                      ## and
                                                                                      ## binding
                                                                                      ## Unit.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.

  OpenGlTextureSetTextureSlot* {.importcpp: "OpenGl_TextureSet::TextureSlot",
                                header: "OpenGl_TextureSet.hxx", bycopy.} = object
    texture* {.importc: "Texture".}: Handle[OpenGlTexture]
    unit* {.importc: "Unit".}: Graphic3dTextureUnit


converter `constopencascade`*(this: OpenGlTextureSetTextureSlot): Handle[
    OpenGlTexture] {.noSideEffect, cdecl,
                    importcpp: "TextureSlot::operator constopencascade",
                    dynlib: tkkxbase.}
converter `opencascade`*(this: var OpenGlTextureSetTextureSlot): var Handle[
    OpenGlTexture] {.cdecl, importcpp: "TextureSlot::operator opencascade",
                    dynlib: tkkxbase.}
proc newOpenGlTextureSetTextureSlot*(): OpenGlTextureSetTextureSlot {.cdecl,
    constructor, importcpp: "OpenGl_TextureSet::TextureSlot(@)", dynlib: tkkxbase.}
type
  OpenGlTextureSetIterator* {.importcpp: "OpenGl_TextureSet::Iterator",
                             header: "OpenGl_TextureSet.hxx", bycopy.} = object of OpenGlTextureSetIterator[
      OpenGlTextureSetTextureSlot] ## ! Empty constructor.


proc newOpenGlTextureSetIterator*(): OpenGlTextureSetIterator {.cdecl, constructor,
    importcpp: "OpenGl_TextureSet::Iterator(@)", dynlib: tkkxbase.}
proc newOpenGlTextureSetIterator*(theSet: Handle[OpenGlTextureSet]): OpenGlTextureSetIterator {.
    cdecl, constructor, importcpp: "OpenGl_TextureSet::Iterator(@)",
    dynlib: tkkxbase.}
proc value*(this: OpenGlTextureSetIterator): Handle[OpenGlTexture] {.noSideEffect,
    cdecl, importcpp: "Value", dynlib: tkkxbase.}
proc changeValue*(this: var OpenGlTextureSetIterator): var Handle[OpenGlTexture] {.
    cdecl, importcpp: "ChangeValue", dynlib: tkkxbase.}
proc unit*(this: OpenGlTextureSetIterator): Graphic3dTextureUnit {.noSideEffect,
    cdecl, importcpp: "Unit", dynlib: tkkxbase.}
proc changeUnit*(this: var OpenGlTextureSetIterator): var Graphic3dTextureUnit {.
    cdecl, importcpp: "ChangeUnit", dynlib: tkkxbase.}
proc newOpenGlTextureSet*(): OpenGlTextureSet {.cdecl, constructor,
    importcpp: "OpenGl_TextureSet(@)", dynlib: tkkxbase.}
proc newOpenGlTextureSet*(theNbTextures: cint): OpenGlTextureSet {.cdecl,
    constructor, importcpp: "OpenGl_TextureSet(@)", dynlib: tkkxbase.}
proc newOpenGlTextureSet*(theTexture: Handle[OpenGlTexture]): OpenGlTextureSet {.
    cdecl, constructor, importcpp: "OpenGl_TextureSet(@)", dynlib: tkkxbase.}
proc textureSetBits*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl,
    importcpp: "TextureSetBits", dynlib: tkkxbase.}
proc changeTextureSetBits*(this: var OpenGlTextureSet): var cint {.cdecl,
    importcpp: "ChangeTextureSetBits", dynlib: tkkxbase.}
proc isEmpty*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkkxbase.}
proc size*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl, importcpp: "Size",
                                       dynlib: tkkxbase.}
proc lower*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl, importcpp: "Lower",
                                        dynlib: tkkxbase.}
proc upper*(this: OpenGlTextureSet): cint {.noSideEffect, cdecl, importcpp: "Upper",
                                        dynlib: tkkxbase.}
proc first*(this: OpenGlTextureSet): Handle[OpenGlTexture] {.noSideEffect, cdecl,
    importcpp: "First", dynlib: tkkxbase.}
proc changeFirst*(this: var OpenGlTextureSet): var Handle[OpenGlTexture] {.cdecl,
    importcpp: "ChangeFirst", dynlib: tkkxbase.}
proc firstUnit*(this: OpenGlTextureSet): Graphic3dTextureUnit {.noSideEffect, cdecl,
    importcpp: "FirstUnit", dynlib: tkkxbase.}
proc last*(this: OpenGlTextureSet): Handle[OpenGlTexture] {.noSideEffect, cdecl,
    importcpp: "Last", dynlib: tkkxbase.}
proc changeLast*(this: var OpenGlTextureSet): var Handle[OpenGlTexture] {.cdecl,
    importcpp: "ChangeLast", dynlib: tkkxbase.}
proc lastUnit*(this: OpenGlTextureSet): Graphic3dTextureUnit {.noSideEffect, cdecl,
    importcpp: "LastUnit", dynlib: tkkxbase.}
proc changeLastUnit*(this: var OpenGlTextureSet): var Graphic3dTextureUnit {.cdecl,
    importcpp: "ChangeLastUnit", dynlib: tkkxbase.}
proc value*(this: OpenGlTextureSet; theIndex: cint): Handle[OpenGlTexture] {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkkxbase.}
proc changeValue*(this: var OpenGlTextureSet; theIndex: cint): var Handle[OpenGlTexture] {.
    cdecl, importcpp: "ChangeValue", dynlib: tkkxbase.}
proc isModulate*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsModulate", dynlib: tkkxbase.}
proc hasNonPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "HasNonPointSprite", dynlib: tkkxbase.}
proc hasPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "HasPointSprite", dynlib: tkkxbase.}
proc initZero*(this: var OpenGlTextureSet) {.cdecl, importcpp: "InitZero",
    dynlib: tkkxbase.}