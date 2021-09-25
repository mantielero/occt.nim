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

type
  Graphic3dTextureParams* {.importcpp: "Graphic3d_TextureParams",
                           header: "Graphic3d_TextureParams.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Increment
                                                                                                  ## revision.
    ## !< texture coordinates generation plane S
    ## !< texture coordinates generation plane T
    ## !< texture coordinates scale factor vector; (1,1) by default
    ## !< texture coordinates translation vector;  (0,0) by default
    ## !< modification counter of parameters related to sampler state
    ## !< default texture unit to bind texture; Graphic3d_TextureUnit_BaseColor by default
    ## !< texture filter, Graphic3d_TOTF_NEAREST by default
    ## !< level of anisotropy filter, Graphic3d_LOTA_OFF by default
    ## !< texture coordinates generation mode, Graphic3d_TOTM_MANUAL by default
    ## !< base texture mipmap level (0 by default)
    ## !< maximum texture mipmap array level (1000 by default)
    ## !< texture coordinates rotation angle in degrees, 0 by default
    ## !< flag to modulate texture with material color, FALSE by default
    ## !< flag to repeat (true) or wrap (false) texture coordinates out of [0,1] range

  Graphic3dTextureParamsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_TextureParams::get_type_name(@)",
                            header: "Graphic3d_TextureParams.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_TextureParams::get_type_descriptor(@)",
    header: "Graphic3d_TextureParams.hxx".}
proc dynamicType*(this: Graphic3dTextureParams): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_TextureParams.hxx".}
proc constructGraphic3dTextureParams*(): Graphic3dTextureParams {.constructor,
    importcpp: "Graphic3d_TextureParams(@)", header: "Graphic3d_TextureParams.hxx".}
proc destroyGraphic3dTextureParams*(this: var Graphic3dTextureParams) {.
    importcpp: "#.~Graphic3d_TextureParams()",
    header: "Graphic3d_TextureParams.hxx".}
proc textureUnit*(this: Graphic3dTextureParams): Graphic3dTextureUnit {.
    noSideEffect, importcpp: "TextureUnit", header: "Graphic3d_TextureParams.hxx".}
proc setTextureUnit*(this: var Graphic3dTextureParams; theUnit: Graphic3dTextureUnit) {.
    importcpp: "SetTextureUnit", header: "Graphic3d_TextureParams.hxx".}
proc isModulate*(this: Graphic3dTextureParams): bool {.noSideEffect,
    importcpp: "IsModulate", header: "Graphic3d_TextureParams.hxx".}
proc setModulate*(this: var Graphic3dTextureParams; theToModulate: bool) {.
    importcpp: "SetModulate", header: "Graphic3d_TextureParams.hxx".}
proc isRepeat*(this: Graphic3dTextureParams): bool {.noSideEffect,
    importcpp: "IsRepeat", header: "Graphic3d_TextureParams.hxx".}
proc setRepeat*(this: var Graphic3dTextureParams; theToRepeat: bool) {.
    importcpp: "SetRepeat", header: "Graphic3d_TextureParams.hxx".}
proc filter*(this: Graphic3dTextureParams): Graphic3dTypeOfTextureFilter {.
    noSideEffect, importcpp: "Filter", header: "Graphic3d_TextureParams.hxx".}
proc setFilter*(this: var Graphic3dTextureParams;
               theFilter: Graphic3dTypeOfTextureFilter) {.importcpp: "SetFilter",
    header: "Graphic3d_TextureParams.hxx".}
proc anisoFilter*(this: Graphic3dTextureParams): Graphic3dLevelOfTextureAnisotropy {.
    noSideEffect, importcpp: "AnisoFilter", header: "Graphic3d_TextureParams.hxx".}
proc setAnisoFilter*(this: var Graphic3dTextureParams;
                    theLevel: Graphic3dLevelOfTextureAnisotropy) {.
    importcpp: "SetAnisoFilter", header: "Graphic3d_TextureParams.hxx".}
proc rotation*(this: Graphic3dTextureParams): StandardShortReal {.noSideEffect,
    importcpp: "Rotation", header: "Graphic3d_TextureParams.hxx".}
proc setRotation*(this: var Graphic3dTextureParams;
                 theAngleDegrees: StandardShortReal) {.importcpp: "SetRotation",
    header: "Graphic3d_TextureParams.hxx".}
proc scale*(this: Graphic3dTextureParams): Graphic3dVec2 {.noSideEffect,
    importcpp: "Scale", header: "Graphic3d_TextureParams.hxx".}
proc setScale*(this: var Graphic3dTextureParams; theScale: Graphic3dVec2) {.
    importcpp: "SetScale", header: "Graphic3d_TextureParams.hxx".}
proc translation*(this: Graphic3dTextureParams): Graphic3dVec2 {.noSideEffect,
    importcpp: "Translation", header: "Graphic3d_TextureParams.hxx".}
proc setTranslation*(this: var Graphic3dTextureParams; theVec: Graphic3dVec2) {.
    importcpp: "SetTranslation", header: "Graphic3d_TextureParams.hxx".}
proc genMode*(this: Graphic3dTextureParams): Graphic3dTypeOfTextureMode {.
    noSideEffect, importcpp: "GenMode", header: "Graphic3d_TextureParams.hxx".}
proc genPlaneS*(this: Graphic3dTextureParams): Graphic3dVec4 {.noSideEffect,
    importcpp: "GenPlaneS", header: "Graphic3d_TextureParams.hxx".}
proc genPlaneT*(this: Graphic3dTextureParams): Graphic3dVec4 {.noSideEffect,
    importcpp: "GenPlaneT", header: "Graphic3d_TextureParams.hxx".}
proc setGenMode*(this: var Graphic3dTextureParams;
                theMode: Graphic3dTypeOfTextureMode; thePlaneS: Graphic3dVec4;
                thePlaneT: Graphic3dVec4) {.importcpp: "SetGenMode",
    header: "Graphic3d_TextureParams.hxx".}
proc baseLevel*(this: Graphic3dTextureParams): int {.noSideEffect,
    importcpp: "BaseLevel", header: "Graphic3d_TextureParams.hxx".}
proc maxLevel*(this: Graphic3dTextureParams): int {.noSideEffect,
    importcpp: "MaxLevel", header: "Graphic3d_TextureParams.hxx".}
proc setLevelsRange*(this: var Graphic3dTextureParams; theFirstLevel: int;
                    theSecondLevel: int = 0) {.importcpp: "SetLevelsRange",
    header: "Graphic3d_TextureParams.hxx".}
proc samplerRevision*(this: Graphic3dTextureParams): cuint {.noSideEffect,
    importcpp: "SamplerRevision", header: "Graphic3d_TextureParams.hxx".}
discard "forward decl of Graphic3d_TextureParams"
type
  HandleGraphic3dTextureParams* = Handle[Graphic3dTextureParams]

