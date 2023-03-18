import ../tdf/tdf_types
import ../quantity/quantity_types
import xcafdoc_types
import ../standard/standard_types



##  Created on: 2000-08-16
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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





proc newXCAFDocColor*(): XCAFDocColor {.cdecl, constructor,
                                     importcpp: "XCAFDoc_Color(@)",
                                     header: "XCAFDoc_Color.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Color::GetID(@)",
                           header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; c: QuantityColor): Handle[XCAFDocColor] {.cdecl,
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; c: QuantityColorRGBA): Handle[XCAFDocColor] {.cdecl,
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; c: QuantityNameOfColor): Handle[XCAFDocColor] {.cdecl,
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; r: cfloat; g: cfloat; b: cfloat; alpha: cfloat = 1.0): Handle[
    XCAFDocColor] {.cdecl, importcpp: "XCAFDoc_Color::Set(@)",
                   header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; c: QuantityColor) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; c: QuantityColorRGBA) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; c: QuantityNameOfColor) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; r: cfloat; g: cfloat; b: cfloat; alpha: cfloat = 1.0) {.
    cdecl, importcpp: "Set", header: "XCAFDoc_Color.hxx".}
proc getColor*(this: XCAFDocColor): QuantityColor {.noSideEffect, cdecl,
    importcpp: "GetColor", header: "XCAFDoc_Color.hxx".}
proc getColorRGBA*(this: XCAFDocColor): QuantityColorRGBA {.noSideEffect, cdecl,
    importcpp: "GetColorRGBA", header: "XCAFDoc_Color.hxx".}
proc getNOC*(this: XCAFDocColor): QuantityNameOfColor {.noSideEffect, cdecl,
    importcpp: "GetNOC", header: "XCAFDoc_Color.hxx".}
proc getRGB*(this: XCAFDocColor; r: var cfloat; g: var cfloat; b: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetRGB", header: "XCAFDoc_Color.hxx".}
proc getAlpha*(this: XCAFDocColor): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "GetAlpha", header: "XCAFDoc_Color.hxx".}
proc id*(this: XCAFDocColor): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Color.hxx".}
proc restore*(this: var XCAFDocColor; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Color.hxx".}
proc newEmpty*(this: XCAFDocColor): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Color.hxx".}
proc paste*(this: XCAFDocColor; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Color.hxx".}
proc dumpJson*(this: XCAFDocColor; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Color.hxx".}

