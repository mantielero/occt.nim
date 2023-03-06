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



proc newOpenGlAspectsTextureSet*(): OpenGlAspectsTextureSet {.cdecl, constructor,
    importcpp: "OpenGl_AspectsTextureSet(@)", header: "OpenGl_AspectsTectureSet.hxx".}
proc isReady*(this: OpenGlAspectsTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsReady", header: "OpenGl_AspectsTectureSet.hxx".}
proc invalidate*(this: var OpenGlAspectsTextureSet) {.cdecl, importcpp: "Invalidate",
    header: "OpenGl_AspectsTectureSet.hxx".}
proc textureSet*(this: var OpenGlAspectsTextureSet; theCtx: Handle[OpenGlContext];
                theAspect: Handle[Graphic3dAspects];
                theSprite: Handle[OpenGlPointSprite];
                theSpriteA: Handle[OpenGlPointSprite]; theToHighlight: bool): Handle[
    OpenGlTextureSet] {.cdecl, importcpp: "TextureSet", header: "OpenGl_AspectsTectureSet.hxx".}
proc updateRediness*(this: var OpenGlAspectsTextureSet;
                    theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "UpdateRediness", header: "OpenGl_AspectsTectureSet.hxx".}
proc release*(this: var OpenGlAspectsTextureSet; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_AspectsTectureSet.hxx".}

