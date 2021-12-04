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
  graphic3dTextureSetBits* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TextureSetBits",
                            header: "Graphic3d_TextureSetBits.hxx".} = enum
    graphic3dTextureSetBitsNONE = 0, 
    graphic3dTextureSetBitsBaseColor = cast[cuint]((1 shl 1))  # int(graphic3dTextureUnitBaseColor))), 
    graphic3dTextureSetBitsEmissive = cast[cuint]((1 shl 2))   #int(graphic3dTextureUnitEmissive))), 
    graphic3dTextureSetBitsOcclusion = cast[cuint]((1 shl 3))  #int(graphic3dTextureUnitOcclusion))), 
    graphic3dTextureSetBitsNormal = cast[cuint]((1 shl 4))     #int(graphic3dTextureUnitNormal))), 
    graphic3dTextureSetBitsMetallicRoughness = cast[cuint]((1 shl 5)) #int(graphic3dTextureUnitMetallicRoughness)))

