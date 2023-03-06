import ../standard/standard_types
import ../graphic3d/graphic3d_types
import opengl_types


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



proc newOpenGlAspects*(): OpenGlAspects {.cdecl, constructor,
                                       importcpp: "OpenGl_Aspects(@)",
                                       header: "OpenGl_Aspects.hxx".}
proc newOpenGlAspects*(theAspect: Handle[Graphic3dAspects]): OpenGlAspects {.cdecl,
    constructor, importcpp: "OpenGl_Aspects(@)", header: "OpenGl_Element.hxx".}
proc aspect*(this: OpenGlAspects): Handle[Graphic3dAspects] {.noSideEffect, cdecl,
    importcpp: "Aspect", header: "OpenGl_Element.hxx".}
proc setAspect*(this: var OpenGlAspects; theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "SetAspect", header: "OpenGl_Element.hxx".}
proc shadingModel*(this: OpenGlAspects): Graphic3dTypeOfShadingModel {.noSideEffect,
    cdecl, importcpp: "ShadingModel", header: "OpenGl_Element.hxx".}
proc setNoLighting*(this: var OpenGlAspects) {.cdecl, importcpp: "SetNoLighting",
    header: "OpenGl_Element.hxx".}
proc textureSet*(this: OpenGlAspects; theCtx: Handle[OpenGlContext];
                theToHighlight: bool = false): Handle[OpenGlTextureSet] {.
    noSideEffect, cdecl, importcpp: "TextureSet", header: "OpenGl_Element.hxx".}
proc shaderProgramRes*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): Handle[
    OpenGlShaderProgram] {.noSideEffect, cdecl, importcpp: "ShaderProgramRes",
                          header: "OpenGl_Element.hxx".}
proc markerSize*(this: OpenGlAspects): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "MarkerSize", header: "OpenGl_Element.hxx".}
proc hasPointSprite*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): bool {.
    noSideEffect, cdecl, importcpp: "HasPointSprite", header: "OpenGl_Element.hxx".}
proc isDisplayListSprite*(this: OpenGlAspects; theCtx: Handle[OpenGlContext]): bool {.
    noSideEffect, cdecl, importcpp: "IsDisplayListSprite", header: "OpenGl_Element.hxx".}
proc spriteRes*(this: OpenGlAspects; theCtx: Handle[OpenGlContext];
               theIsAlphaSprite: bool): Handle[OpenGlPointSprite] {.noSideEffect,
    cdecl, importcpp: "SpriteRes", header: "OpenGl_Element.hxx".}
proc render*(this: OpenGlAspects; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, cdecl, importcpp: "Render", header: "OpenGl_Element.hxx".}
proc release*(this: var OpenGlAspects; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Element.hxx".}
proc synchronizeAspects*(this: var OpenGlAspects) {.cdecl,
    importcpp: "SynchronizeAspects", header: "OpenGl_Element.hxx".}
proc dumpJson*(this: OpenGlAspects; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Element.hxx".}

