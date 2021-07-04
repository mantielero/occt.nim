##  Created on: 2012-07-18
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  ../Standard/Standard

## ! POD structure for packed RGB color value (3 bytes)

type
  Image_ColorRGB* {.importcpp: "Image_ColorRGB", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Component
                                                                                      ## type.
                                                                                      ##
                                                                                      ## access
                                                                                      ## methods
                                                                                      ##
                                                                                      ## !
                                                                                      ## Alias
                                                                                      ## to
                                                                                      ## 1st
                                                                                      ## component
                                                                                      ## (red
                                                                                      ## intensity).
    v* {.importc: "v".}: array[3, Standard_Byte]

  Image_ColorRGBComponentType_t* = Standard_Byte

proc Length*(): Standard_Integer {.importcpp: "Image_ColorRGB::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorRGB): Standard_Byte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorRGB): Standard_Byte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorRGB): Standard_Byte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorRGB): var Standard_Byte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorRGB): var Standard_Byte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorRGB): var Standard_Byte {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed RGB color value (4 bytes with extra byte for alignment)

type
  Image_ColorRGB32* {.importcpp: "Image_ColorRGB32", header: "Image_Color.hxx",
                     bycopy.} = object ## ! Component type.
    v* {.importc: "v".}: array[4, Standard_Byte]

  Image_ColorRGB32ComponentType_t* = Standard_Byte

proc Length*(): Standard_Integer {.importcpp: "Image_ColorRGB32::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorRGB32): Standard_Byte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorRGB32): Standard_Byte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorRGB32): Standard_Byte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a_*(this: Image_ColorRGB32): Standard_Byte {.noSideEffect, importcpp: "a_",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorRGB32): var Standard_Byte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorRGB32): var Standard_Byte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorRGB32): var Standard_Byte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a_*(this: var Image_ColorRGB32): var Standard_Byte {.importcpp: "a_",
    header: "Image_Color.hxx".}
## ! POD structure for packed RGBA color value (4 bytes)

type
  Image_ColorRGBA* {.importcpp: "Image_ColorRGBA", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Component
                                                                                        ## type.
    v* {.importc: "v".}: array[4, Standard_Byte]

  Image_ColorRGBAComponentType_t* = Standard_Byte

proc Length*(): Standard_Integer {.importcpp: "Image_ColorRGBA::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorRGBA): Standard_Byte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorRGBA): Standard_Byte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorRGBA): Standard_Byte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: Image_ColorRGBA): Standard_Byte {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorRGBA): var Standard_Byte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorRGBA): var Standard_Byte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorRGBA): var Standard_Byte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var Image_ColorRGBA): var Standard_Byte {.importcpp: "a",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGR color value (3 bytes)

type
  Image_ColorBGR* {.importcpp: "Image_ColorBGR", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Component
                                                                                      ## type.
    v* {.importc: "v".}: array[3, Standard_Byte]

  Image_ColorBGRComponentType_t* = Standard_Byte

proc Length*(): Standard_Integer {.importcpp: "Image_ColorBGR::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorBGR): Standard_Byte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorBGR): Standard_Byte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorBGR): Standard_Byte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorBGR): var Standard_Byte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorBGR): var Standard_Byte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorBGR): var Standard_Byte {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGR color value (4 bytes with extra byte for alignment)

type
  Image_ColorBGR32* {.importcpp: "Image_ColorBGR32", header: "Image_Color.hxx",
                     bycopy.} = object ## ! Component type.
    v* {.importc: "v".}: array[4, Standard_Byte]

  Image_ColorBGR32ComponentType_t* = Standard_Byte

proc Length*(): Standard_Integer {.importcpp: "Image_ColorBGR32::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorBGR32): Standard_Byte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorBGR32): Standard_Byte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorBGR32): Standard_Byte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a_*(this: Image_ColorBGR32): Standard_Byte {.noSideEffect, importcpp: "a_",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorBGR32): var Standard_Byte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorBGR32): var Standard_Byte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorBGR32): var Standard_Byte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a_*(this: var Image_ColorBGR32): var Standard_Byte {.importcpp: "a_",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGRA color value (4 bytes)

type
  Image_ColorBGRA* {.importcpp: "Image_ColorBGRA", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Component
                                                                                        ## type.
    v* {.importc: "v".}: array[4, Standard_Byte]

  Image_ColorBGRAComponentType_t* = Standard_Byte

proc Length*(): Standard_Integer {.importcpp: "Image_ColorBGRA::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorBGRA): Standard_Byte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorBGRA): Standard_Byte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorBGRA): Standard_Byte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: Image_ColorBGRA): Standard_Byte {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorBGRA): var Standard_Byte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorBGRA): var Standard_Byte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorBGRA): var Standard_Byte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var Image_ColorBGRA): var Standard_Byte {.importcpp: "a",
    header: "Image_Color.hxx".}
## ! POD structure for packed float RG color value (2 floats)

type
  Image_ColorRGF* {.importcpp: "Image_ColorRGF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Component
                                                                                      ## type.
    v* {.importc: "v".}: array[2, Standard_ShortReal]

  Image_ColorRGFComponentType_t* = Standard_ShortReal

proc Length*(): Standard_Integer {.importcpp: "Image_ColorRGF::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorRGF): Standard_ShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorRGF): Standard_ShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorRGF): var Standard_ShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorRGF): var Standard_ShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
## ! POD structure for packed float RGB color value (3 floats)

type
  Image_ColorRGBF* {.importcpp: "Image_ColorRGBF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Component
                                                                                        ## type.
    v* {.importc: "v".}: array[3, Standard_ShortReal]

  Image_ColorRGBFComponentType_t* = Standard_ShortReal

proc Length*(): Standard_Integer {.importcpp: "Image_ColorRGBF::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorRGBF): Standard_ShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorRGBF): Standard_ShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorRGBF): Standard_ShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorRGBF): var Standard_ShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorRGBF): var Standard_ShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorRGBF): var Standard_ShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGR float color value (3 floats)

type
  Image_ColorBGRF* {.importcpp: "Image_ColorBGRF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Component
                                                                                        ## type.
    v* {.importc: "v".}: array[3, Standard_ShortReal]

  Image_ColorBGRFComponentType_t* = Standard_ShortReal

proc Length*(): Standard_Integer {.importcpp: "Image_ColorBGRF::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorBGRF): Standard_ShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorBGRF): Standard_ShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorBGRF): Standard_ShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorBGRF): var Standard_ShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorBGRF): var Standard_ShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorBGRF): var Standard_ShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed RGBA color value (4 floats)

type
  Image_ColorRGBAF* {.importcpp: "Image_ColorRGBAF", header: "Image_Color.hxx",
                     bycopy.} = object ## ! Component type.
    v* {.importc: "v".}: array[4, Standard_ShortReal]

  Image_ColorRGBAFComponentType_t* = Standard_ShortReal

proc Length*(): Standard_Integer {.importcpp: "Image_ColorRGBAF::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorRGBAF): Standard_ShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorRGBAF): Standard_ShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorRGBAF): Standard_ShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: Image_ColorRGBAF): Standard_ShortReal {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorRGBAF): var Standard_ShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorRGBAF): var Standard_ShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorRGBAF): var Standard_ShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var Image_ColorRGBAF): var Standard_ShortReal {.importcpp: "a",
    header: "Image_Color.hxx".}
## ! POD structure for packed float BGRA color value (4 floats)

type
  Image_ColorBGRAF* {.importcpp: "Image_ColorBGRAF", header: "Image_Color.hxx",
                     bycopy.} = object ## ! Component type.
    v* {.importc: "v".}: array[4, Standard_ShortReal]

  Image_ColorBGRAFComponentType_t* = Standard_ShortReal

proc Length*(): Standard_Integer {.importcpp: "Image_ColorBGRAF::Length(@)",
                                header: "Image_Color.hxx".}
proc r*(this: Image_ColorBGRAF): Standard_ShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: Image_ColorBGRAF): Standard_ShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: Image_ColorBGRAF): Standard_ShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: Image_ColorBGRAF): Standard_ShortReal {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var Image_ColorBGRAF): var Standard_ShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var Image_ColorBGRAF): var Standard_ShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var Image_ColorBGRAF): var Standard_ShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var Image_ColorBGRAF): var Standard_ShortReal {.importcpp: "a",
    header: "Image_Color.hxx".}