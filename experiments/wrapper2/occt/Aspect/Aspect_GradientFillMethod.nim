##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## ! Defines the fill methods to
## ! write gradient background in a window.

type
  Aspect_GradientFillMethod* {.size: sizeof(cint),
                              importcpp: "Aspect_GradientFillMethod",
                              header: "Aspect_GradientFillMethod.hxx".} = enum
    Aspect_GFM_NONE, Aspect_GFM_HOR, Aspect_GFM_VER, Aspect_GFM_DIAG1,
    Aspect_GFM_DIAG2, Aspect_GFM_CORNER1, Aspect_GFM_CORNER2, Aspect_GFM_CORNER3,
    Aspect_GFM_CORNER4

