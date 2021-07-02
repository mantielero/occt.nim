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

## ! The pair of Quantity_Color and Alpha component (1.0 opaque, 0.0 transparent).

type
  QuantityColorRGBA* {.importcpp: "Quantity_ColorRGBA",
                      header: "Quantity_ColorRGBA.hxx", bycopy.} = object ## ! Creates a color with the default value.
                                                                     ## ! Finds color from predefined names.
                                                                     ## ! For example, the name of the color which corresponds to "BLACK" is
                                                                     ## Quantity_NOC_BLACK.
                                                                     ## ! An alpha component is set to 1.0.
                                                                     ## ! @param
                                                                     ## theColorNameString the color name
                                                                     ## ! @param theColor a found color
                                                                     ## ! @return false if the color name is unknown, or true if the search by color name was successful
                                                                     ## ! Convert linear RGB components into sRGB using OpenGL specs formula.
                                                                     ## ! Dumps the content of me into the stream


proc constructQuantityColorRGBA*(): QuantityColorRGBA {.constructor,
    importcpp: "Quantity_ColorRGBA(@)", header: "Quantity_ColorRGBA.hxx".}
proc constructQuantityColorRGBA*(theRgb: QuantityColor): QuantityColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc constructQuantityColorRGBA*(theRgb: QuantityColor; theAlpha: cfloat): QuantityColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc constructQuantityColorRGBA*(theRgba: NCollectionVec4[cfloat]): QuantityColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc constructQuantityColorRGBA*(theRed: cfloat; theGreen: cfloat; theBlue: cfloat;
                                theAlpha: cfloat): QuantityColorRGBA {.constructor,
    importcpp: "Quantity_ColorRGBA(@)", header: "Quantity_ColorRGBA.hxx".}
proc setValues*(this: var QuantityColorRGBA; theRed: cfloat; theGreen: cfloat;
               theBlue: cfloat; theAlpha: cfloat) {.importcpp: "SetValues",
    header: "Quantity_ColorRGBA.hxx".}
proc getRGB*(this: QuantityColorRGBA): QuantityColor {.noSideEffect,
    importcpp: "GetRGB", header: "Quantity_ColorRGBA.hxx".}
proc changeRGB*(this: var QuantityColorRGBA): var QuantityColor {.
    importcpp: "ChangeRGB", header: "Quantity_ColorRGBA.hxx".}
proc setRGB*(this: var QuantityColorRGBA; theRgb: QuantityColor) {.
    importcpp: "SetRGB", header: "Quantity_ColorRGBA.hxx".}
proc alpha*(this: QuantityColorRGBA): StandardShortReal {.noSideEffect,
    importcpp: "Alpha", header: "Quantity_ColorRGBA.hxx".}
proc setAlpha*(this: var QuantityColorRGBA; theAlpha: StandardShortReal) {.
    importcpp: "SetAlpha", header: "Quantity_ColorRGBA.hxx".}
converter `constNCollectionVec4`*(this: QuantityColorRGBA): NCollectionVec4[cfloat] {.
    noSideEffect,
    importcpp: "Quantity_ColorRGBA::operator constNCollection_Vec4",
    header: "Quantity_ColorRGBA.hxx".}
proc isDifferent*(this: QuantityColorRGBA; theOther: QuantityColorRGBA): bool {.
    noSideEffect, importcpp: "IsDifferent", header: "Quantity_ColorRGBA.hxx".}
proc isEqual*(this: QuantityColorRGBA; theOther: QuantityColorRGBA): bool {.
    noSideEffect, importcpp: "IsEqual", header: "Quantity_ColorRGBA.hxx".}
proc `==`*(this: QuantityColorRGBA; theOther: QuantityColorRGBA): bool {.noSideEffect,
    importcpp: "(# == #)", header: "Quantity_ColorRGBA.hxx".}
proc colorFromName*(theColorNameString: StandardCString;
                   theColor: var QuantityColorRGBA): StandardBoolean {.
    importcpp: "Quantity_ColorRGBA::ColorFromName(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc colorFromHex*(theHexColorString: cstring; theColor: var QuantityColorRGBA;
                  theAlphaComponentIsOff: bool = false): bool {.
    importcpp: "Quantity_ColorRGBA::ColorFromHex(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc colorToHex*(theColor: QuantityColorRGBA; theToPrefixHash: bool = true): TCollectionAsciiString {.
    importcpp: "Quantity_ColorRGBA::ColorToHex(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc convertLinearRGB_ToSRGB*(theRGB: NCollectionVec4[cfloat]): NCollectionVec4[
    cfloat] {.importcpp: "Quantity_ColorRGBA::Convert_LinearRGB_To_sRGB(@)",
             header: "Quantity_ColorRGBA.hxx".}
proc convertSRGB_ToLinearRGB*(theRGB: NCollectionVec4[cfloat]): NCollectionVec4[
    cfloat] {.importcpp: "Quantity_ColorRGBA::Convert_sRGB_To_LinearRGB(@)",
             header: "Quantity_ColorRGBA.hxx".}
proc dumpJson*(this: QuantityColorRGBA; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Quantity_ColorRGBA.hxx".}
proc initFromJson*(this: var QuantityColorRGBA; theSStream: StandardSStream;
                  theStreamPos: var StandardInteger): StandardBoolean {.
    importcpp: "InitFromJson", header: "Quantity_ColorRGBA.hxx".}

