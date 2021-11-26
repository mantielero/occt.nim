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
    standardType* {.importc: "Standard_Type".}: Handle
    openGlTexture* {.importc: "OpenGl_Texture".}: Handle

  OpenGlTextureSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_TextureSet::get_type_name(@)",
                            header: "OpenGl_TextureSet.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

type
  OpenGlTextureSetTextureSlot* {.importcpp: "OpenGl_TextureSet::TextureSlot",
                                header: "OpenGl_TextureSet.hxx", bycopy.} = object
    openGlTexture* {.importc: "OpenGl_Texture".}: Handle
    unit* {.importc: "Unit".}: Graphic3dTextureUnit


## !!!Ignored construct:  Texture ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  operator const Handle ( OpenGl_Texture ) & ( ) const { return Texture ; } operator Handle ( OpenGl_Texture ) & ( ) { return Texture ; } TextureSlot ( ) : Unit ( Graphic3d_TextureUnit_0 ) { } }
## Error: expected ';'!!!

type
  OpenGlTextureSetIterator* {.importcpp: "OpenGl_TextureSet::Iterator",
                             header: "OpenGl_TextureSet.hxx", bycopy.} = object of OpenGlTextureSetIterator[
      OpenGlTextureSetTextureSlot] ## ! Empty constructor.


proc constructOpenGlTextureSetIterator*(): OpenGlTextureSetIterator {.constructor,
    importcpp: "OpenGl_TextureSet::Iterator(@)", header: "OpenGl_TextureSet.hxx".}
## !!!Ignored construct:  ! Constructor. Iterator ( const Handle ( OpenGl_TextureSet ) & theSet ) { if ( ! theSet . IsNull ( ) ) { NCollection_Array1 < TextureSlot > :: Iterator :: Init ( theSet -> myTextures ) ; } } ! Access texture. const Handle ( OpenGl_Texture ) & Value ( ) const { return NCollection_Array1 < TextureSlot > :: Iterator :: Value ( ) . Texture ; } Handle ( OpenGl_Texture ) & ChangeValue ( ) { return NCollection_Array1 < TextureSlot > :: Iterator :: ChangeValue ( ) . Texture ; } ! Access texture unit. Graphic3d_TextureUnit Unit ( ) const { return NCollection_Array1 < TextureSlot > :: Iterator :: Value ( ) . Unit ; } Graphic3d_TextureUnit & ChangeUnit ( ) { return NCollection_Array1 < TextureSlot > :: Iterator :: ChangeValue ( ) . Unit ; } }
## Error: token expected: ) but got: &!!!

proc constructOpenGlTextureSet*(): OpenGlTextureSet {.constructor,
    importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
proc constructOpenGlTextureSet*(theNbTextures: int): OpenGlTextureSet {.constructor,
    importcpp: "OpenGl_TextureSet(@)", header: "OpenGl_TextureSet.hxx".}
## !!!Ignored construct:  ! Constructor for a single texture. OpenGl_TextureSet ( const Handle ( OpenGl_Texture ) & theTexture ) ;
## Error: token expected: ) but got: &!!!

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
## !!!Ignored construct:  & First ( ) const { return myTextures . First ( ) . Texture ; } ! Return the first texture. Handle ( OpenGl_Texture ) & ChangeFirst ( ) { return myTextures . ChangeFirst ( ) . Texture ; } ! Return the first texture unit. Graphic3d_TextureUnit FirstUnit ( ) const { return myTextures . First ( ) . Unit ; } ! Return the last texture. const Handle ( OpenGl_Texture ) & Last ( ) const { return myTextures . Last ( ) . Texture ; } ! Return the last texture. Handle ( OpenGl_Texture ) & ChangeLast ( ) { return myTextures . ChangeLast ( ) . Texture ; } ! Return the last texture unit. Graphic3d_TextureUnit LastUnit ( ) const { return myTextures . Last ( ) . Unit ; } ! Return the last texture unit. Graphic3d_TextureUnit & ChangeLastUnit ( ) { return myTextures . ChangeLast ( ) . Unit ; } ! Return the texture at specified position within [0, Size()) range. const Handle ( OpenGl_Texture ) & Value ( Standard_Integer theIndex ) const { return myTextures . Value ( theIndex ) . Texture ; } ! Return the texture at specified position within [0, Size()) range. Handle ( OpenGl_Texture ) & ChangeValue ( Standard_Integer theIndex ) { return myTextures . ChangeValue ( theIndex ) . Texture ; } ! Return TRUE if texture color modulation has been enabled for the first texture
## ! or if texture is not set at all. bool IsModulate ( ) const ;
## Error: identifier expected, but got: &!!!

proc hasNonPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect,
    importcpp: "HasNonPointSprite", header: "OpenGl_TextureSet.hxx".}
proc hasPointSprite*(this: OpenGlTextureSet): bool {.noSideEffect,
    importcpp: "HasPointSprite", header: "OpenGl_TextureSet.hxx".}
proc initZero*(this: var OpenGlTextureSet) {.importcpp: "InitZero",
    header: "OpenGl_TextureSet.hxx".}













































