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
  Graphic3dNameOfTexture2D* {.size: sizeof(cint),
                             importcpp: "Graphic3d_NameOfTexture2D",
                             header: "Graphic3d_NameOfTexture2D.hxx".} = enum
    Graphic3dNOT_2D_MATRA, Graphic3dNOT_2D_ALIENSKIN, Graphic3dNOT_2D_BLUE_ROCK,
    Graphic3dNOT_2D_BLUEWHITE_PAPER, Graphic3dNOT_2D_BRUSHED,
    Graphic3dNOT_2D_BUBBLES, Graphic3dNOT_2D_BUMP, Graphic3dNOT_2D_CAST,
    Graphic3dNOT_2D_CHIPBD, Graphic3dNOT_2D_CLOUDS, Graphic3dNOT_2D_FLESH,
    Graphic3dNOT_2D_FLOOR, Graphic3dNOT_2D_GALVNISD, Graphic3dNOT_2D_GRASS,
    Graphic3dNOT_2D_ALUMINUM, Graphic3dNOT_2D_ROCK, Graphic3dNOT_2D_KNURL,
    Graphic3dNOT_2D_MAPLE, Graphic3dNOT_2D_MARBLE, Graphic3dNOT_2D_MOTTLED,
    Graphic3dNOT_2D_RAIN, Graphic3dNOT_2D_CHESS, Graphic3dNOT_2D_UNKNOWN

