import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



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





proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_LengthUnit::GetID(@)",
                           header: "XCAFDoc_LengthUnit.hxx".}
proc set*(theLabel: TDF_Label; theUnitName: TCollectionAsciiString;
         theUnitValue: cfloat): Handle[XCAFDocLengthUnit] {.cdecl,
    importcpp: "XCAFDoc_LengthUnit::Set(@)", header: "XCAFDoc_LengthUnit.hxx".}
proc set*(theLabel: TDF_Label; theUnitValue: cfloat): Handle[XCAFDocLengthUnit] {.
    cdecl, importcpp: "XCAFDoc_LengthUnit::Set(@)",
    header: "XCAFDoc_LengthUnit.hxx".}
proc set*(theLabel: TDF_Label; theGUID: StandardGUID;
         theUnitName: TCollectionAsciiString; theUnitValue: cfloat): Handle[
    XCAFDocLengthUnit] {.cdecl, importcpp: "XCAFDoc_LengthUnit::Set(@)",
                        header: "XCAFDoc_LengthUnit.hxx".}
proc set*(this: var XCAFDocLengthUnit; theUnitName: TCollectionAsciiString;
         theUnitValue: cfloat) {.cdecl, importcpp: "Set",
                               header: "XCAFDoc_LengthUnit.hxx".}
proc getUnitName*(this: XCAFDocLengthUnit): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetUnitName", header: "XCAFDoc_LengthUnit.hxx".}
proc getUnitValue*(this: XCAFDocLengthUnit): cfloat {.noSideEffect, cdecl,
    importcpp: "GetUnitValue", header: "XCAFDoc_LengthUnit.hxx".}
proc isEmpty*(this: XCAFDocLengthUnit): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "XCAFDoc_LengthUnit.hxx".}
proc newXCAFDocLengthUnit*(): XCAFDocLengthUnit {.cdecl, constructor,
    importcpp: "XCAFDoc_LengthUnit(@)", header: "XCAFDoc_LengthUnit.hxx".}
proc id*(this: XCAFDocLengthUnit): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_LengthUnit.hxx".}
proc restore*(this: var XCAFDocLengthUnit; theWith: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_LengthUnit.hxx".}
proc paste*(this: XCAFDocLengthUnit; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_LengthUnit.hxx".}
proc dump*(this: XCAFDocLengthUnit; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_LengthUnit.hxx".}
proc dumpJson*(this: XCAFDocLengthUnit; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_LengthUnit.hxx".}

