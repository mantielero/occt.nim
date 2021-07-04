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
  ../Graphic3d/Graphic3d_Aspects, ../Graphic3d/Graphic3d_TextureMap,
  ../Graphic3d/Graphic3d_TextureSet

discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_TextureSet"
discard "forward decl of OpenGl_PointSprite"
type
  OpenGl_AspectsTextureSet* {.importcpp: "OpenGl_AspectsTextureSet",
                             header: "OpenGl_AspectsTextureSet.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Build
                                                                                  ## texture
                                                                                  ## resource.


proc constructOpenGl_AspectsTextureSet*(): OpenGl_AspectsTextureSet {.constructor,
    importcpp: "OpenGl_AspectsTextureSet(@)",
    header: "OpenGl_AspectsTextureSet.hxx".}
proc IsReady*(this: OpenGl_AspectsTextureSet): bool {.noSideEffect,
    importcpp: "IsReady", header: "OpenGl_AspectsTextureSet.hxx".}
proc Invalidate*(this: var OpenGl_AspectsTextureSet) {.importcpp: "Invalidate",
    header: "OpenGl_AspectsTextureSet.hxx".}
proc TextureSet*(this: var OpenGl_AspectsTextureSet; theCtx: handle[OpenGl_Context];
                theAspect: handle[Graphic3d_Aspects];
                theSprite: handle[OpenGl_PointSprite];
                theSpriteA: handle[OpenGl_PointSprite]; theToHighlight: bool): handle[
    OpenGl_TextureSet] {.importcpp: "TextureSet",
                        header: "OpenGl_AspectsTextureSet.hxx".}
proc UpdateRediness*(this: var OpenGl_AspectsTextureSet;
                    theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "UpdateRediness", header: "OpenGl_AspectsTextureSet.hxx".}
proc Release*(this: var OpenGl_AspectsTextureSet; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_AspectsTextureSet.hxx".}