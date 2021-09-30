##  Copyright (c) 2012-2017 OPEN CASCADE SAS
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

## ! This enumeration defines packed image plane formats

type
  ImageFormat* {.size: sizeof(cint), importcpp: "Image_Format",
                header: "Image_Format.hxx".} = enum
    ImageFormatUNKNOWN = 0,     ## !< unsupported or unknown format
    ImageFormatGray = 1,        ## !< 1 byte per pixel, intensity of the color
    ImageFormatAlpha,         ## !< 1 byte per pixel, transparency
    ImageFormatRGB,           ## !< 3 bytes packed RGB image plane
    ImageFormatBGR,           ## !< same as RGB but with different components order
    ImageFormatRGB32,         ## !< 4 bytes packed RGB image plane (1 extra byte for alignment, may have undefined value)
    ImageFormatBGR32,         ## !< same as RGB but with different components order
    ImageFormatRGBA,          ## !< 4 bytes packed RGBA image plane
    ImageFormatBGRA,          ## !< same as RGBA but with different components order
    ImageFormatGrayF,         ## !< 1 float  (4-bytes) per pixel (1-component plane), intensity of the color
    ImageFormatAlphaF,        ## !< 1 float  (4-bytes) per pixel (1-component plane), transparency
    ImageFormatRGF,           ## !< 2 floats (8-bytes) RG image plane
    ImageFormatRGBF,          ## !< 3 floats (12-bytes) RGB image plane
    ImageFormatBGRF,          ## !< same as RGBF but with different components order
    ImageFormatRGBAF,         ## !< 4 floats (16-bytes) RGBA image plane
    ImageFormatBGRAF          ## !< same as RGBAF but with different components order


const
  ImageFormatNB* = imageFormatBGRAF + 1


























