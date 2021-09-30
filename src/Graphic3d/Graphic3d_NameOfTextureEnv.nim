##  Created on: 1993-03-31
##  Created by: NW,JPB,CAL
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! Types of standard textures.

type
  Graphic3dNameOfTextureEnv* {.size: sizeof(cint),
                              importcpp: "Graphic3d_NameOfTextureEnv",
                              header: "Graphic3d_NameOfTextureEnv.hxx".} = enum
    Graphic3dNOT_ENV_CLOUDS, Graphic3dNOT_ENV_CV, Graphic3dNOT_ENV_MEDIT,
    Graphic3dNOT_ENV_PEARL, Graphic3dNOT_ENV_SKY1, Graphic3dNOT_ENV_SKY2,
    Graphic3dNOT_ENV_LINES, Graphic3dNOT_ENV_ROAD, Graphic3dNOT_ENV_UNKNOWN



























