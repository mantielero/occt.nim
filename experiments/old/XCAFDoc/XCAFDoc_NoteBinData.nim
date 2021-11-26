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
type
  XCAFDocNoteBinData* {.importcpp: "XCAFDoc_NoteBinData",
                       header: "XCAFDoc_NoteBinData.hxx", bycopy.} = object of XCAFDocNote ##  Overrides TDF_Attribute virtuals
    ## /< Note title.
    ## /< MIME type of data.
    ## /< Byte data array.

  XCAFDocNoteBinDatabaseType* = XCAFDocNote

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_NoteBinData::get_type_name(@)",
                            header: "XCAFDoc_NoteBinData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_NoteBinData::get_type_descriptor(@)",
    header: "XCAFDoc_NoteBinData.hxx".}
proc dynamicType*(this: XCAFDocNoteBinData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_NoteBinData.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_NoteBinData::GetID(@)",
                           header: "XCAFDoc_NoteBinData.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocNoteBinData] {.
    importcpp: "XCAFDoc_NoteBinData::Get(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(theLabel: TDF_Label; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString;
         theTitle: TCollectionExtendedString; theMIMEtype: TCollectionAsciiString;
         theFile: var OSD_File): Handle[XCAFDocNoteBinData] {.
    importcpp: "XCAFDoc_NoteBinData::Set(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(theLabel: TDF_Label; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString;
         theTitle: TCollectionExtendedString; theMIMEtype: TCollectionAsciiString;
         theData: Handle[TColStdHArray1OfByte]): Handle[XCAFDocNoteBinData] {.
    importcpp: "XCAFDoc_NoteBinData::Set(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc constructXCAFDocNoteBinData*(): XCAFDocNoteBinData {.constructor,
    importcpp: "XCAFDoc_NoteBinData(@)", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(this: var XCAFDocNoteBinData; theTitle: TCollectionExtendedString;
         theMIMEtype: TCollectionAsciiString; theFile: var OSD_File): bool {.
    importcpp: "Set", header: "XCAFDoc_NoteBinData.hxx".}
proc set*(this: var XCAFDocNoteBinData; theTitle: TCollectionExtendedString;
         theMIMEtype: TCollectionAsciiString;
         theData: Handle[TColStdHArray1OfByte]) {.importcpp: "Set",
    header: "XCAFDoc_NoteBinData.hxx".}
proc title*(this: XCAFDocNoteBinData): TCollectionExtendedString {.noSideEffect,
    importcpp: "Title", header: "XCAFDoc_NoteBinData.hxx".}
proc mIMEtype*(this: XCAFDocNoteBinData): TCollectionAsciiString {.noSideEffect,
    importcpp: "MIMEtype", header: "XCAFDoc_NoteBinData.hxx".}
proc size*(this: XCAFDocNoteBinData): cint {.noSideEffect, importcpp: "Size",
    header: "XCAFDoc_NoteBinData.hxx".}
proc data*(this: XCAFDocNoteBinData): Handle[TColStdHArray1OfByte] {.noSideEffect,
    importcpp: "Data", header: "XCAFDoc_NoteBinData.hxx".}
proc id*(this: XCAFDocNoteBinData): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NoteBinData.hxx".}
proc newEmpty*(this: XCAFDocNoteBinData): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_NoteBinData.hxx".}
proc restore*(this: var XCAFDocNoteBinData; theAttrFrom: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_NoteBinData.hxx".}
proc paste*(this: XCAFDocNoteBinData; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_NoteBinData.hxx".}
proc dump*(this: XCAFDocNoteBinData; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_NoteBinData.hxx".}
discard "forward decl of XCAFDoc_NoteBinData"
type
  HandleC1C1* = Handle[XCAFDocNoteBinData]


























