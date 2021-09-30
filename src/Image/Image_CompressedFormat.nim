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

## ! List of compressed pixel formats natively supported by various graphics hardware (e.g. for efficient decoding on-the-fly).
## ! It is defined as extension of Image_Format.

type
  ImageCompressedFormat* {.size: sizeof(cint), importcpp: "Image_CompressedFormat",
                          header: "Image_CompressedFormat.hxx".} = enum
    ImageCompressedFormatUNKNOWN = imageFormatUNKNOWN,
    ImageCompressedFormatRGB_S3TC_DXT1 = imageFormatNB,
    ImageCompressedFormatRGBA_S3TC_DXT1, ImageCompressedFormatRGBA_S3TC_DXT3,
    ImageCompressedFormatRGBA_S3TC_DXT5


const
  ImageCompressedFormatNB* = imageCompressedFormatRGBA_S3TC_DXT5 + 1


























