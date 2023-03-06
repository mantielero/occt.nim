import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../selectmgr/selectmgr_types




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





proc newGraphic3dTextureEnv*(theFileName: TCollectionAsciiString): Graphic3dTextureEnv {.
    cdecl, constructor, importcpp: "Graphic3d_TextureEnv(@)", header: "Graphic3d_TextureEnv.hxx".}
proc newGraphic3dTextureEnv*(theName: Graphic3dNameOfTextureEnv): Graphic3dTextureEnv {.
    cdecl, constructor, importcpp: "Graphic3d_TextureEnv(@)", header: "Graphic3d_TextureEnv.hxx".}
proc newGraphic3dTextureEnv*(thePixMap: Handle[ImagePixMap]): Graphic3dTextureEnv {.
    cdecl, constructor, importcpp: "Graphic3d_TextureEnv(@)", header: "Graphic3d_TextureEnv.hxx".}
proc name*(this: Graphic3dTextureEnv): Graphic3dNameOfTextureEnv {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_TextureEnv.hxx".}
proc textureEnvNumberOfTextures*(): cint {.cdecl, importcpp: "Graphic3d_TextureEnv::NumberOfTextures(@)",
                              header: "Graphic3d_TextureEnv.hxx".}
proc textureEnvTextureName*(theRank: cint): TCollectionAsciiString {.cdecl,
    importcpp: "Graphic3d_TextureEnv::TextureName(@)", header: "Graphic3d_TextureEnv.hxx".}


