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

discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_TextureSet"
discard "forward decl of OpenGl_PointSprite"
type
  OpenGlAspectsTextureSet* {.importcpp: "OpenGl_AspectsTextureSet",
                            header: "OpenGl_AspectsTextureSet.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Build
                                                                                 ## texture
                                                                                 ## resource.


proc newOpenGlAspectsTextureSet*(): OpenGlAspectsTextureSet {.cdecl, constructor,
    importcpp: "OpenGl_AspectsTextureSet(@)", dynlib: tkkxbase.}
proc isReady*(this: OpenGlAspectsTextureSet): bool {.noSideEffect, cdecl,
    importcpp: "IsReady", dynlib: tkkxbase.}
proc invalidate*(this: var OpenGlAspectsTextureSet) {.cdecl, importcpp: "Invalidate",
    dynlib: tkkxbase.}
proc textureSet*(this: var OpenGlAspectsTextureSet; theCtx: Handle[OpenGlContext];
                theAspect: Handle[Graphic3dAspects];
                theSprite: Handle[OpenGlPointSprite];
                theSpriteA: Handle[OpenGlPointSprite]; theToHighlight: bool): Handle[
    OpenGlTextureSet] {.cdecl, importcpp: "TextureSet", dynlib: tkkxbase.}
proc updateRediness*(this: var OpenGlAspectsTextureSet;
                    theAspect: Handle[Graphic3dAspects]) {.cdecl,
    importcpp: "UpdateRediness", dynlib: tkkxbase.}
proc release*(this: var OpenGlAspectsTextureSet; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}