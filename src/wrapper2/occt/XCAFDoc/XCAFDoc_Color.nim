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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Quantity/Quantity_Color,
  ../Quantity/Quantity_ColorRGBA, ../TDF/TDF_Attribute,
  ../Quantity/Quantity_NameOfColor, ../Standard/Standard_Real

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of Quantity_Color"
discard "forward decl of Quantity_ColorRGBA"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Color"
discard "forward decl of XCAFDoc_Color"
type
  Handle_XCAFDoc_Color* = handle[XCAFDoc_Color]

## ! attribute to store color

type
  XCAFDoc_Color* {.importcpp: "XCAFDoc_Color", header: "XCAFDoc_Color.hxx", bycopy.} = object of TDF_Attribute


proc constructXCAFDoc_Color*(): XCAFDoc_Color {.constructor,
    importcpp: "XCAFDoc_Color(@)", header: "XCAFDoc_Color.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_Color::GetID(@)",
                            header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; C: Quantity_Color): handle[XCAFDoc_Color] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; C: Quantity_ColorRGBA): handle[XCAFDoc_Color] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; C: Quantity_NameOfColor): handle[XCAFDoc_Color] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; R: Standard_Real; G: Standard_Real; B: Standard_Real;
         alpha: Standard_Real = 1.0): handle[XCAFDoc_Color] {.
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; C: Quantity_Color) {.importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; C: Quantity_ColorRGBA) {.importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; C: Quantity_NameOfColor) {.importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; R: Standard_Real; G: Standard_Real; B: Standard_Real;
         alpha: Standard_Real = 1.0) {.importcpp: "Set", header: "XCAFDoc_Color.hxx".}
proc GetColor*(this: XCAFDoc_Color): Quantity_Color {.noSideEffect,
    importcpp: "GetColor", header: "XCAFDoc_Color.hxx".}
proc GetColorRGBA*(this: XCAFDoc_Color): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "GetColorRGBA", header: "XCAFDoc_Color.hxx".}
proc GetNOC*(this: XCAFDoc_Color): Quantity_NameOfColor {.noSideEffect,
    importcpp: "GetNOC", header: "XCAFDoc_Color.hxx".}
proc GetRGB*(this: XCAFDoc_Color; R: var Standard_Real; G: var Standard_Real;
            B: var Standard_Real) {.noSideEffect, importcpp: "GetRGB",
                                 header: "XCAFDoc_Color.hxx".}
proc GetAlpha*(this: XCAFDoc_Color): Standard_ShortReal {.noSideEffect,
    importcpp: "GetAlpha", header: "XCAFDoc_Color.hxx".}
proc ID*(this: XCAFDoc_Color): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Color.hxx".}
proc Restore*(this: var XCAFDoc_Color; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Color.hxx".}
proc NewEmpty*(this: XCAFDoc_Color): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Color.hxx".}
proc Paste*(this: XCAFDoc_Color; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Color.hxx".}
proc DumpJson*(this: XCAFDoc_Color; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_Color.hxx".}
type
  XCAFDoc_Colorbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_Color::get_type_name(@)",
                              header: "XCAFDoc_Color.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_Color::get_type_descriptor(@)",
    header: "XCAFDoc_Color.hxx".}
proc DynamicType*(this: XCAFDoc_Color): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Color.hxx".}