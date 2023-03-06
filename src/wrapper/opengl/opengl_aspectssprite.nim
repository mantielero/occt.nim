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



proc newOpenGlAspectsSprite*(): OpenGlAspectsSprite {.cdecl, constructor,
    importcpp: "OpenGl_AspectsSprite(@)", header: "OpenGl_AspectsSprite.hxx".}
proc markerSize*(this: OpenGlAspectsSprite): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "MarkerSize", header: "OpenGl_AspectsSprite.hxx".}
proc isReady*(this: OpenGlAspectsSprite): bool {.noSideEffect, cdecl,
    importcpp: "IsReady", header: "OpenGl_AspectsSprite.hxx".}
proc invalidate*(this: var OpenGlAspectsSprite) {.cdecl, importcpp: "Invalidate",
    header: "OpenGl_AspectsSprite.hxx".}
proc hasPointSprite*(this: var OpenGlAspectsSprite; theCtx: Handle[OpenGlContext];
                    theAspects: Handle[Graphic3dAspects]): bool {.cdecl,
    importcpp: "HasPointSprite", header: "OpenGl_AspectsSprite.hxx".}
proc isDisplayListSprite*(this: var OpenGlAspectsSprite;
                         theCtx: Handle[OpenGlContext];
                         theAspects: Handle[Graphic3dAspects]): bool {.cdecl,
    importcpp: "IsDisplayListSprite", header: "OpenGl_AspectsSprite.hxx".}
proc sprite*(this: var OpenGlAspectsSprite; theCtx: Handle[OpenGlContext];
            theAspects: Handle[Graphic3dAspects]; theIsAlphaSprite: bool): Handle[
    OpenGlPointSprite] {.cdecl, importcpp: "Sprite", header: "OpenGl_AspectsSprite.hxx".}
proc updateRediness*(this: var OpenGlAspectsSprite;
                    theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "UpdateRediness", header: "OpenGl_AspectsSprite.hxx".}
proc release*(this: var OpenGlAspectsSprite; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_AspectsSprite.hxx".}

