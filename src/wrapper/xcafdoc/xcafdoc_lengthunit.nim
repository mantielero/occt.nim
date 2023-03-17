import xcafdoc_types

##  Copyright (c) 2021 OPEN CASCADE SAS
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

discard "forward decl of TDF_Label"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_LengthUnit"

proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_LengthUnit::GetID(@)",
                            header: "XCAFDoc_LengthUnit.hxx".}
proc Set*(theLabel: TDF_Label; theUnitName: TCollection_AsciiString;
         theUnitValue: cfloat): handle[XCAFDoc_LengthUnit] {.cdecl,
    importcpp: "XCAFDoc_LengthUnit::Set(@)", header: "XCAFDoc_LengthUnit.hxx".}
proc Set*(theLabel: TDF_Label; theUnitValue: cfloat): handle[XCAFDoc_LengthUnit] {.
    cdecl, importcpp: "XCAFDoc_LengthUnit::Set(@)",
    header: "XCAFDoc_LengthUnit.hxx".}
proc Set*(theLabel: TDF_Label; theGUID: Standard_GUID;
         theUnitName: TCollection_AsciiString; theUnitValue: cfloat): handle[
    XCAFDoc_LengthUnit] {.cdecl, importcpp: "XCAFDoc_LengthUnit::Set(@)",
                         header: "XCAFDoc_LengthUnit.hxx".}
proc Set*(this: var XCAFDoc_LengthUnit; theUnitName: TCollection_AsciiString;
         theUnitValue: cfloat) {.cdecl, importcpp: "Set",
                               header: "XCAFDoc_LengthUnit.hxx".}
proc GetUnitName*(this: XCAFDoc_LengthUnit): TCollection_AsciiString {.noSideEffect,
    cdecl, importcpp: "GetUnitName", header: "XCAFDoc_LengthUnit.hxx".}
proc GetUnitValue*(this: XCAFDoc_LengthUnit): cfloat {.noSideEffect, cdecl,
    importcpp: "GetUnitValue", header: "XCAFDoc_LengthUnit.hxx".}
proc IsEmpty*(this: XCAFDoc_LengthUnit): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "XCAFDoc_LengthUnit.hxx".}
proc newXCAFDoc_LengthUnit*(): XCAFDoc_LengthUnit {.cdecl, constructor,
    importcpp: "XCAFDoc_LengthUnit(@)", header: "XCAFDoc_LengthUnit.hxx".}
proc ID*(this: XCAFDoc_LengthUnit): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_LengthUnit.hxx".}
proc Restore*(this: var XCAFDoc_LengthUnit; theWith: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_LengthUnit.hxx".}
proc Paste*(this: XCAFDoc_LengthUnit; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_LengthUnit.hxx".}
proc Dump*(this: XCAFDoc_LengthUnit; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_LengthUnit.hxx".}
proc DumpJson*(this: XCAFDoc_LengthUnit; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_LengthUnit.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_LengthUnit , TDF_Attribute ) private : float myUnitScaleValue ;
## Error: token expected: ) but got: ,!!!
