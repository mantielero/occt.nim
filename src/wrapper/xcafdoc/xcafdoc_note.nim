import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../xcafnoteobjects/xcafnoteobjects_types


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



proc isMine*(theLabel: TDF_Label): bool {.cdecl,
                                      importcpp: "XCAFDoc_Note::IsMine(@)",
                                      header: "XCAFDoc_Note.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocNote] {.cdecl,
    importcpp: "XCAFDoc_Note::Get(@)", header: "XCAFDoc_Note.hxx".}
proc set*(this: var XCAFDocNote; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Note.hxx".}
proc userName*(this: XCAFDocNote): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "UserName", header: "XCAFDoc_Note.hxx".}
proc timeStamp*(this: XCAFDocNote): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "TimeStamp", header: "XCAFDoc_Note.hxx".}
proc isOrphan*(this: XCAFDocNote): bool {.noSideEffect, cdecl, importcpp: "IsOrphan",
                                      header: "XCAFDoc_Note.hxx".}
proc getObject*(this: XCAFDocNote): Handle[XCAFNoteObjectsNoteObject] {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "XCAFDoc_Note.hxx".}
proc setObject*(this: var XCAFDocNote; theObject: Handle[XCAFNoteObjectsNoteObject]) {.
    cdecl, importcpp: "SetObject", header: "XCAFDoc_Note.hxx".}
proc restore*(this: var XCAFDocNote; theAttrFrom: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Note.hxx".}
proc paste*(this: XCAFDocNote; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Note.hxx".}
proc dump*(this: XCAFDocNote; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_Note.hxx".}
proc dumpJson*(this: XCAFDocNote; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Note.hxx".}


