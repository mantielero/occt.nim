##  Copyright (c) 2019 OPEN CASCADE SAS
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
  OpenGl_Element, OpenGl_AspectsProgram, OpenGl_AspectsTextureSet,
  OpenGl_AspectsSprite, ../Graphic3d/Graphic3d_Aspects,
  ../Graphic3d/Graphic3d_BSDF

## ! The element holding Graphic3d_Aspects.

type
  OpenGl_Aspects* {.importcpp: "OpenGl_Aspects", header: "OpenGl_Aspects.hxx", bycopy.} = object of OpenGl_Element ##
                                                                                                         ## !
                                                                                                         ## Empty
                                                                                                         ## constructor.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## OpenGl
                                                                                                         ## resources


proc constructOpenGl_Aspects*(): OpenGl_Aspects {.constructor,
    importcpp: "OpenGl_Aspects(@)", header: "OpenGl_Aspects.hxx".}
proc constructOpenGl_Aspects*(theAspect: handle[Graphic3d_Aspects]): OpenGl_Aspects {.
    constructor, importcpp: "OpenGl_Aspects(@)", header: "OpenGl_Aspects.hxx".}
proc Aspect*(this: OpenGl_Aspects): handle[Graphic3d_Aspects] {.noSideEffect,
    importcpp: "Aspect", header: "OpenGl_Aspects.hxx".}
proc SetAspect*(this: var OpenGl_Aspects; theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "SetAspect", header: "OpenGl_Aspects.hxx".}
proc ShadingModel*(this: OpenGl_Aspects): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "OpenGl_Aspects.hxx".}
proc SetNoLighting*(this: var OpenGl_Aspects) {.importcpp: "SetNoLighting",
    header: "OpenGl_Aspects.hxx".}
proc TextureSet*(this: OpenGl_Aspects; theCtx: handle[OpenGl_Context];
                theToHighlight: bool = false): handle[OpenGl_TextureSet] {.
    noSideEffect, importcpp: "TextureSet", header: "OpenGl_Aspects.hxx".}
proc ShaderProgramRes*(this: OpenGl_Aspects; theCtx: handle[OpenGl_Context]): handle[
    OpenGl_ShaderProgram] {.noSideEffect, importcpp: "ShaderProgramRes",
                           header: "OpenGl_Aspects.hxx".}
proc MarkerSize*(this: OpenGl_Aspects): Standard_ShortReal {.noSideEffect,
    importcpp: "MarkerSize", header: "OpenGl_Aspects.hxx".}
proc HasPointSprite*(this: OpenGl_Aspects; theCtx: handle[OpenGl_Context]): bool {.
    noSideEffect, importcpp: "HasPointSprite", header: "OpenGl_Aspects.hxx".}
proc IsDisplayListSprite*(this: OpenGl_Aspects; theCtx: handle[OpenGl_Context]): bool {.
    noSideEffect, importcpp: "IsDisplayListSprite", header: "OpenGl_Aspects.hxx".}
proc SpriteRes*(this: OpenGl_Aspects; theCtx: handle[OpenGl_Context];
               theIsAlphaSprite: bool): handle[OpenGl_PointSprite] {.noSideEffect,
    importcpp: "SpriteRes", header: "OpenGl_Aspects.hxx".}
proc Render*(this: OpenGl_Aspects; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Aspects.hxx".}
proc Release*(this: var OpenGl_Aspects; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Aspects.hxx".}
proc SynchronizeAspects*(this: var OpenGl_Aspects) {.
    importcpp: "SynchronizeAspects", header: "OpenGl_Aspects.hxx".}
proc DumpJson*(this: OpenGl_Aspects; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Aspects.hxx".}