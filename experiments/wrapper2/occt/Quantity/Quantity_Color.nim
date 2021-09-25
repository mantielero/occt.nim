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

## ! This class allows the definition of an RGB color as triplet of 3 normalized floating point values (red, green, blue).
## !
## ! Although Quantity_Color can be technically used for pass-through storage of RGB triplet in any color space,
## ! other OCCT interfaces taking/returning Quantity_Color would expect them in linear space.
## ! Therefore, take a look into methods converting to and from non-linear sRGB color space, if needed;
## ! for instance, application usually providing color picking within 0..255 range in sRGB color space.

type
  QuantityColor* {.importcpp: "Quantity_Color", header: "Quantity_Color.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## Quantity_NOC_YELLOW
                                                                                        ## color
                                                                                        ## (for
                                                                                        ## historical
                                                                                        ## reasons).
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## color
                                                                                        ## from
                                                                                        ## Quantity_NameOfColor
                                                                                        ## enumeration
                                                                                        ## nearest
                                                                                        ## to
                                                                                        ## specified
                                                                                        ## RGB
                                                                                        ## values.
                                                                                        ##
                                                                                        ## !@name
                                                                                        ## Routines
                                                                                        ## converting
                                                                                        ## colors
                                                                                        ## between
                                                                                        ## different
                                                                                        ## encodings
                                                                                        ## and
                                                                                        ## color
                                                                                        ## spaces
                                                                                        ##
                                                                                        ## !
                                                                                        ## Parses
                                                                                        ## the
                                                                                        ## string
                                                                                        ## as
                                                                                        ## a
                                                                                        ## hex
                                                                                        ## color
                                                                                        ## (like
                                                                                        ## "#FF0"
                                                                                        ## for
                                                                                        ## short
                                                                                        ## sRGB
                                                                                        ## color,
                                                                                        ## or
                                                                                        ## "#FFFF00"
                                                                                        ## for
                                                                                        ## sRGB
                                                                                        ## color)
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theHexColorString
                                                                                        ## the
                                                                                        ## string
                                                                                        ## to
                                                                                        ## be
                                                                                        ## parsed
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theColor
                                                                                        ## a
                                                                                        ## color
                                                                                        ## that
                                                                                        ## is
                                                                                        ## a
                                                                                        ## result
                                                                                        ## of
                                                                                        ## parsing
                                                                                        ##
                                                                                        ## !
                                                                                        ## @return
                                                                                        ## true
                                                                                        ## if
                                                                                        ## parsing
                                                                                        ## was
                                                                                        ## successful,
                                                                                        ## or
                                                                                        ## false
                                                                                        ## otherwise
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## value
                                                                                        ## used
                                                                                        ## to
                                                                                        ## compare
                                                                                        ## two
                                                                                        ## colors
                                                                                        ## for
                                                                                        ## equality;
                                                                                        ## 0.0001
                                                                                        ## by
                                                                                        ## default.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## values
                                                                                        ## of
                                                                                        ## a
                                                                                        ## predefined
                                                                                        ## color
                                                                                        ## according
                                                                                        ## to
                                                                                        ## the
                                                                                        ## mode.


proc constructQuantityColor*(): QuantityColor {.constructor,
    importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc constructQuantityColor*(theName: QuantityNameOfColor): QuantityColor {.
    constructor, importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc constructQuantityColor*(theC1: float; theC2: float; theC3: float;
                            theType: QuantityTypeOfColor): QuantityColor {.
    constructor, importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc constructQuantityColor*(theRgb: NCollectionVec3[cfloat]): QuantityColor {.
    constructor, importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc name*(this: QuantityColor): QuantityNameOfColor {.noSideEffect,
    importcpp: "Name", header: "Quantity_Color.hxx".}
proc setValues*(this: var QuantityColor; theName: QuantityNameOfColor) {.
    importcpp: "SetValues", header: "Quantity_Color.hxx".}
proc rgb*(this: QuantityColor): NCollectionVec3[cfloat] {.noSideEffect,
    importcpp: "Rgb", header: "Quantity_Color.hxx".}
converter `constNCollectionVec3`*(this: QuantityColor): NCollectionVec3[cfloat] {.
    noSideEffect, importcpp: "Quantity_Color::operator constNCollection_Vec3",
    header: "Quantity_Color.hxx".}
proc values*(this: QuantityColor; theC1: var float; theC2: var float; theC3: var float;
            theType: QuantityTypeOfColor) {.noSideEffect, importcpp: "Values",
    header: "Quantity_Color.hxx".}
proc setValues*(this: var QuantityColor; theC1: float; theC2: float; theC3: float;
               theType: QuantityTypeOfColor) {.importcpp: "SetValues",
    header: "Quantity_Color.hxx".}
proc red*(this: QuantityColor): float {.noSideEffect, importcpp: "Red",
                                    header: "Quantity_Color.hxx".}
proc green*(this: QuantityColor): float {.noSideEffect, importcpp: "Green",
                                      header: "Quantity_Color.hxx".}
proc blue*(this: QuantityColor): float {.noSideEffect, importcpp: "Blue",
                                     header: "Quantity_Color.hxx".}
proc hue*(this: QuantityColor): float {.noSideEffect, importcpp: "Hue",
                                    header: "Quantity_Color.hxx".}
proc light*(this: QuantityColor): float {.noSideEffect, importcpp: "Light",
                                      header: "Quantity_Color.hxx".}
proc changeIntensity*(this: var QuantityColor; theDelta: float) {.
    importcpp: "ChangeIntensity", header: "Quantity_Color.hxx".}
proc saturation*(this: QuantityColor): float {.noSideEffect, importcpp: "Saturation",
    header: "Quantity_Color.hxx".}
proc changeContrast*(this: var QuantityColor; theDelta: float) {.
    importcpp: "ChangeContrast", header: "Quantity_Color.hxx".}
proc isDifferent*(this: QuantityColor; theOther: QuantityColor): bool {.noSideEffect,
    importcpp: "IsDifferent", header: "Quantity_Color.hxx".}
proc isEqual*(this: QuantityColor; theOther: QuantityColor): bool {.noSideEffect,
    importcpp: "IsEqual", header: "Quantity_Color.hxx".}
proc `==`*(this: QuantityColor; theOther: QuantityColor): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Quantity_Color.hxx".}
proc distance*(this: QuantityColor; theColor: QuantityColor): float {.noSideEffect,
    importcpp: "Distance", header: "Quantity_Color.hxx".}
proc squareDistance*(this: QuantityColor; theColor: QuantityColor): float {.
    noSideEffect, importcpp: "SquareDistance", header: "Quantity_Color.hxx".}
proc delta*(this: QuantityColor; theColor: QuantityColor; dc: var float; di: var float) {.
    noSideEffect, importcpp: "Delta", header: "Quantity_Color.hxx".}
proc deltaE2000*(this: QuantityColor; theOther: QuantityColor): float {.noSideEffect,
    importcpp: "DeltaE2000", header: "Quantity_Color.hxx".}
proc name*(theR: float; theG: float; theB: float): QuantityNameOfColor {.
    importcpp: "Quantity_Color::Name(@)", header: "Quantity_Color.hxx".}
proc stringName*(theColor: QuantityNameOfColor): StandardCString {.
    importcpp: "Quantity_Color::StringName(@)", header: "Quantity_Color.hxx".}
proc colorFromName*(theName: StandardCString; theColor: var QuantityNameOfColor): bool {.
    importcpp: "Quantity_Color::ColorFromName(@)", header: "Quantity_Color.hxx".}
proc colorFromName*(theColorNameString: StandardCString;
                   theColor: var QuantityColor): bool {.
    importcpp: "Quantity_Color::ColorFromName(@)", header: "Quantity_Color.hxx".}
proc colorFromHex*(theHexColorString: StandardCString; theColor: var QuantityColor): bool {.
    importcpp: "Quantity_Color::ColorFromHex(@)", header: "Quantity_Color.hxx".}
proc colorToHex*(theColor: QuantityColor; theToPrefixHash: bool = true): TCollectionAsciiString {.
    importcpp: "Quantity_Color::ColorToHex(@)", header: "Quantity_Color.hxx".}
proc convertSRGB_ToHLS*(theRgb: NCollectionVec3[cfloat]): NCollectionVec3[cfloat] {.
    importcpp: "Quantity_Color::Convert_sRGB_To_HLS(@)",
    header: "Quantity_Color.hxx".}
proc convertHLS_ToSRGB*(theHls: NCollectionVec3[cfloat]): NCollectionVec3[cfloat] {.
    importcpp: "Quantity_Color::Convert_HLS_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToHLS*(theRgb: NCollectionVec3[cfloat]): NCollectionVec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_LinearRGB_To_HLS(@)",
             header: "Quantity_Color.hxx".}
proc convertHLS_ToLinearRGB*(theHls: NCollectionVec3[cfloat]): NCollectionVec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_HLS_To_LinearRGB(@)",
             header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToLab*(theRgb: NCollectionVec3[cfloat]): NCollectionVec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_LinearRGB_To_Lab(@)",
             header: "Quantity_Color.hxx".}
proc convertLabToLch*(theLab: NCollectionVec3[cfloat]): NCollectionVec3[cfloat] {.
    importcpp: "Quantity_Color::Convert_Lab_To_Lch(@)",
    header: "Quantity_Color.hxx".}
proc convertLabToLinearRGB*(theLab: NCollectionVec3[cfloat]): NCollectionVec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_Lab_To_LinearRGB(@)",
             header: "Quantity_Color.hxx".}
proc convertLchToLab*(theLch: NCollectionVec3[cfloat]): NCollectionVec3[cfloat] {.
    importcpp: "Quantity_Color::Convert_Lch_To_Lab(@)",
    header: "Quantity_Color.hxx".}
proc color2argb*(theColor: QuantityColor; theARGB: var int) {.
    importcpp: "Quantity_Color::Color2argb(@)", header: "Quantity_Color.hxx".}
proc argb2color*(theARGB: int; theColor: var QuantityColor) {.
    importcpp: "Quantity_Color::Argb2color(@)", header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToSRGB*(theLinearValue: float): float {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToSRGB*(theLinearValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertSRGB_ToLinearRGB*(thesRGBValue: float): float {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertSRGB_ToLinearRGB*(thesRGBValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToSRGB*[T](theRGB: NCollectionVec3[T]): NCollectionVec3[T] {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertSRGB_ToLinearRGB*[T](theRGB: NCollectionVec3[T]): NCollectionVec3[T] {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB(@)",
    header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToSRGB_approx22*(theLinearValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB_approx22(@)",
    header: "Quantity_Color.hxx".}
proc convertSRGB_ToLinearRGB_approx22*(thesRGBValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB_approx22(@)",
    header: "Quantity_Color.hxx".}
proc convertLinearRGB_ToSRGB_approx22*(theRGB: NCollectionVec3[cfloat]): NCollectionVec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB_approx22(@)",
             header: "Quantity_Color.hxx".}
proc convertSRGB_ToLinearRGB_approx22*(theRGB: NCollectionVec3[cfloat]): NCollectionVec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB_approx22(@)",
             header: "Quantity_Color.hxx".}
proc hlsRgb*(theH: float; theL: float; theS: float; theR: var float; theG: var float;
            theB: var float) {.importcpp: "Quantity_Color::HlsRgb(@)",
                            header: "Quantity_Color.hxx".}
proc rgbHls*(theR: float; theG: float; theB: float; theH: var float; theL: var float;
            theS: var float) {.importcpp: "Quantity_Color::RgbHls(@)",
                            header: "Quantity_Color.hxx".}
proc epsilon*(): float {.importcpp: "Quantity_Color::Epsilon(@)",
                      header: "Quantity_Color.hxx".}
proc setEpsilon*(theEpsilon: float) {.importcpp: "Quantity_Color::SetEpsilon(@)",
                                   header: "Quantity_Color.hxx".}
proc dumpJson*(this: QuantityColor; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Quantity_Color.hxx".}
proc initFromJson*(this: var QuantityColor; theSStream: StandardSStream;
                  theStreamPos: var int): bool {.importcpp: "InitFromJson",
    header: "Quantity_Color.hxx".}
