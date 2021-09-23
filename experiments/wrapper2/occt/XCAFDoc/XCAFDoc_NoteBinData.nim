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

import
  XCAFDoc_Note, ../TColStd/TColStd_HArray1OfByte,
  ../TCollection/TCollection_AsciiString,
  ../TCollection/TCollection_ExtendedString

discard "forward decl of OSD_File"
type
  XCAFDoc_NoteBinData* {.importcpp: "XCAFDoc_NoteBinData",
                        header: "XCAFDoc_NoteBinData.hxx", bycopy.} = object of XCAFDoc_Note ##  Overrides TDF_Attribute virtuals
    ## /< Note title.
    ## /< MIME type of data.
    ## /< Byte data array.

  XCAFDoc_NoteBinDatabase_type* = XCAFDoc_Note

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_NoteBinData::get_type_name(@)",
                              header: "XCAFDoc_NoteBinData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_NoteBinData::get_type_descriptor(@)",
    header: "XCAFDoc_NoteBinData.hxx".}
proc DynamicType*(this: XCAFDoc_NoteBinData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_NoteBinData.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_NoteBinData::GetID(@)",
                            header: "XCAFDoc_NoteBinData.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_NoteBinData] {.
    importcpp: "XCAFDoc_NoteBinData::Get(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString; theFile: var OSD_File): handle[
    XCAFDoc_NoteBinData] {.importcpp: "XCAFDoc_NoteBinData::Set(@)",
                          header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString;
         theData: handle[TColStd_HArray1OfByte]): handle[XCAFDoc_NoteBinData] {.
    importcpp: "XCAFDoc_NoteBinData::Set(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc constructXCAFDoc_NoteBinData*(): XCAFDoc_NoteBinData {.constructor,
    importcpp: "XCAFDoc_NoteBinData(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(this: var XCAFDoc_NoteBinData; theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString; theFile: var OSD_File): Standard_Boolean {.
    importcpp: "Set", header: "XCAFDoc_NoteBinData.hxx".}
proc Set*(this: var XCAFDoc_NoteBinData; theTitle: TCollection_ExtendedString;
         theMIMEtype: TCollection_AsciiString;
         theData: handle[TColStd_HArray1OfByte]) {.importcpp: "Set",
    header: "XCAFDoc_NoteBinData.hxx".}
proc Title*(this: XCAFDoc_NoteBinData): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Title", header: "XCAFDoc_NoteBinData.hxx".}
proc MIMEtype*(this: XCAFDoc_NoteBinData): TCollection_AsciiString {.noSideEffect,
    importcpp: "MIMEtype", header: "XCAFDoc_NoteBinData.hxx".}
proc Size*(this: XCAFDoc_NoteBinData): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "XCAFDoc_NoteBinData.hxx".}
proc Data*(this: XCAFDoc_NoteBinData): handle[TColStd_HArray1OfByte] {.noSideEffect,
    importcpp: "Data", header: "XCAFDoc_NoteBinData.hxx".}
proc ID*(this: XCAFDoc_NoteBinData): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NoteBinData.hxx".}
proc NewEmpty*(this: XCAFDoc_NoteBinData): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_NoteBinData.hxx".}
proc Restore*(this: var XCAFDoc_NoteBinData; theAttrFrom: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_NoteBinData.hxx".}
proc Paste*(this: XCAFDoc_NoteBinData; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_NoteBinData.hxx".}
proc Dump*(this: XCAFDoc_NoteBinData; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_NoteBinData.hxx".}
discard "forward decl of XCAFDoc_NoteBinData"
type
  Handle_XCAFDoc_NoteBinData* = handle[XCAFDoc_NoteBinData]
