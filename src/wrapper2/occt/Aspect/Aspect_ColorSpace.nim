##  Copyright (c) 2020 OPEN CASCADE SAS
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
  Aspect_GraphicsLibrary

## ! Texture color spaces accepted by XR composer.

type
  Aspect_ColorSpace* {.size: sizeof(cint), importcpp: "Aspect_ColorSpace",
                      header: "Aspect_ColorSpace.hxx".} = enum
    Aspect_ColorSpace_sRGB = 0, ## !< non-linear sRGB color space
    Aspect_ColorSpace_Linear = 1 ## !< linear RGB color space

