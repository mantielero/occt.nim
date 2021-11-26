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

## ! POD structure for packed RGB color value (3 bytes)

type
  ImageColorRGB* {.importcpp: "Image_ColorRGB", header: "Image_Color.hxx", bycopy.} = object ##
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
    v* {.importc: "v".}: array[3, StandardByte]

  ImageColorRGBComponentTypeT* = StandardByte

proc length*(): cint {.importcpp: "Image_ColorRGB::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorRGB): StandardByte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorRGB): StandardByte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorRGB): StandardByte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorRGB): var StandardByte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorRGB): var StandardByte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorRGB): var StandardByte {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed RGB color value (4 bytes with extra byte for alignment)

type
  ImageColorRGB32* {.importcpp: "Image_ColorRGB32", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Component
                                                                                         ## type.
    v* {.importc: "v".}: array[4, StandardByte]

  ImageColorRGB32ComponentTypeT* = StandardByte

proc length*(): cint {.importcpp: "Image_ColorRGB32::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorRGB32): StandardByte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorRGB32): StandardByte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorRGB32): StandardByte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: ImageColorRGB32): StandardByte {.noSideEffect, importcpp: "a_",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorRGB32): var StandardByte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorRGB32): var StandardByte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorRGB32): var StandardByte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var ImageColorRGB32): var StandardByte {.importcpp: "a_",
    header: "Image_Color.hxx".}
## ! POD structure for packed RGBA color value (4 bytes)

type
  ImageColorRGBA* {.importcpp: "Image_ColorRGBA", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Component
                                                                                       ## type.
    v* {.importc: "v".}: array[4, StandardByte]

  ImageColorRGBAComponentTypeT* = StandardByte

proc length*(): cint {.importcpp: "Image_ColorRGBA::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorRGBA): StandardByte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorRGBA): StandardByte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorRGBA): StandardByte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: ImageColorRGBA): StandardByte {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorRGBA): var StandardByte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorRGBA): var StandardByte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorRGBA): var StandardByte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var ImageColorRGBA): var StandardByte {.importcpp: "a",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGR color value (3 bytes)

type
  ImageColorBGR* {.importcpp: "Image_ColorBGR", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Component
                                                                                     ## type.
    v* {.importc: "v".}: array[3, StandardByte]

  ImageColorBGRComponentTypeT* = StandardByte

proc length*(): cint {.importcpp: "Image_ColorBGR::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorBGR): StandardByte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorBGR): StandardByte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorBGR): StandardByte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorBGR): var StandardByte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorBGR): var StandardByte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorBGR): var StandardByte {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGR color value (4 bytes with extra byte for alignment)

type
  ImageColorBGR32* {.importcpp: "Image_ColorBGR32", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Component
                                                                                         ## type.
    v* {.importc: "v".}: array[4, StandardByte]

  ImageColorBGR32ComponentTypeT* = StandardByte

proc length*(): cint {.importcpp: "Image_ColorBGR32::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorBGR32): StandardByte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorBGR32): StandardByte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorBGR32): StandardByte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: ImageColorBGR32): StandardByte {.noSideEffect, importcpp: "a_",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorBGR32): var StandardByte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorBGR32): var StandardByte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorBGR32): var StandardByte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var ImageColorBGR32): var StandardByte {.importcpp: "a_",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGRA color value (4 bytes)

type
  ImageColorBGRA* {.importcpp: "Image_ColorBGRA", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Component
                                                                                       ## type.
    v* {.importc: "v".}: array[4, StandardByte]

  ImageColorBGRAComponentTypeT* = StandardByte

proc length*(): cint {.importcpp: "Image_ColorBGRA::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorBGRA): StandardByte {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorBGRA): StandardByte {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorBGRA): StandardByte {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: ImageColorBGRA): StandardByte {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorBGRA): var StandardByte {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorBGRA): var StandardByte {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorBGRA): var StandardByte {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var ImageColorBGRA): var StandardByte {.importcpp: "a",
    header: "Image_Color.hxx".}
## ! POD structure for packed float RG color value (2 floats)

type
  ImageColorRGF* {.importcpp: "Image_ColorRGF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Component
                                                                                     ## type.
    v* {.importc: "v".}: array[2, StandardShortReal]

  ImageColorRGFComponentTypeT* = StandardShortReal

proc length*(): cint {.importcpp: "Image_ColorRGF::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorRGF): StandardShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorRGF): StandardShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorRGF): var StandardShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorRGF): var StandardShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
## ! POD structure for packed float RGB color value (3 floats)

type
  ImageColorRGBF* {.importcpp: "Image_ColorRGBF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Component
                                                                                       ## type.
    v* {.importc: "v".}: array[3, StandardShortReal]

  ImageColorRGBFComponentTypeT* = StandardShortReal

proc length*(): cint {.importcpp: "Image_ColorRGBF::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorRGBF): StandardShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorRGBF): StandardShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorRGBF): StandardShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorRGBF): var StandardShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorRGBF): var StandardShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorRGBF): var StandardShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed BGR float color value (3 floats)

type
  ImageColorBGRF* {.importcpp: "Image_ColorBGRF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Component
                                                                                       ## type.
    v* {.importc: "v".}: array[3, StandardShortReal]

  ImageColorBGRFComponentTypeT* = StandardShortReal

proc length*(): cint {.importcpp: "Image_ColorBGRF::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorBGRF): StandardShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorBGRF): StandardShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorBGRF): StandardShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorBGRF): var StandardShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorBGRF): var StandardShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorBGRF): var StandardShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
## ! POD structure for packed RGBA color value (4 floats)

type
  ImageColorRGBAF* {.importcpp: "Image_ColorRGBAF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Component
                                                                                         ## type.
    v* {.importc: "v".}: array[4, StandardShortReal]

  ImageColorRGBAFComponentTypeT* = StandardShortReal

proc length*(): cint {.importcpp: "Image_ColorRGBAF::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorRGBAF): StandardShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorRGBAF): StandardShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorRGBAF): StandardShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: ImageColorRGBAF): StandardShortReal {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorRGBAF): var StandardShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorRGBAF): var StandardShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorRGBAF): var StandardShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var ImageColorRGBAF): var StandardShortReal {.importcpp: "a",
    header: "Image_Color.hxx".}
## ! POD structure for packed float BGRA color value (4 floats)

type
  ImageColorBGRAF* {.importcpp: "Image_ColorBGRAF", header: "Image_Color.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Component
                                                                                         ## type.
    v* {.importc: "v".}: array[4, StandardShortReal]

  ImageColorBGRAFComponentTypeT* = StandardShortReal

proc length*(): cint {.importcpp: "Image_ColorBGRAF::Length(@)",
                    header: "Image_Color.hxx".}
proc r*(this: ImageColorBGRAF): StandardShortReal {.noSideEffect, importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: ImageColorBGRAF): StandardShortReal {.noSideEffect, importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: ImageColorBGRAF): StandardShortReal {.noSideEffect, importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: ImageColorBGRAF): StandardShortReal {.noSideEffect, importcpp: "a",
    header: "Image_Color.hxx".}
proc r*(this: var ImageColorBGRAF): var StandardShortReal {.importcpp: "r",
    header: "Image_Color.hxx".}
proc g*(this: var ImageColorBGRAF): var StandardShortReal {.importcpp: "g",
    header: "Image_Color.hxx".}
proc b*(this: var ImageColorBGRAF): var StandardShortReal {.importcpp: "b",
    header: "Image_Color.hxx".}
proc a*(this: var ImageColorBGRAF): var StandardShortReal {.importcpp: "a",
    header: "Image_Color.hxx".}

























