import ../standard/standard_types
import graphic3d_types





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

## ! This class describes texture parameters.



proc newGraphic3dTextureParams*(): Graphic3dTextureParams {.cdecl, constructor,
    importcpp: "Graphic3d_TextureParams(@)", header: "Graphic3d_TextureParams.hxx".}
proc destroyGraphic3dTextureParams*(this: var Graphic3dTextureParams) {.cdecl,
    importcpp: "#.~Graphic3d_TextureParams()", header: "Graphic3d_TextureParams.hxx".}
proc textureUnit*(this: Graphic3dTextureParams): Graphic3dTextureUnit {.
    noSideEffect, cdecl, importcpp: "TextureUnit", header: "Graphic3d_TextureParams.hxx".}
proc setTextureUnit*(this: var Graphic3dTextureParams; theUnit: Graphic3dTextureUnit) {.
    cdecl, importcpp: "SetTextureUnit", header: "Graphic3d_TextureParams.hxx".}
proc isModulate*(this: Graphic3dTextureParams): bool {.noSideEffect, cdecl,
    importcpp: "IsModulate", header: "Graphic3d_TextureParams.hxx".}
proc setModulate*(this: var Graphic3dTextureParams; theToModulate: bool) {.cdecl,
    importcpp: "SetModulate", header: "Graphic3d_TextureParams.hxx".}
proc isRepeat*(this: Graphic3dTextureParams): bool {.noSideEffect, cdecl,
    importcpp: "IsRepeat", header: "Graphic3d_TextureParams.hxx".}
proc setRepeat*(this: var Graphic3dTextureParams; theToRepeat: bool) {.cdecl,
    importcpp: "SetRepeat", header: "Graphic3d_TextureParams.hxx".}
proc filter*(this: Graphic3dTextureParams): Graphic3dTypeOfTextureFilter {.
    noSideEffect, cdecl, importcpp: "Filter", header: "Graphic3d_TextureParams.hxx".}
proc setFilter*(this: var Graphic3dTextureParams;
               theFilter: Graphic3dTypeOfTextureFilter) {.cdecl,
    importcpp: "SetFilter", header: "Graphic3d_TextureParams.hxx".}
proc anisoFilter*(this: Graphic3dTextureParams): Graphic3dLevelOfTextureAnisotropy {.
    noSideEffect, cdecl, importcpp: "AnisoFilter", header: "Graphic3d_TextureParams.hxx".}
proc setAnisoFilter*(this: var Graphic3dTextureParams;
                    theLevel: Graphic3dLevelOfTextureAnisotropy) {.cdecl,
    importcpp: "SetAnisoFilter", header: "Graphic3d_TextureParams.hxx".}
proc rotation*(this: Graphic3dTextureParams): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "Rotation", header: "Graphic3d_TextureParams.hxx".}
proc setRotation*(this: var Graphic3dTextureParams;
                 theAngleDegrees: StandardShortReal) {.cdecl,
    importcpp: "SetRotation", header: "Graphic3d_TextureParams.hxx".}
proc scale*(this: Graphic3dTextureParams): Graphic3dVec2 {.noSideEffect, cdecl,
    importcpp: "Scale", header: "Graphic3d_TextureParams.hxx".}
proc setScale*(this: var Graphic3dTextureParams; theScale: Graphic3dVec2) {.cdecl,
    importcpp: "SetScale", header: "Graphic3d_TextureParams.hxx".}
proc translation*(this: Graphic3dTextureParams): Graphic3dVec2 {.noSideEffect, cdecl,
    importcpp: "Translation", header: "Graphic3d_TextureParams.hxx".}
proc setTranslation*(this: var Graphic3dTextureParams; theVec: Graphic3dVec2) {.cdecl,
    importcpp: "SetTranslation", header: "Graphic3d_TextureParams.hxx".}
proc genMode*(this: Graphic3dTextureParams): Graphic3dTypeOfTextureMode {.
    noSideEffect, cdecl, importcpp: "GenMode", header: "Graphic3d_TextureParams.hxx".}
proc genPlaneS*(this: Graphic3dTextureParams): Graphic3dVec4 {.noSideEffect, cdecl,
    importcpp: "GenPlaneS", header: "Graphic3d_TextureParams.hxx".}
proc genPlaneT*(this: Graphic3dTextureParams): Graphic3dVec4 {.noSideEffect, cdecl,
    importcpp: "GenPlaneT", header: "Graphic3d_TextureParams.hxx".}
proc setGenMode*(this: var Graphic3dTextureParams;
                theMode: Graphic3dTypeOfTextureMode; thePlaneS: Graphic3dVec4;
                thePlaneT: Graphic3dVec4) {.cdecl, importcpp: "SetGenMode",
    header: "Graphic3d_TextureParams.hxx".}
proc baseLevel*(this: Graphic3dTextureParams): cint {.noSideEffect, cdecl,
    importcpp: "BaseLevel", header: "Graphic3d_TextureParams.hxx".}
proc maxLevel*(this: Graphic3dTextureParams): cint {.noSideEffect, cdecl,
    importcpp: "MaxLevel", header: "Graphic3d_TextureParams.hxx".}
proc setLevelsRange*(this: var Graphic3dTextureParams; theFirstLevel: cint;
                    theSecondLevel: cint = 0) {.cdecl, importcpp: "SetLevelsRange",
    header: "Graphic3d_TextureParams.hxx".}
proc samplerRevision*(this: Graphic3dTextureParams): cuint {.noSideEffect, cdecl,
    importcpp: "SamplerRevision", header: "Graphic3d_TextureParams.hxx".}



