import graphic3d_types

##  Created on: 1997-07-28
##  Created by: Pierre CHALAMET
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_AsciiString"


proc enableSmooth*(this: var Graphic3dTextureMap) {.cdecl, importcpp: "EnableSmooth",
    header: "Graphic3d_TextureMap.hxx".}
proc isSmoothed*(this: Graphic3dTextureMap): bool {.noSideEffect, cdecl,
    importcpp: "IsSmoothed", header: "Graphic3d_TextureMap.hxx".}
proc disableSmooth*(this: var Graphic3dTextureMap) {.cdecl,
    importcpp: "DisableSmooth", header: "Graphic3d_TextureMap.hxx".}
proc enableModulate*(this: var Graphic3dTextureMap) {.cdecl,
    importcpp: "EnableModulate", header: "Graphic3d_TextureMap.hxx".}
proc disableModulate*(this: var Graphic3dTextureMap) {.cdecl,
    importcpp: "DisableModulate", header: "Graphic3d_TextureMap.hxx".}
proc isModulate*(this: Graphic3dTextureMap): bool {.noSideEffect, cdecl,
    importcpp: "IsModulate", header: "Graphic3d_TextureMap.hxx".}
proc enableRepeat*(this: var Graphic3dTextureMap) {.cdecl, importcpp: "EnableRepeat",
    header: "Graphic3d_TextureMap.hxx".}
proc disableRepeat*(this: var Graphic3dTextureMap) {.cdecl,
    importcpp: "DisableRepeat", header: "Graphic3d_TextureMap.hxx".}
proc isRepeat*(this: Graphic3dTextureMap): bool {.noSideEffect, cdecl,
    importcpp: "IsRepeat", header: "Graphic3d_TextureMap.hxx".}
proc anisoFilter*(this: Graphic3dTextureMap): Graphic3dLevelOfTextureAnisotropy {.
    noSideEffect, cdecl, importcpp: "AnisoFilter", header: "Graphic3d_TextureMap.hxx".}
proc setAnisoFilter*(this: var Graphic3dTextureMap;
                    theLevel: Graphic3dLevelOfTextureAnisotropy) {.cdecl,
    importcpp: "SetAnisoFilter", header: "Graphic3d_TextureMap.hxx".}

