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
  ../Graphic3d/Graphic3d_Aspects, ../Graphic3d/Graphic3d_TextureMap

discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_PointSprite"
type
  OpenGl_AspectsSprite* {.importcpp: "OpenGl_AspectsSprite",
                         header: "OpenGl_AspectsSprite.hxx", bycopy.} = object ## ! Empty
                                                                          ## constructor.
                                                                          ## ! Build
                                                                          ## texture
                                                                          ## resources.


proc constructOpenGl_AspectsSprite*(): OpenGl_AspectsSprite {.constructor,
    importcpp: "OpenGl_AspectsSprite(@)", header: "OpenGl_AspectsSprite.hxx".}
proc MarkerSize*(this: OpenGl_AspectsSprite): Standard_ShortReal {.noSideEffect,
    importcpp: "MarkerSize", header: "OpenGl_AspectsSprite.hxx".}
proc IsReady*(this: OpenGl_AspectsSprite): bool {.noSideEffect, importcpp: "IsReady",
    header: "OpenGl_AspectsSprite.hxx".}
proc Invalidate*(this: var OpenGl_AspectsSprite) {.importcpp: "Invalidate",
    header: "OpenGl_AspectsSprite.hxx".}
proc HasPointSprite*(this: var OpenGl_AspectsSprite; theCtx: handle[OpenGl_Context];
                    theAspects: handle[Graphic3d_Aspects]): bool {.
    importcpp: "HasPointSprite", header: "OpenGl_AspectsSprite.hxx".}
proc IsDisplayListSprite*(this: var OpenGl_AspectsSprite;
                         theCtx: handle[OpenGl_Context];
                         theAspects: handle[Graphic3d_Aspects]): bool {.
    importcpp: "IsDisplayListSprite", header: "OpenGl_AspectsSprite.hxx".}
proc Sprite*(this: var OpenGl_AspectsSprite; theCtx: handle[OpenGl_Context];
            theAspects: handle[Graphic3d_Aspects]; theIsAlphaSprite: bool): handle[
    OpenGl_PointSprite] {.importcpp: "Sprite", header: "OpenGl_AspectsSprite.hxx".}
proc UpdateRediness*(this: var OpenGl_AspectsSprite;
                    theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "UpdateRediness", header: "OpenGl_AspectsSprite.hxx".}
proc Release*(this: var OpenGl_AspectsSprite; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_AspectsSprite.hxx".}