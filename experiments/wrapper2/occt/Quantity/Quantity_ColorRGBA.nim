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
  Quantity_Color, ../Standard/Standard_Assert

## ! The pair of Quantity_Color and Alpha component (1.0 opaque, 0.0 transparent).

type
  Quantity_ColorRGBA* {.importcpp: "Quantity_ColorRGBA",
                       header: "Quantity_ColorRGBA.hxx", bycopy.} = object ## ! Creates a color with the default value.
                                                                      ## ! Finds color from predefined names.
                                                                      ## ! For example, the name of the color which
                                                                      ## corresponds to "BLACK" is
                                                                      ## Quantity_NOC_BLACK.
                                                                      ## ! An alpha component is set to 1.0.
                                                                      ## ! @param
                                                                      ## theColorNameString the color name
                                                                      ## ! @param theColor a found color
                                                                      ## ! @return false if the color name is unknown, or true if the search by color name was successful
                                                                      ## ! Convert linear RGB components into sRGB using OpenGL specs formula.
                                                                      ## ! Dumps the content of me into the stream


proc constructQuantity_ColorRGBA*(): Quantity_ColorRGBA {.constructor,
    importcpp: "Quantity_ColorRGBA(@)", header: "Quantity_ColorRGBA.hxx".}
proc constructQuantity_ColorRGBA*(theRgb: Quantity_Color): Quantity_ColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc constructQuantity_ColorRGBA*(theRgb: Quantity_Color; theAlpha: cfloat): Quantity_ColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc constructQuantity_ColorRGBA*(theRgba: NCollection_Vec4[cfloat]): Quantity_ColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc constructQuantity_ColorRGBA*(theRed: cfloat; theGreen: cfloat; theBlue: cfloat;
                                 theAlpha: cfloat): Quantity_ColorRGBA {.
    constructor, importcpp: "Quantity_ColorRGBA(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc SetValues*(this: var Quantity_ColorRGBA; theRed: cfloat; theGreen: cfloat;
               theBlue: cfloat; theAlpha: cfloat) {.importcpp: "SetValues",
    header: "Quantity_ColorRGBA.hxx".}
proc GetRGB*(this: Quantity_ColorRGBA): Quantity_Color {.noSideEffect,
    importcpp: "GetRGB", header: "Quantity_ColorRGBA.hxx".}
proc ChangeRGB*(this: var Quantity_ColorRGBA): var Quantity_Color {.
    importcpp: "ChangeRGB", header: "Quantity_ColorRGBA.hxx".}
proc SetRGB*(this: var Quantity_ColorRGBA; theRgb: Quantity_Color) {.
    importcpp: "SetRGB", header: "Quantity_ColorRGBA.hxx".}
proc Alpha*(this: Quantity_ColorRGBA): Standard_ShortReal {.noSideEffect,
    importcpp: "Alpha", header: "Quantity_ColorRGBA.hxx".}
proc SetAlpha*(this: var Quantity_ColorRGBA; theAlpha: Standard_ShortReal) {.
    importcpp: "SetAlpha", header: "Quantity_ColorRGBA.hxx".}
converter `constNCollection_Vec4`*(this: Quantity_ColorRGBA): NCollection_Vec4[
    cfloat] {.noSideEffect,
             importcpp: "Quantity_ColorRGBA::operator constNCollection_Vec4",
             header: "Quantity_ColorRGBA.hxx".}
proc IsDifferent*(this: Quantity_ColorRGBA; theOther: Quantity_ColorRGBA): bool {.
    noSideEffect, importcpp: "IsDifferent", header: "Quantity_ColorRGBA.hxx".}
proc IsEqual*(this: Quantity_ColorRGBA; theOther: Quantity_ColorRGBA): bool {.
    noSideEffect, importcpp: "IsEqual", header: "Quantity_ColorRGBA.hxx".}
proc `==`*(this: Quantity_ColorRGBA; theOther: Quantity_ColorRGBA): bool {.
    noSideEffect, importcpp: "(# == #)", header: "Quantity_ColorRGBA.hxx".}
proc ColorFromName*(theColorNameString: Standard_CString;
                   theColor: var Quantity_ColorRGBA): Standard_Boolean {.
    importcpp: "Quantity_ColorRGBA::ColorFromName(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc ColorFromHex*(theHexColorString: cstring; theColor: var Quantity_ColorRGBA;
                  theAlphaComponentIsOff: bool = false): bool {.
    importcpp: "Quantity_ColorRGBA::ColorFromHex(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc ColorToHex*(theColor: Quantity_ColorRGBA; theToPrefixHash: bool = true): TCollection_AsciiString {.
    importcpp: "Quantity_ColorRGBA::ColorToHex(@)",
    header: "Quantity_ColorRGBA.hxx".}
proc Convert_LinearRGB_To_sRGB*(theRGB: NCollection_Vec4[cfloat]): NCollection_Vec4[
    cfloat] {.importcpp: "Quantity_ColorRGBA::Convert_LinearRGB_To_sRGB(@)",
             header: "Quantity_ColorRGBA.hxx".}
proc Convert_sRGB_To_LinearRGB*(theRGB: NCollection_Vec4[cfloat]): NCollection_Vec4[
    cfloat] {.importcpp: "Quantity_ColorRGBA::Convert_sRGB_To_LinearRGB(@)",
             header: "Quantity_ColorRGBA.hxx".}
proc DumpJson*(this: Quantity_ColorRGBA; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Quantity_ColorRGBA.hxx".}
proc InitFromJson*(this: var Quantity_ColorRGBA; theSStream: Standard_SStream;
                  theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "InitFromJson", header: "Quantity_ColorRGBA.hxx".}