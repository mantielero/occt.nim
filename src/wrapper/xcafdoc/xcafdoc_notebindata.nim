import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../osd/osd_types


##  Copyright (c) 2017-2018 OPEN CASCADE SAS
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



proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_NoteBinData::GetID(@)",
                           header: "XCAFDoc_NoteBinData.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocNoteBinData] {.cdecl,
    importcpp: "XCAFDoc_NoteBinData::Get(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(theLabel: TDF_Label; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString;
         theTitle: TCollectionExtendedString; theMIMEtype: TCollectionAsciiString;
         theFile: var OSD_File): Handle[XCAFDocNoteBinData] {.cdecl,
    importcpp: "XCAFDoc_NoteBinData::Set(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(theLabel: TDF_Label; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString;
         theTitle: TCollectionExtendedString; theMIMEtype: TCollectionAsciiString;
         theData: Handle[TColStdHArray1OfByte]): Handle[XCAFDocNoteBinData] {.
    cdecl, importcpp: "XCAFDoc_NoteBinData::Set(@)",
    header: "XCAFDoc_NoteBinData.hxx".}
proc newXCAFDocNoteBinData*(): XCAFDocNoteBinData {.cdecl, constructor,
    importcpp: "XCAFDoc_NoteBinData(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(this: var XCAFDocNoteBinData; theTitle: TCollectionExtendedString;
         theMIMEtype: TCollectionAsciiString; theFile: var OSD_File): bool {.cdecl,
    importcpp: "Set", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(this: var XCAFDocNoteBinData; theTitle: TCollectionExtendedString;
         theMIMEtype: TCollectionAsciiString;
         theData: Handle[TColStdHArray1OfByte]) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_NoteBinData.hxx".}
proc title*(this: XCAFDocNoteBinData): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "Title", header: "XCAFDoc_NoteBinData.hxx".}
proc mIMEtype*(this: XCAFDocNoteBinData): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "MIMEtype", header: "XCAFDoc_NoteBinData.hxx".}
proc size*(this: XCAFDocNoteBinData): cint {.noSideEffect, cdecl, importcpp: "Size",
    header: "XCAFDoc_NoteBinData.hxx".}
proc data*(this: XCAFDocNoteBinData): Handle[TColStdHArray1OfByte] {.noSideEffect,
    cdecl, importcpp: "Data", header: "XCAFDoc_NoteBinData.hxx".}
proc id*(this: XCAFDocNoteBinData): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_NoteBinData.hxx".}
proc newEmpty*(this: XCAFDocNoteBinData): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_NoteBinData.hxx".}
proc restore*(this: var XCAFDocNoteBinData; theAttrFrom: Handle[TDF_Attribute]) {.
    cdecl, importcpp: "Restore", header: "XCAFDoc_NoteBinData.hxx".}
proc paste*(this: XCAFDocNoteBinData; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_NoteBinData.hxx".}
proc dump*(this: XCAFDocNoteBinData; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_NoteBinData.hxx".}


