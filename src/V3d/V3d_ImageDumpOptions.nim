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

## ! The structure defines options for image dump functionality.

type
  V3dImageDumpOptions* {.importcpp: "V3d_ImageDumpOptions",
                        header: "V3d_ImageDumpOptions.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor.
    width* {.importc: "Width".}: cint ## !< width  of image dump to allocate an image, 0 by default (meaning that image should be already allocated)
    height* {.importc: "Height".}: cint ## !< height of image dump to allocate an image, 0 by default (meaning that image should be already allocated)
    bufferType* {.importc: "BufferType".}: Graphic3dBufferType ## !< which buffer to dump (color / depth), Graphic3d_BT_RGB by default
    stereoOptions* {.importc: "StereoOptions".}: V3dStereoDumpOptions ## !< dumping stereoscopic camera, V3d_SDO_MONO by default (middle-point monographic projection)
    tileSize* {.importc: "TileSize".}: cint ## !< the view dimension limited for tiled dump, 0 by default (automatic tiling depending on hardware capabilities)
    toAdjustAspect* {.importc: "ToAdjustAspect".}: bool ## !< flag to override active view aspect ratio by (Width / Height) defined for image dump (TRUE by default)


proc constructV3dImageDumpOptions*(): V3dImageDumpOptions {.constructor,
    importcpp: "V3d_ImageDumpOptions(@)", header: "V3d_ImageDumpOptions.hxx".}

























