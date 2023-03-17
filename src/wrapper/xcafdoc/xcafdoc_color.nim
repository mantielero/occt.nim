import xcafdoc_types

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

proc newXCAFDoc_Color*(): XCAFDoc_Color {.cdecl, constructor,
                                       importcpp: "XCAFDoc_Color(@)",
                                       header: "XCAFDoc_Color.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_Color::GetID(@)",
                            header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; C: Quantity_Color): handle[XCAFDoc_Color] {.cdecl,
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; C: Quantity_ColorRGBA): handle[XCAFDoc_Color] {.cdecl,
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; C: Quantity_NameOfColor): handle[XCAFDoc_Color] {.cdecl,
    importcpp: "XCAFDoc_Color::Set(@)", header: "XCAFDoc_Color.hxx".}
proc Set*(label: TDF_Label; R: cfloat; G: cfloat; B: cfloat; alpha: cfloat = 1.0): handle[
    XCAFDoc_Color] {.cdecl, importcpp: "XCAFDoc_Color::Set(@)",
                    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; C: Quantity_Color) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; C: Quantity_ColorRGBA) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; C: Quantity_NameOfColor) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Color.hxx".}
proc Set*(this: var XCAFDoc_Color; R: cfloat; G: cfloat; B: cfloat; alpha: cfloat = 1.0) {.
    cdecl, importcpp: "Set", header: "XCAFDoc_Color.hxx".}
proc GetColor*(this: XCAFDoc_Color): Quantity_Color {.noSideEffect, cdecl,
    importcpp: "GetColor", header: "XCAFDoc_Color.hxx".}
proc GetColorRGBA*(this: XCAFDoc_Color): Quantity_ColorRGBA {.noSideEffect, cdecl,
    importcpp: "GetColorRGBA", header: "XCAFDoc_Color.hxx".}
proc GetNOC*(this: XCAFDoc_Color): Quantity_NameOfColor {.noSideEffect, cdecl,
    importcpp: "GetNOC", header: "XCAFDoc_Color.hxx".}
proc GetRGB*(this: XCAFDoc_Color; R: var cfloat; G: var cfloat; B: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetRGB", header: "XCAFDoc_Color.hxx".}
proc GetAlpha*(this: XCAFDoc_Color): Standard_ShortReal {.noSideEffect, cdecl,
    importcpp: "GetAlpha", header: "XCAFDoc_Color.hxx".}
proc ID*(this: XCAFDoc_Color): Standard_GUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Color.hxx".}
proc Restore*(this: var XCAFDoc_Color; With: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Color.hxx".}
proc NewEmpty*(this: XCAFDoc_Color): handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Color.hxx".}
proc Paste*(this: XCAFDoc_Color; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Color.hxx".}
proc DumpJson*(this: XCAFDoc_Color; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Color.hxx".}