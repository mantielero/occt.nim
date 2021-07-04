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

import
  ../Graphic3d/Graphic3d_TextureSet, ../Graphic3d/Graphic3d_TextureSetBits

discard "forward decl of OpenGl_Texture"
type
  OpenGl_TextureSet* {.importcpp: "OpenGl_TextureSet",
                      header: "OpenGl_TextureSet.hxx", bycopy.} = object of Standard_Transient ##
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

  OpenGl_TextureSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OpenGl_TextureSet::get_type_name(@)",
                              header: "OpenGl_TextureSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_TextureSet::get_type_descriptor(@)",
    header: "OpenGl_TextureSet.hxx".}
proc DynamicType*(this: OpenGl_TextureSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_TextureSet.hxx".}
type
  OpenGl_TextureSetTextureSlot* {.importcpp: "OpenGl_TextureSet::TextureSlot",
                                 header: "OpenGl_TextureSet.hxx", bycopy.} = object
    Texture* {.importc: "Texture".}: handle[OpenGl_Texture]
    Unit* {.importc: "Unit".}: Graphic3d_TextureUnit


converter `constopencascade`*(this: OpenGl_TextureSetTextureSlot): handle[
    OpenGl_Texture] {.noSideEffect,
                     importcpp: "TextureSlot::operator constopencascade",
                     header: "OpenGl_TextureSet.hxx".}
converter `opencascade`*(this: var OpenGl_TextureSetTextureSlot): var handle[
    OpenGl_Texture] {.importcpp: "TextureSlot::operator opencascade",
                     header: "OpenGl_TextureSet.hxx".}
proc constructOpenGl_TextureSetTextureSlot*(): OpenGl_TextureSetTextureSlot {.
    constructor, importcpp: "OpenGl_TextureSet::TextureSlot(@)",
    header: "OpenGl_TextureSet.hxx".}
type
  OpenGl_TextureSetIterator* {.importcpp: "OpenGl_TextureSet::Iterator",
                              header: "OpenGl_TextureSet.hxx", bycopy.} = object of OpenGl_TextureSetIterator[
      OpenGl_TextureSetTextureSlot] ## ! Empty constructor.


proc constructOpenGl_TextureSetIterator*(): OpenGl_TextureSetIterator {.
    constructor, importcpp: "OpenGl_TextureSet::Iterator(@)",
    header: "OpenGl_TextureSet.hxx".}
proc constructOpenGl_TextureSetIterator*(theSet: handle[OpenGl_TextureSet]): OpenGl_TextureSetIterator {.
    constructor, importcpp: "OpenGl_TextureSet::Iterator(@)",
    header: "OpenGl_TextureSet.hxx".}
proc Value*(this: OpenGl_TextureSetIterator): handle[OpenGl_Texture] {.noSideEffect,
    importcpp: "Value", header: "OpenGl_TextureSet.hxx".}
proc ChangeValue*(this: var OpenGl_TextureSetIterator): var handle[OpenGl_Texture] {.
    importcpp: "ChangeValue", header: "OpenGl_TextureSet.hxx".}
proc Unit*(this: OpenGl_TextureSetIterator): Graphic3d_TextureUnit {.noSideEffect,
    importcpp: "Unit", header: "OpenGl_TextureSet.hxx".}
proc ChangeUnit*(this: var OpenGl_TextureSetIterator): var Graphic3d_TextureUnit {.
    importcpp: "ChangeUnit", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGl_TextureSet*(): OpenGl_TextureSet {.constructor,
    importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGl_TextureSet*(theNbTextures: Standard_Integer): OpenGl_TextureSet {.
    constructor, importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGl_TextureSet*(theTexture: handle[OpenGl_Texture]): OpenGl_TextureSet {.
    constructor, importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc TextureSetBits*(this: OpenGl_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "TextureSetBits", header: "OpenGl_TextureSet.hxx".}
proc ChangeTextureSetBits*(this: var OpenGl_TextureSet): var Standard_Integer {.
    importcpp: "ChangeTextureSetBits", header: "OpenGl_TextureSet.hxx".}
proc IsEmpty*(this: OpenGl_TextureSet): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "OpenGl_TextureSet.hxx".}
proc Size*(this: OpenGl_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "OpenGl_TextureSet.hxx".}
proc Lower*(this: OpenGl_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "OpenGl_TextureSet.hxx".}
proc Upper*(this: OpenGl_TextureSet): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "OpenGl_TextureSet.hxx".}
proc First*(this: OpenGl_TextureSet): handle[OpenGl_Texture] {.noSideEffect,
    importcpp: "First", header: "OpenGl_TextureSet.hxx".}
proc ChangeFirst*(this: var OpenGl_TextureSet): var handle[OpenGl_Texture] {.
    importcpp: "ChangeFirst", header: "OpenGl_TextureSet.hxx".}
proc FirstUnit*(this: OpenGl_TextureSet): Graphic3d_TextureUnit {.noSideEffect,
    importcpp: "FirstUnit", header: "OpenGl_TextureSet.hxx".}
proc Last*(this: OpenGl_TextureSet): handle[OpenGl_Texture] {.noSideEffect,
    importcpp: "Last", header: "OpenGl_TextureSet.hxx".}
proc ChangeLast*(this: var OpenGl_TextureSet): var handle[OpenGl_Texture] {.
    importcpp: "ChangeLast", header: "OpenGl_TextureSet.hxx".}
proc LastUnit*(this: OpenGl_TextureSet): Graphic3d_TextureUnit {.noSideEffect,
    importcpp: "LastUnit", header: "OpenGl_TextureSet.hxx".}
proc ChangeLastUnit*(this: var OpenGl_TextureSet): var Graphic3d_TextureUnit {.
    importcpp: "ChangeLastUnit", header: "OpenGl_TextureSet.hxx".}
proc Value*(this: OpenGl_TextureSet; theIndex: Standard_Integer): handle[
    OpenGl_Texture] {.noSideEffect, importcpp: "Value",
                     header: "OpenGl_TextureSet.hxx".}
proc ChangeValue*(this: var OpenGl_TextureSet; theIndex: Standard_Integer): var handle[
    OpenGl_Texture] {.importcpp: "ChangeValue", header: "OpenGl_TextureSet.hxx".}
proc IsModulate*(this: OpenGl_TextureSet): bool {.noSideEffect,
    importcpp: "IsModulate", header: "OpenGl_TextureSet.hxx".}
proc HasNonPointSprite*(this: OpenGl_TextureSet): bool {.noSideEffect,
    importcpp: "HasNonPointSprite", header: "OpenGl_TextureSet.hxx".}
proc HasPointSprite*(this: OpenGl_TextureSet): bool {.noSideEffect,
    importcpp: "HasPointSprite", header: "OpenGl_TextureSet.hxx".}
proc InitZero*(this: var OpenGl_TextureSet) {.importcpp: "InitZero",
    header: "OpenGl_TextureSet.hxx".}