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

  OpenGlTextureSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_TextureSet::get_type_name(@)",
                            header: "OpenGl_TextureSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_TextureSet::get_type_descriptor(@)",
    header: "OpenGl_TextureSet.hxx".}
proc dynamicType*(this: OpenGlTextureSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_TextureSet.hxx".}
type
  OpenGlTextureSetTextureSlot* {.importcpp: "OpenGl_TextureSet::TextureSlot",
                                header: "OpenGl_TextureSet.hxx", bycopy.} = object
    texture* {.importc: "Texture".}: Handle[OpenGlTexture]
    unit* {.importc: "Unit".}: Graphic3dTextureUnit


converter `constopencascade`*(this: OpenGlTextureSetTextureSlot): Handle[
    OpenGlTexture] {.noSideEffect,
                    importcpp: "TextureSlot::operator constopencascade",
                    header: "OpenGl_TextureSet.hxx".}
converter `opencascade`*(this: var OpenGlTextureSetTextureSlot): var Handle[
    OpenGlTexture] {.importcpp: "TextureSlot::operator opencascade",
                    header: "OpenGl_TextureSet.hxx".}
proc constructOpenGlTextureSetTextureSlot*(): OpenGlTextureSetTextureSlot {.
    constructor, importcpp: "OpenGl_TextureSet::TextureSlot(@)",
    header: "OpenGl_TextureSet.hxx".}
type
  OpenGlTextureSetIterator* {.importcpp: "OpenGl_TextureSet::Iterator",
                             header: "OpenGl_TextureSet.hxx", bycopy.} = object of OpenGlTextureSetIterator[
      OpenGlTextureSetTextureSlot] ## ! Empty constructor.


proc constructOpenGlTextureSetIterator*(): OpenGlTextureSetIterator {.constructor,
    importcpp: "OpenGl_TextureSet::Iterator(@)", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGlTextureSetIterator*(theSet: Handle[OpenGlTextureSet]): OpenGlTextureSetIterator {.
    constructor, importcpp: "OpenGl_TextureSet::Iterator(@)",
    header: "OpenGl_TextureSet.hxx".}
proc value*(this: OpenGlTextureSetIterator): Handle[OpenGlTexture] {.noSideEffect,
    importcpp: "Value", header: "OpenGl_TextureSet.hxx".}
proc changeValue*(this: var OpenGlTextureSetIterator): var Handle[OpenGlTexture] {.
    importcpp: "ChangeValue", header: "OpenGl_TextureSet.hxx".}
proc unit*(this: OpenGlTextureSetIterator): Graphic3dTextureUnit {.noSideEffect,
    importcpp: "Unit", header: "OpenGl_TextureSet.hxx".}
proc changeUnit*(this: var OpenGlTextureSetIterator): var Graphic3dTextureUnit {.
    importcpp: "ChangeUnit", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGlTextureSet*(): OpenGlTextureSet {.constructor,
    importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGlTextureSet*(theNbTextures: int): OpenGlTextureSet {.constructor,
    importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGlTextureSet*(theTexture: Handle[OpenGlTexture]): OpenGlTextureSet {.
    constructor, importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc textureSetBits*(this: OpenGlTextureSet): int {.noSideEffect,
    importcpp: "TextureSetBits", header: "OpenGl_TextureSet.hxx".}
proc changeTextureSetBits*(this: var OpenGlTextureSet): var int {.
    importcpp: "ChangeTextureSetBits", header: "OpenGl_TextureSet.hxx".}
proc isEmpty*(this: OpenGlTextureSet): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "OpenGl_TextureSet.hxx".}
proc size*(this: OpenGlTextureSet): int {.noSideEffect, importcpp: "Size",
                                      header: "OpenGl_TextureSet.hxx".}
proc lower*(this: OpenGlTextureSet): int {.noSideEffect, importcpp: "Lower",
                                       header: "OpenGl_TextureSet.hxx".}
proc upper*(this: OpenGlTextureSet): int {.noSideEffect, importcpp: "Upper",
                                       header: "OpenGl_TextureSet.hxx".}
proc first*(this: OpenGlTextureSet): Handle[OpenGlTexture] {.noSideEffect,
    importcpp: "First", header: "OpenGl_TextureSet.hxx".}
proc changeFirst*(this: var OpenGlTextureSet): var Handle[OpenGlTexture] {.
    importcpp: "ChangeFirst", header: "OpenGl_TextureSet.hxx".}
proc firstUnit*(this: OpenGlTextureSet): Graphic3dTextureUnit {.noSideEffect,
    importcpp: "FirstUnit", header: "OpenGl_TextureSet.hxx".}
proc last*(this: OpenGlTextureSet): Handle[OpenGlTexture] {.noSideEffect,
    importcpp: "Last", header: "OpenGl_TextureSet.hxx".}
proc changeLast*(this: var OpenGlTextureSet): var Handle[OpenGlTexture] {.
    importcpp: "ChangeLast", header: "OpenGl_TextureSet.hxx".}
proc lastUnit*(this: OpenGlTextureSet): Graphic3dTextureUnit {.noSideEffect,
    importcpp: "LastUnit", header: "OpenGl_TextureSet.hxx".}
proc changeLastUnit*(this: var OpenGlTextureSet): var Graphic3dTextureUnit {.
    importcpp: "ChangeLastUnit", header: "OpenGl_TextureSet.hxx".}
proc value*(this: OpenGlTextureSet; theIndex: int): Handle[OpenGlTexture] {.
    noSideEffect, importcpp: "Value", header: "OpenGl_TextureSet.hxx".}
proc changeValue*(this: var OpenGlTextureSet; theIndex: int): var Handle[OpenGlTexture] {.
    importcpp: "ChangeValue", header: "OpenGl_TextureSet.hxx".}
proc isModulate*(this: OpenGlTextureSet): bool {.noSideEffect,
    importcpp: "IsModulate", header: "OpenGl_TextureSet.hxx".}
proc hasNonPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect,
    importcpp: "HasNonPointSprite", header: "OpenGl_TextureSet.hxx".}
proc hasPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect,
    importcpp: "HasPointSprite", header: "OpenGl_TextureSet.hxx".}
proc initZero*(this: var OpenGlTextureSet) {.importcpp: "InitZero",
    header: "OpenGl_TextureSet.hxx".}
