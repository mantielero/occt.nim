##  Created on: 2013-09-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Type of the shader object.

type
  Graphic3dTypeOfShaderObject* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfShaderObject",
                                header: "Graphic3d_TypeOfShaderObject.hxx".} = enum ##  rendering shaders
    Graphic3dTOS_VERTEX = 0x01, ## !< vertex shader object, mandatory
    Graphic3dTOS_TESS_CONTROL = 0x02, ## !< tessellation control shader object, optional
    Graphic3dTOS_TESS_EVALUATION = 0x04, ## !< tessellation evaluation shader object, optional
    Graphic3dTOS_GEOMETRY = 0x08, ## !< geometry shader object, optional
    Graphic3dTOS_FRAGMENT = 0x10, ## !< fragment shader object, mandatory
                               ##  general-purpose compute shader
    Graphic3dTOS_COMPUTE = 0x20

