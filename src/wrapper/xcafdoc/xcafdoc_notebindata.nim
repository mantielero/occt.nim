import xcafdoc_types

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

discard "forward decl of OSD_File"


proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_NoteBinData::GetID(@)",
                            header: "XCAFDoc_NoteBinData.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_NoteBinData] {.cdecl,
    importcpp: "XCAFDoc_NoteBinData::Get(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString; theFile: var OSD_File): handle[
    XCAFDoc_NoteBinData] {.cdecl, importcpp: "XCAFDoc_NoteBinData::Set(@)",
                          header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString;
         theData: handle[TColStd_HArray1OfByte]): handle[XCAFDoc_NoteBinData] {.
    cdecl, importcpp: "XCAFDoc_NoteBinData::Set(@)",
    header: "XCAFDoc_NoteBinData.hxx".}
proc newXCAFDoc_NoteBinData*(): XCAFDoc_NoteBinData {.cdecl, constructor,
    importcpp: "XCAFDoc_NoteBinData(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(this: var XCAFDoc_NoteBinData; theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString; theFile: var OSD_File): bool {.cdecl,
    importcpp: "Set", header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(this: var XCAFDoc_NoteBinData; theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString;
         theData: handle[TColStd_HArray1OfByte]) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_NoteBinData.hxx".}
proc Title*(this: XCAFDoc_NoteBinData): TCollection_ExtendedString {.noSideEffect,
    cdecl, importcpp: "Title", header: "XCAFDoc_NoteBinData.hxx".}
proc MIMEtype*(this: XCAFDoc_NoteBinData): TCollection_AsciiString {.noSideEffect,
    cdecl, importcpp: "MIMEtype", header: "XCAFDoc_NoteBinData.hxx".}
proc Size*(this: XCAFDoc_NoteBinData): cint {.noSideEffect, cdecl, importcpp: "Size",
    header: "XCAFDoc_NoteBinData.hxx".}
proc Data*(this: XCAFDoc_NoteBinData): handle[TColStd_HArray1OfByte] {.noSideEffect,
    cdecl, importcpp: "Data", header: "XCAFDoc_NoteBinData.hxx".}
proc ID*(this: XCAFDoc_NoteBinData): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_NoteBinData.hxx".}
proc NewEmpty*(this: XCAFDoc_NoteBinData): handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "NewEmpty", header: "XCAFDoc_NoteBinData.hxx".}
proc Restore*(this: var XCAFDoc_NoteBinData; theAttrFrom: handle[TDF_Attribute]) {.
    cdecl, importcpp: "Restore", header: "XCAFDoc_NoteBinData.hxx".}
proc Paste*(this: XCAFDoc_NoteBinData; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_NoteBinData.hxx".}
proc Dump*(this: XCAFDoc_NoteBinData; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_NoteBinData.hxx".}
type
  Handle_XCAFDoc_NoteBinData* = handle[XCAFDoc_NoteBinData]
