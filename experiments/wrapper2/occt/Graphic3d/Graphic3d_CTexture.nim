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
  Graphic3d_TextureMap

type
  Graphic3d_CTexture* {.importcpp: "Graphic3d_CTexture",
                       header: "Graphic3d_CTexture.hxx", bycopy.} = object
    TextureMap* {.importc: "TextureMap".}: handle[Graphic3d_TextureMap] ## !< handle to texture
    doTextureMap* {.importc: "doTextureMap".}: cint ## !< flag indicates to use texture or not


proc constructGraphic3d_CTexture*(): Graphic3d_CTexture {.constructor,
    importcpp: "Graphic3d_CTexture(@)", header: "Graphic3d_CTexture.hxx".}