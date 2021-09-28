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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of Quantity_Color"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Color"
discard "forward decl of XCAFDoc_Color"
type
  HandleC1C1* = Handle[XCAFDocColor]

## ! attribute to store color

type
  XCAFDocColor* {.importcpp: "XCAFDoc_Color", header: "XCAFDoc_Color.hxx", bycopy.} = object of TDF_Attribute


proc constructXCAFDocColor*(): XCAFDocColor {.constructor,
    importcpp: "XCAFDoc_Color(@)", header: "XCAFDoc_Color.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Color::GetID(@)",
                           header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; c: QuantityColor): Handle[XCAFDocColor] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; c: QuantityColorRGBA): Handle[XCAFDocColor] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; c: QuantityNameOfColor): Handle[XCAFDocColor] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(label: TDF_Label; r: cfloat; g: cfloat; b: cfloat; alpha: cfloat = 1.0): Handle[
    XCAFDocColor] {.importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; c: QuantityColor) {.importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; c: QuantityColorRGBA) {.importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; c: QuantityNameOfColor) {.importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc set*(this: var XCAFDocColor; r: cfloat; g: cfloat; b: cfloat; alpha: cfloat = 1.0) {.
    importcpp: "Set", header: "XCAFDoc_Color.hxx".}
proc getColor*(this: XCAFDocColor): QuantityColor {.noSideEffect,
    importcpp: "GetColor", header: "XCAFDoc_Color.hxx".}
proc getColorRGBA*(this: XCAFDocColor): QuantityColorRGBA {.noSideEffect,
    importcpp: "GetColorRGBA", header: "XCAFDoc_Color.hxx".}
proc getNOC*(this: XCAFDocColor): QuantityNameOfColor {.noSideEffect,
    importcpp: "GetNOC", header: "XCAFDoc_Color.hxx".}
proc getRGB*(this: XCAFDocColor; r: var cfloat; g: var cfloat; b: var cfloat) {.
    noSideEffect, importcpp: "GetRGB", header: "XCAFDoc_Color.hxx".}
proc getAlpha*(this: XCAFDocColor): StandardShortReal {.noSideEffect,
    importcpp: "GetAlpha", header: "XCAFDoc_Color.hxx".}
proc id*(this: XCAFDocColor): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Color.hxx".}
proc restore*(this: var XCAFDocColor; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Color.hxx".}
proc newEmpty*(this: XCAFDocColor): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Color.hxx".}
proc paste*(this: XCAFDocColor; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Color.hxx".}
proc dumpJson*(this: XCAFDocColor; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "XCAFDoc_Color.hxx".}
type
  XCAFDocColorbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_Color::get_type_name(@)",
                            header: "XCAFDoc_Color.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_Color::get_type_descriptor(@)",
    header: "XCAFDoc_Color.hxx".}
proc dynamicType*(this: XCAFDocColor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Color.hxx".}

























