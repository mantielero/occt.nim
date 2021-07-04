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

import
  Graphic3d_LevelOfTextureAnisotropy, Graphic3d_Vec2, Graphic3d_Vec4,
  Graphic3d_TextureUnit, Graphic3d_TypeOfTextureFilter,
  Graphic3d_TypeOfTextureMode, ../Standard/Standard, ../Standard/Standard_Boolean,
  ../Standard/Standard_ShortReal, ../Standard/Standard_Type,
  ../Standard/Standard_Transient

## ! This class describes texture parameters.

type
  Graphic3d_TextureParams* {.importcpp: "Graphic3d_TextureParams",
                            header: "Graphic3d_TextureParams.hxx", bycopy.} = object of Standard_Transient ##
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

  Graphic3d_TextureParamsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_TextureParams::get_type_name(@)",
                              header: "Graphic3d_TextureParams.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_TextureParams::get_type_descriptor(@)",
    header: "Graphic3d_TextureParams.hxx".}
proc DynamicType*(this: Graphic3d_TextureParams): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_TextureParams.hxx".}
proc constructGraphic3d_TextureParams*(): Graphic3d_TextureParams {.constructor,
    importcpp: "Graphic3d_TextureParams(@)", header: "Graphic3d_TextureParams.hxx".}
proc destroyGraphic3d_TextureParams*(this: var Graphic3d_TextureParams) {.
    importcpp: "#.~Graphic3d_TextureParams()",
    header: "Graphic3d_TextureParams.hxx".}
proc TextureUnit*(this: Graphic3d_TextureParams): Graphic3d_TextureUnit {.
    noSideEffect, importcpp: "TextureUnit", header: "Graphic3d_TextureParams.hxx".}
proc SetTextureUnit*(this: var Graphic3d_TextureParams;
                    theUnit: Graphic3d_TextureUnit) {.importcpp: "SetTextureUnit",
    header: "Graphic3d_TextureParams.hxx".}
proc IsModulate*(this: Graphic3d_TextureParams): Standard_Boolean {.noSideEffect,
    importcpp: "IsModulate", header: "Graphic3d_TextureParams.hxx".}
proc SetModulate*(this: var Graphic3d_TextureParams; theToModulate: Standard_Boolean) {.
    importcpp: "SetModulate", header: "Graphic3d_TextureParams.hxx".}
proc IsRepeat*(this: Graphic3d_TextureParams): Standard_Boolean {.noSideEffect,
    importcpp: "IsRepeat", header: "Graphic3d_TextureParams.hxx".}
proc SetRepeat*(this: var Graphic3d_TextureParams; theToRepeat: Standard_Boolean) {.
    importcpp: "SetRepeat", header: "Graphic3d_TextureParams.hxx".}
proc Filter*(this: Graphic3d_TextureParams): Graphic3d_TypeOfTextureFilter {.
    noSideEffect, importcpp: "Filter", header: "Graphic3d_TextureParams.hxx".}
proc SetFilter*(this: var Graphic3d_TextureParams;
               theFilter: Graphic3d_TypeOfTextureFilter) {.importcpp: "SetFilter",
    header: "Graphic3d_TextureParams.hxx".}
proc AnisoFilter*(this: Graphic3d_TextureParams): Graphic3d_LevelOfTextureAnisotropy {.
    noSideEffect, importcpp: "AnisoFilter", header: "Graphic3d_TextureParams.hxx".}
proc SetAnisoFilter*(this: var Graphic3d_TextureParams;
                    theLevel: Graphic3d_LevelOfTextureAnisotropy) {.
    importcpp: "SetAnisoFilter", header: "Graphic3d_TextureParams.hxx".}
proc Rotation*(this: Graphic3d_TextureParams): Standard_ShortReal {.noSideEffect,
    importcpp: "Rotation", header: "Graphic3d_TextureParams.hxx".}
proc SetRotation*(this: var Graphic3d_TextureParams;
                 theAngleDegrees: Standard_ShortReal) {.importcpp: "SetRotation",
    header: "Graphic3d_TextureParams.hxx".}
proc Scale*(this: Graphic3d_TextureParams): Graphic3d_Vec2 {.noSideEffect,
    importcpp: "Scale", header: "Graphic3d_TextureParams.hxx".}
proc SetScale*(this: var Graphic3d_TextureParams; theScale: Graphic3d_Vec2) {.
    importcpp: "SetScale", header: "Graphic3d_TextureParams.hxx".}
proc Translation*(this: Graphic3d_TextureParams): Graphic3d_Vec2 {.noSideEffect,
    importcpp: "Translation", header: "Graphic3d_TextureParams.hxx".}
proc SetTranslation*(this: var Graphic3d_TextureParams; theVec: Graphic3d_Vec2) {.
    importcpp: "SetTranslation", header: "Graphic3d_TextureParams.hxx".}
proc GenMode*(this: Graphic3d_TextureParams): Graphic3d_TypeOfTextureMode {.
    noSideEffect, importcpp: "GenMode", header: "Graphic3d_TextureParams.hxx".}
proc GenPlaneS*(this: Graphic3d_TextureParams): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "GenPlaneS", header: "Graphic3d_TextureParams.hxx".}
proc GenPlaneT*(this: Graphic3d_TextureParams): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "GenPlaneT", header: "Graphic3d_TextureParams.hxx".}
proc SetGenMode*(this: var Graphic3d_TextureParams;
                theMode: Graphic3d_TypeOfTextureMode; thePlaneS: Graphic3d_Vec4;
                thePlaneT: Graphic3d_Vec4) {.importcpp: "SetGenMode",
    header: "Graphic3d_TextureParams.hxx".}
proc BaseLevel*(this: Graphic3d_TextureParams): Standard_Integer {.noSideEffect,
    importcpp: "BaseLevel", header: "Graphic3d_TextureParams.hxx".}
proc MaxLevel*(this: Graphic3d_TextureParams): Standard_Integer {.noSideEffect,
    importcpp: "MaxLevel", header: "Graphic3d_TextureParams.hxx".}
proc SetLevelsRange*(this: var Graphic3d_TextureParams;
                    theFirstLevel: Standard_Integer;
                    theSecondLevel: Standard_Integer = 0) {.
    importcpp: "SetLevelsRange", header: "Graphic3d_TextureParams.hxx".}
proc SamplerRevision*(this: Graphic3d_TextureParams): cuint {.noSideEffect,
    importcpp: "SamplerRevision", header: "Graphic3d_TextureParams.hxx".}
discard "forward decl of Graphic3d_TextureParams"
type
  Handle_Graphic3d_TextureParams* = handle[Graphic3d_TextureParams]
