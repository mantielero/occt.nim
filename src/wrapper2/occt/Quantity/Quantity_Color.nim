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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_ShortReal,
  Quantity_NameOfColor, Quantity_TypeOfColor,
  ../TCollection/TCollection_AsciiString, ../NCollection/NCollection_Vec4

## ! This class allows the definition of an RGB color as triplet of 3 normalized floating point values (red, green, blue).
## !
## ! Although Quantity_Color can be technically used for pass-through storage of RGB triplet in any color space,
## ! other OCCT interfaces taking/returning Quantity_Color would expect them in linear space.
## ! Therefore, take a look into methods converting to and from non-linear sRGB color space, if needed;
## ! for instance, application usually providing color picking within 0..255 range in sRGB color space.

type
  Quantity_Color* {.importcpp: "Quantity_Color", header: "Quantity_Color.hxx", bycopy.} = object ##
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


proc constructQuantity_Color*(): Quantity_Color {.constructor,
    importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc constructQuantity_Color*(theName: Quantity_NameOfColor): Quantity_Color {.
    constructor, importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc constructQuantity_Color*(theC1: Standard_Real; theC2: Standard_Real;
                             theC3: Standard_Real; theType: Quantity_TypeOfColor): Quantity_Color {.
    constructor, importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc constructQuantity_Color*(theRgb: NCollection_Vec3[cfloat]): Quantity_Color {.
    constructor, importcpp: "Quantity_Color(@)", header: "Quantity_Color.hxx".}
proc Name*(this: Quantity_Color): Quantity_NameOfColor {.noSideEffect,
    importcpp: "Name", header: "Quantity_Color.hxx".}
proc SetValues*(this: var Quantity_Color; theName: Quantity_NameOfColor) {.
    importcpp: "SetValues", header: "Quantity_Color.hxx".}
proc Rgb*(this: Quantity_Color): NCollection_Vec3[cfloat] {.noSideEffect,
    importcpp: "Rgb", header: "Quantity_Color.hxx".}
converter `constNCollection_Vec3`*(this: Quantity_Color): NCollection_Vec3[cfloat] {.
    noSideEffect, importcpp: "Quantity_Color::operator constNCollection_Vec3",
    header: "Quantity_Color.hxx".}
proc Values*(this: Quantity_Color; theC1: var Standard_Real; theC2: var Standard_Real;
            theC3: var Standard_Real; theType: Quantity_TypeOfColor) {.noSideEffect,
    importcpp: "Values", header: "Quantity_Color.hxx".}
proc SetValues*(this: var Quantity_Color; theC1: Standard_Real; theC2: Standard_Real;
               theC3: Standard_Real; theType: Quantity_TypeOfColor) {.
    importcpp: "SetValues", header: "Quantity_Color.hxx".}
proc Red*(this: Quantity_Color): Standard_Real {.noSideEffect, importcpp: "Red",
    header: "Quantity_Color.hxx".}
proc Green*(this: Quantity_Color): Standard_Real {.noSideEffect, importcpp: "Green",
    header: "Quantity_Color.hxx".}
proc Blue*(this: Quantity_Color): Standard_Real {.noSideEffect, importcpp: "Blue",
    header: "Quantity_Color.hxx".}
proc Hue*(this: Quantity_Color): Standard_Real {.noSideEffect, importcpp: "Hue",
    header: "Quantity_Color.hxx".}
proc Light*(this: Quantity_Color): Standard_Real {.noSideEffect, importcpp: "Light",
    header: "Quantity_Color.hxx".}
proc ChangeIntensity*(this: var Quantity_Color; theDelta: Standard_Real) {.
    importcpp: "ChangeIntensity", header: "Quantity_Color.hxx".}
proc Saturation*(this: Quantity_Color): Standard_Real {.noSideEffect,
    importcpp: "Saturation", header: "Quantity_Color.hxx".}
proc ChangeContrast*(this: var Quantity_Color; theDelta: Standard_Real) {.
    importcpp: "ChangeContrast", header: "Quantity_Color.hxx".}
proc IsDifferent*(this: Quantity_Color; theOther: Quantity_Color): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "Quantity_Color.hxx".}
proc IsEqual*(this: Quantity_Color; theOther: Quantity_Color): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Quantity_Color.hxx".}
proc `==`*(this: Quantity_Color; theOther: Quantity_Color): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Quantity_Color.hxx".}
proc Distance*(this: Quantity_Color; theColor: Quantity_Color): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "Quantity_Color.hxx".}
proc SquareDistance*(this: Quantity_Color; theColor: Quantity_Color): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Quantity_Color.hxx".}
proc Delta*(this: Quantity_Color; theColor: Quantity_Color; DC: var Standard_Real;
           DI: var Standard_Real) {.noSideEffect, importcpp: "Delta",
                                 header: "Quantity_Color.hxx".}
proc DeltaE2000*(this: Quantity_Color; theOther: Quantity_Color): Standard_Real {.
    noSideEffect, importcpp: "DeltaE2000", header: "Quantity_Color.hxx".}
proc Name*(theR: Standard_Real; theG: Standard_Real; theB: Standard_Real): Quantity_NameOfColor {.
    importcpp: "Quantity_Color::Name(@)", header: "Quantity_Color.hxx".}
proc StringName*(theColor: Quantity_NameOfColor): Standard_CString {.
    importcpp: "Quantity_Color::StringName(@)", header: "Quantity_Color.hxx".}
proc ColorFromName*(theName: Standard_CString; theColor: var Quantity_NameOfColor): Standard_Boolean {.
    importcpp: "Quantity_Color::ColorFromName(@)", header: "Quantity_Color.hxx".}
proc ColorFromName*(theColorNameString: Standard_CString;
                   theColor: var Quantity_Color): Standard_Boolean {.
    importcpp: "Quantity_Color::ColorFromName(@)", header: "Quantity_Color.hxx".}
proc ColorFromHex*(theHexColorString: Standard_CString;
                  theColor: var Quantity_Color): bool {.
    importcpp: "Quantity_Color::ColorFromHex(@)", header: "Quantity_Color.hxx".}
proc ColorToHex*(theColor: Quantity_Color; theToPrefixHash: bool = true): TCollection_AsciiString {.
    importcpp: "Quantity_Color::ColorToHex(@)", header: "Quantity_Color.hxx".}
proc Convert_sRGB_To_HLS*(theRgb: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_sRGB_To_HLS(@)",
             header: "Quantity_Color.hxx".}
proc Convert_HLS_To_sRGB*(theHls: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_HLS_To_sRGB(@)",
             header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_HLS*(theRgb: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_LinearRGB_To_HLS(@)",
             header: "Quantity_Color.hxx".}
proc Convert_HLS_To_LinearRGB*(theHls: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_HLS_To_LinearRGB(@)",
             header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_Lab*(theRgb: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_LinearRGB_To_Lab(@)",
             header: "Quantity_Color.hxx".}
proc Convert_Lab_To_Lch*(theLab: NCollection_Vec3[cfloat]): NCollection_Vec3[cfloat] {.
    importcpp: "Quantity_Color::Convert_Lab_To_Lch(@)",
    header: "Quantity_Color.hxx".}
proc Convert_Lab_To_LinearRGB*(theLab: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_Lab_To_LinearRGB(@)",
             header: "Quantity_Color.hxx".}
proc Convert_Lch_To_Lab*(theLch: NCollection_Vec3[cfloat]): NCollection_Vec3[cfloat] {.
    importcpp: "Quantity_Color::Convert_Lch_To_Lab(@)",
    header: "Quantity_Color.hxx".}
proc Color2argb*(theColor: Quantity_Color; theARGB: var Standard_Integer) {.
    importcpp: "Quantity_Color::Color2argb(@)", header: "Quantity_Color.hxx".}
proc Argb2color*(theARGB: Standard_Integer; theColor: var Quantity_Color) {.
    importcpp: "Quantity_Color::Argb2color(@)", header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_sRGB*(theLinearValue: Standard_Real): Standard_Real {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_sRGB*(theLinearValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc Convert_sRGB_To_LinearRGB*(thesRGBValue: Standard_Real): Standard_Real {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB(@)",
    header: "Quantity_Color.hxx".}
proc Convert_sRGB_To_LinearRGB*(thesRGBValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB(@)",
    header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_sRGB*[T](theRGB: NCollection_Vec3[T]): NCollection_Vec3[T] {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB(@)",
    header: "Quantity_Color.hxx".}
proc Convert_sRGB_To_LinearRGB*[T](theRGB: NCollection_Vec3[T]): NCollection_Vec3[T] {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB(@)",
    header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_sRGB_approx22*(theLinearValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB_approx22(@)",
    header: "Quantity_Color.hxx".}
proc Convert_sRGB_To_LinearRGB_approx22*(thesRGBValue: cfloat): cfloat {.
    importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB_approx22(@)",
    header: "Quantity_Color.hxx".}
proc Convert_LinearRGB_To_sRGB_approx22*(theRGB: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_LinearRGB_To_sRGB_approx22(@)",
             header: "Quantity_Color.hxx".}
proc Convert_sRGB_To_LinearRGB_approx22*(theRGB: NCollection_Vec3[cfloat]): NCollection_Vec3[
    cfloat] {.importcpp: "Quantity_Color::Convert_sRGB_To_LinearRGB_approx22(@)",
             header: "Quantity_Color.hxx".}
proc HlsRgb*(theH: Standard_Real; theL: Standard_Real; theS: Standard_Real;
            theR: var Standard_Real; theG: var Standard_Real; theB: var Standard_Real) {.
    importcpp: "Quantity_Color::HlsRgb(@)", header: "Quantity_Color.hxx".}
proc RgbHls*(theR: Standard_Real; theG: Standard_Real; theB: Standard_Real;
            theH: var Standard_Real; theL: var Standard_Real; theS: var Standard_Real) {.
    importcpp: "Quantity_Color::RgbHls(@)", header: "Quantity_Color.hxx".}
proc Epsilon*(): Standard_Real {.importcpp: "Quantity_Color::Epsilon(@)",
                              header: "Quantity_Color.hxx".}
proc SetEpsilon*(theEpsilon: Standard_Real) {.
    importcpp: "Quantity_Color::SetEpsilon(@)", header: "Quantity_Color.hxx".}
proc DumpJson*(this: Quantity_Color; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Quantity_Color.hxx".}
proc InitFromJson*(this: var Quantity_Color; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "Quantity_Color.hxx".}