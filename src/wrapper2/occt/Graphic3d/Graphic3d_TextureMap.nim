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

import
  Graphic3d_TextureRoot, Graphic3d_TypeOfTexture,
  Graphic3d_LevelOfTextureAnisotropy

discard "forward decl of TCollection_AsciiString"
type
  Graphic3d_TextureMap* {.importcpp: "Graphic3d_TextureMap",
                         header: "Graphic3d_TextureMap.hxx", bycopy.} = object of Graphic3d_TextureRoot ##
                                                                                                 ## !
                                                                                                 ## enable
                                                                                                 ## texture
                                                                                                 ## smoothing

  Graphic3d_TextureMapbase_type* = Graphic3d_TextureRoot

proc get_type_name*(): cstring {.importcpp: "Graphic3d_TextureMap::get_type_name(@)",
                              header: "Graphic3d_TextureMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_TextureMap::get_type_descriptor(@)",
    header: "Graphic3d_TextureMap.hxx".}
proc DynamicType*(this: Graphic3d_TextureMap): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_TextureMap.hxx".}
proc EnableSmooth*(this: var Graphic3d_TextureMap) {.importcpp: "EnableSmooth",
    header: "Graphic3d_TextureMap.hxx".}
proc IsSmoothed*(this: Graphic3d_TextureMap): Standard_Boolean {.noSideEffect,
    importcpp: "IsSmoothed", header: "Graphic3d_TextureMap.hxx".}
proc DisableSmooth*(this: var Graphic3d_TextureMap) {.importcpp: "DisableSmooth",
    header: "Graphic3d_TextureMap.hxx".}
proc EnableModulate*(this: var Graphic3d_TextureMap) {.importcpp: "EnableModulate",
    header: "Graphic3d_TextureMap.hxx".}
proc DisableModulate*(this: var Graphic3d_TextureMap) {.
    importcpp: "DisableModulate", header: "Graphic3d_TextureMap.hxx".}
proc IsModulate*(this: Graphic3d_TextureMap): Standard_Boolean {.noSideEffect,
    importcpp: "IsModulate", header: "Graphic3d_TextureMap.hxx".}
proc EnableRepeat*(this: var Graphic3d_TextureMap) {.importcpp: "EnableRepeat",
    header: "Graphic3d_TextureMap.hxx".}
proc DisableRepeat*(this: var Graphic3d_TextureMap) {.importcpp: "DisableRepeat",
    header: "Graphic3d_TextureMap.hxx".}
proc IsRepeat*(this: Graphic3d_TextureMap): Standard_Boolean {.noSideEffect,
    importcpp: "IsRepeat", header: "Graphic3d_TextureMap.hxx".}
proc AnisoFilter*(this: Graphic3d_TextureMap): Graphic3d_LevelOfTextureAnisotropy {.
    noSideEffect, importcpp: "AnisoFilter", header: "Graphic3d_TextureMap.hxx".}
proc SetAnisoFilter*(this: var Graphic3d_TextureMap;
                    theLevel: Graphic3d_LevelOfTextureAnisotropy) {.
    importcpp: "SetAnisoFilter", header: "Graphic3d_TextureMap.hxx".}
discard "forward decl of Graphic3d_TextureMap"
type
  Handle_Graphic3d_TextureMap* = handle[Graphic3d_TextureMap]
