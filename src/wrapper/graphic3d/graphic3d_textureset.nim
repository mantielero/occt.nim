import ../../tkernel/standard/standard_types
import graphic3d_types





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




proc newGraphic3dTextureSetIterator*(): Graphic3dTextureSetIterator {.cdecl,
    constructor, importcpp: "Graphic3d_TextureSet::Iterator(@)", header: "Graphic3d_TextureSet.hxx".}
proc newGraphic3dTextureSetIterator*(theSet: Handle[Graphic3dTextureSet]): Graphic3dTextureSetIterator {.
    cdecl, constructor, importcpp: "Graphic3d_TextureSet::Iterator(@)",
    header: "Graphic3d_TextureSet.hxx".}
proc newGraphic3dTextureSet*(): Graphic3dTextureSet {.cdecl, constructor,
    importcpp: "Graphic3d_TextureSet(@)", header: "Graphic3d_TextureSet.hxx".}
proc newGraphic3dTextureSet*(theNbTextures: cint): Graphic3dTextureSet {.cdecl,
    constructor, importcpp: "Graphic3d_TextureSet(@)", header: "Graphic3d_TextureSet.hxx".}
proc newGraphic3dTextureSet*(theTexture: Handle[Graphic3dTextureMap]): Graphic3dTextureSet {.
    cdecl, constructor, importcpp: "Graphic3d_TextureSet(@)", header: "Graphic3d_TextureSet.hxx".}
proc isEmpty*(this: Graphic3dTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Graphic3d_TextureSet.hxx".}
proc size*(this: Graphic3dTextureSet): cint {.noSideEffect, cdecl, importcpp: "Size",
    header: "Graphic3d_TextureSet.hxx".}
proc lower*(this: Graphic3dTextureSet): cint {.noSideEffect, cdecl,
    importcpp: "Lower", header: "Graphic3d_TextureSet.hxx".}
proc upper*(this: Graphic3dTextureSet): cint {.noSideEffect, cdecl,
    importcpp: "Upper", header: "Graphic3d_TextureSet.hxx".}
proc first*(this: Graphic3dTextureSet): Handle[Graphic3dTextureMap] {.noSideEffect,
    cdecl, importcpp: "First", header: "Graphic3d_TextureSet.hxx".}
proc setFirst*(this: var Graphic3dTextureSet;
              theTexture: Handle[Graphic3dTextureMap]) {.cdecl,
    importcpp: "SetFirst", header: "Graphic3d_TextureSet.hxx".}
proc value*(this: Graphic3dTextureSet; theIndex: cint): Handle[Graphic3dTextureMap] {.
    noSideEffect, cdecl, importcpp: "Value", header: "Graphic3d_TextureSet.hxx".}
proc setValue*(this: var Graphic3dTextureSet; theIndex: cint;
              theTexture: Handle[Graphic3dTextureMap]) {.cdecl,
    importcpp: "SetValue", header: "Graphic3d_TextureSet.hxx".}


