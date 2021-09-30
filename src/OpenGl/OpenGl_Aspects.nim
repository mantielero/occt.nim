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

## ! The element holding Graphic3d_Aspects.

type
  OpenGlAspects* {.importcpp: "OpenGl_Aspects", header: "OpenGl_Aspects.hxx", bycopy.} = object of OpenGlElement ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## OpenGl
                                                                                                       ## resources


proc constructOpenGlAspects*(): OpenGlAspects {.constructor,
    importcpp: "OpenGl_Aspects(@)", header: "OpenGl_Aspects.hxx".}
proc constructOpenGlAspects*(theAspect: Handle[Graphic3dAspects]): OpenGlAspects {.
    constructor, importcpp: "OpenGl_Aspects(@)", header: "OpenGl_Aspects.hxx".}
proc aspect*(this: OpenGlAspects): Handle[Graphic3dAspects] {.noSideEffect,
    importcpp: "Aspect", header: "OpenGl_Aspects.hxx".}
proc setAspect*(this: var OpenGlAspects; theAspect: Handle[Graphic3dAspects]) {.
    importcpp: "SetAspect", header: "OpenGl_Aspects.hxx".}
proc shadingModel*(this: OpenGlAspects): Graphic3dTypeOfShadingModel {.noSideEffect,
    importcpp: "ShadingModel", header: "OpenGl_Aspects.hxx".}
proc setNoLighting*(this: var OpenGlAspects) {.importcpp: "SetNoLighting",
    header: "OpenGl_Aspects.hxx".}
proc textureSet*(this: OpenGlAspects; theCtx: Handle[OpenGlContext];
                theToHighlight: bool = false): Handle[OpenGlTextureSet] {.
    noSideEffect, importcpp: "TextureSet", header: "OpenGl_Aspects.hxx".}
proc shaderProgramRes*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): Handle[
    OpenGlShaderProgram] {.noSideEffect, importcpp: "ShaderProgramRes",
                          header: "OpenGl_Aspects.hxx".}
proc markerSize*(this: OpenGlAspects): StandardShortReal {.noSideEffect,
    importcpp: "MarkerSize", header: "OpenGl_Aspects.hxx".}
proc hasPointSprite*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): bool {.
    noSideEffect, importcpp: "HasPointSprite", header: "OpenGl_Aspects.hxx".}
proc isDisplayListSprite*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): bool {.
    noSideEffect, importcpp: "IsDisplayListSprite", header: "OpenGl_Aspects.hxx".}
proc spriteRes*(this: OpenGlAspects; theCtx: Handle[OpenGlContext];
               theIsAlphaSprite: bool): Handle[OpenGlPointSprite] {.noSideEffect,
    importcpp: "SpriteRes", header: "OpenGl_Aspects.hxx".}
proc render*(this: OpenGlAspects; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Aspects.hxx".}
proc release*(this: var OpenGlAspects; theContext: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Aspects.hxx".}
proc synchronizeAspects*(this: var OpenGlAspects) {.importcpp: "SynchronizeAspects",
    header: "OpenGl_Aspects.hxx".}
proc dumpJson*(this: OpenGlAspects; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "OpenGl_Aspects.hxx".}

























