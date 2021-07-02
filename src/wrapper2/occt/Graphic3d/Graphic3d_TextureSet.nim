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

## ! Class holding array of textures to be mapped as a set.
## ! Textures should be defined in ascending order of texture units within the set.

type
  Graphic3dTextureSet* {.importcpp: "Graphic3d_TextureSet",
                        header: "Graphic3d_TextureSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Class
                                                                                            ## for
                                                                                            ## iterating
                                                                                            ## texture
                                                                                            ## set.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor.

  Graphic3dTextureSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_TextureSet::get_type_name(@)",
                            header: "Graphic3d_TextureSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_TextureSet::get_type_descriptor(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc dynamicType*(this: Graphic3dTextureSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_TextureSet.hxx".}
type
  Graphic3dTextureSetIterator* {.importcpp: "Graphic3d_TextureSet::Iterator",
                                header: "Graphic3d_TextureSet.hxx", bycopy.} = object of Graphic3dTextureSetIterator[
      Handle[Graphic3dTextureMap]] ## ! Empty constructor.


proc constructGraphic3dTextureSetIterator*(): Graphic3dTextureSetIterator {.
    constructor, importcpp: "Graphic3d_TextureSet::Iterator(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3dTextureSetIterator*(theSet: Handle[Graphic3dTextureSet]): Graphic3dTextureSetIterator {.
    constructor, importcpp: "Graphic3d_TextureSet::Iterator(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3dTextureSet*(): Graphic3dTextureSet {.constructor,
    importcpp: "Graphic3d_TextureSet(@)", header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3dTextureSet*(theNbTextures: StandardInteger): Graphic3dTextureSet {.
    constructor, importcpp: "Graphic3d_TextureSet(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc constructGraphic3dTextureSet*(theTexture: Handle[Graphic3dTextureMap]): Graphic3dTextureSet {.
    constructor, importcpp: "Graphic3d_TextureSet(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc isEmpty*(this: Graphic3dTextureSet): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_TextureSet.hxx".}
proc size*(this: Graphic3dTextureSet): StandardInteger {.noSideEffect,
    importcpp: "Size", header: "Graphic3d_TextureSet.hxx".}
proc lower*(this: Graphic3dTextureSet): StandardInteger {.noSideEffect,
    importcpp: "Lower", header: "Graphic3d_TextureSet.hxx".}
proc upper*(this: Graphic3dTextureSet): StandardInteger {.noSideEffect,
    importcpp: "Upper", header: "Graphic3d_TextureSet.hxx".}
proc first*(this: Graphic3dTextureSet): Handle[Graphic3dTextureMap] {.noSideEffect,
    importcpp: "First", header: "Graphic3d_TextureSet.hxx".}
proc setFirst*(this: var Graphic3dTextureSet;
              theTexture: Handle[Graphic3dTextureMap]) {.importcpp: "SetFirst",
    header: "Graphic3d_TextureSet.hxx".}
proc value*(this: Graphic3dTextureSet; theIndex: StandardInteger): Handle[
    Graphic3dTextureMap] {.noSideEffect, importcpp: "Value",
                          header: "Graphic3d_TextureSet.hxx".}
proc setValue*(this: var Graphic3dTextureSet; theIndex: StandardInteger;
              theTexture: Handle[Graphic3dTextureMap]) {.importcpp: "SetValue",
    header: "Graphic3d_TextureSet.hxx".}

