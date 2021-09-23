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

import
  ../Graphic3d/Graphic3d_BufferType, V3d_StereoDumpOptions

## ! The structure defines options for image dump functionality.

type
  V3d_ImageDumpOptions* {.importcpp: "V3d_ImageDumpOptions",
                         header: "V3d_ImageDumpOptions.hxx", bycopy.} = object ## !
                                                                          ## Default
                                                                          ## constructor.
    Width* {.importc: "Width".}: Standard_Integer ## !< width  of image dump to allocate an image, 0 by default (meaning that image should be already allocated)
    Height* {.importc: "Height".}: Standard_Integer ## !< height of image dump to allocate an image, 0 by default (meaning that image should be already allocated)
    BufferType* {.importc: "BufferType".}: Graphic3d_BufferType ## !< which buffer to dump (color / depth), Graphic3d_BT_RGB by default
    StereoOptions* {.importc: "StereoOptions".}: V3d_StereoDumpOptions ## !< dumping stereoscopic camera, V3d_SDO_MONO by default (middle-point monographic projection)
    TileSize* {.importc: "TileSize".}: Standard_Integer ## !< the view dimension limited for tiled dump, 0 by default (automatic tiling depending on hardware capabilities)
    ToAdjustAspect* {.importc: "ToAdjustAspect".}: Standard_Boolean ## !< flag to override active view aspect ratio by (Width / Height) defined for image dump (TRUE by default)


proc constructV3d_ImageDumpOptions*(): V3d_ImageDumpOptions {.constructor,
    importcpp: "V3d_ImageDumpOptions(@)", header: "V3d_ImageDumpOptions.hxx".}