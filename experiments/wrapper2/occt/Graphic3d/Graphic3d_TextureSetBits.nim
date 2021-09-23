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
  Graphic3d_TextureUnit

## ! Standard texture units combination bits.

type
  Graphic3d_TextureSetBits* {.size: sizeof(cint),
                             importcpp: "Graphic3d_TextureSetBits",
                             header: "Graphic3d_TextureSetBits.hxx".} = enum
    Graphic3d_TextureSetBits_NONE = 0, Graphic3d_TextureSetBits_BaseColor = cast[cuint]((
        1 shl int(Graphic3d_TextureUnit_BaseColor))), Graphic3d_TextureSetBits_Emissive = cast[cuint]((
        1 shl int(Graphic3d_TextureUnit_Emissive))), Graphic3d_TextureSetBits_Occlusion = cast[cuint]((
        1 shl int(Graphic3d_TextureUnit_Occlusion))), Graphic3d_TextureSetBits_Normal = cast[cuint]((
        1 shl int(Graphic3d_TextureUnit_Normal))), Graphic3d_TextureSetBits_MetallicRoughness = cast[cuint]((
        1 shl int(Graphic3d_TextureUnit_MetallicRoughness)))

