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


proc newOpenGlAspects*(): OpenGlAspects {.cdecl, constructor,
                                       importcpp: "OpenGl_Aspects(@)",
                                       dynlib: tkkxbase.}
proc newOpenGlAspects*(theAspect: Handle[Graphic3dAspects]): OpenGlAspects {.cdecl,
    constructor, importcpp: "OpenGl_Aspects(@)", dynlib: tkkxbase.}
proc aspect*(this: OpenGlAspects): Handle[Graphic3dAspects] {.noSideEffect, cdecl,
    importcpp: "Aspect", dynlib: tkkxbase.}
proc setAspect*(this: var OpenGlAspects; theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "SetAspect", dynlib: tkkxbase.}
proc shadingModel*(this: OpenGlAspects): Graphic3dTypeOfShadingModel {.noSideEffect,
    cdecl, importcpp: "ShadingModel", dynlib: tkkxbase.}
proc setNoLighting*(this: var OpenGlAspects) {.cdecl, importcpp: "SetNoLighting",
    dynlib: tkkxbase.}
proc textureSet*(this: OpenGlAspects; theCtx: Handle[OpenGlContext];
                theToHighlight: bool = false): Handle[OpenGlTextureSet] {.
    noSideEffect, cdecl, importcpp: "TextureSet", dynlib: tkkxbase.}
proc shaderProgramRes*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): Handle[
    OpenGlShaderProgram] {.noSideEffect, cdecl, importcpp: "ShaderProgramRes",
                          dynlib: tkkxbase.}
proc markerSize*(this: OpenGlAspects): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "MarkerSize", dynlib: tkkxbase.}
proc hasPointSprite*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): bool {.
    noSideEffect, cdecl, importcpp: "HasPointSprite", dynlib: tkkxbase.}
proc isDisplayListSprite*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): bool {.
    noSideEffect, cdecl, importcpp: "IsDisplayListSprite", dynlib: tkkxbase.}
proc spriteRes*(this: OpenGlAspects; theCtx: Handle[OpenGlContext];
               theIsAlphaSprite: bool): Handle[OpenGlPointSprite] {.noSideEffect,
    cdecl, importcpp: "SpriteRes", dynlib: tkkxbase.}
proc render*(this: OpenGlAspects; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlAspects; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc synchronizeAspects*(this: var OpenGlAspects) {.cdecl,
    importcpp: "SynchronizeAspects", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlAspects; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}