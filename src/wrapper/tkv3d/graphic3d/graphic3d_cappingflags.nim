##  Created on: 2016-08-04
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Enumeration of capping flags.

type
  Graphic3dCappingFlags* {.size: sizeof(cint), importcpp: "Graphic3d_CappingFlags",
                          header: "Graphic3d_CappingFlags.hxx".} = enum
    graphic3dCappingFlagsNone = 0x0000, ## !< no flags
    graphic3dCappingFlagsObjectMaterial = 0x0001, ## !< use object material
    graphic3dCappingFlagsObjectTexture = 0x0002, ## !< use object texture
    graphic3dCappingFlagsObjectShader = 0x0008 ## !< use object GLSL program
const
  graphic3dCappingFlagsObjectAspect = (graphic3dCappingFlagsObjectMaterial.int or
        graphic3dCappingFlagsObjectTexture.int or graphic3dCappingFlagsObjectShader.int).Graphic3dCappingFlags

