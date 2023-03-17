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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_RelocationTable"


proc IsMine*(theLabel: TDF_Label): bool {.cdecl,
                                      importcpp: "XCAFDoc_Note::IsMine(@)",
                                      header: "XCAFDoc_Note.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_Note] {.cdecl,
    importcpp: "XCAFDoc_Note::Get(@)", header: "XCAFDoc_Note.hxx".}
proc Set*(this: var XCAFDoc_Note; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Note.hxx".}
proc UserName*(this: XCAFDoc_Note): TCollection_ExtendedString {.noSideEffect, cdecl,
    importcpp: "UserName", header: "XCAFDoc_Note.hxx".}
proc TimeStamp*(this: XCAFDoc_Note): TCollection_ExtendedString {.noSideEffect,
    cdecl, importcpp: "TimeStamp", header: "XCAFDoc_Note.hxx".}
proc IsOrphan*(this: XCAFDoc_Note): bool {.noSideEffect, cdecl, importcpp: "IsOrphan",
                                       header: "XCAFDoc_Note.hxx".}
proc GetObject*(this: XCAFDoc_Note): handle[XCAFNoteObjects_NoteObject] {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "XCAFDoc_Note.hxx".}
proc SetObject*(this: var XCAFDoc_Note;
               theObject: handle[XCAFNoteObjects_NoteObject]) {.cdecl,
    importcpp: "SetObject", header: "XCAFDoc_Note.hxx".}
proc Restore*(this: var XCAFDoc_Note; theAttrFrom: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Note.hxx".}
proc Paste*(this: XCAFDoc_Note; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Note.hxx".}
proc Dump*(this: XCAFDoc_Note; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_Note.hxx".}
proc DumpJson*(this: XCAFDoc_Note; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Note.hxx".}
type
  Handle_XCAFDoc_Note* = handle[XCAFDoc_Note]
