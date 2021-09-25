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

## ! Standard texture units combination bits.

type
  Graphic3dTextureSetBits* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TextureSetBits",
                            header: "Graphic3d_TextureSetBits.hxx".} = enum
    Graphic3dTextureSetBitsNONE = 0, Graphic3dTextureSetBitsBaseColor = cast[cuint]((
        1 shl int(graphic3dTextureUnitBaseColor))), Graphic3dTextureSetBitsEmissive = cast[cuint]((
        1 shl int(graphic3dTextureUnitEmissive))), Graphic3dTextureSetBitsOcclusion = cast[cuint]((
        1 shl int(graphic3dTextureUnitOcclusion))), Graphic3dTextureSetBitsNormal = cast[cuint]((
        1 shl int(graphic3dTextureUnitNormal))), Graphic3dTextureSetBitsMetallicRoughness = cast[cuint]((
        1 shl int(graphic3dTextureUnitMetallicRoughness)))


