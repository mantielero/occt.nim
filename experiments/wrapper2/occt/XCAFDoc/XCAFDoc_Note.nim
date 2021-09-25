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
type
  XCAFDocNote* {.importcpp: "XCAFDoc_Note", header: "XCAFDoc_Note.hxx", bycopy.} = object of TDF_Attribute ##  Overrides TDF_Attribute virtuals
                                                                                                 ## ! Creates an empty note.
    ## /< Name of the user, who created the note.
    ## /< Timestamp, when the note was created.

  XCAFDocNotebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_Note::get_type_name(@)",
                            header: "XCAFDoc_Note.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_Note::get_type_descriptor(@)", header: "XCAFDoc_Note.hxx".}
proc dynamicType*(this: XCAFDocNote): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Note.hxx".}
proc isMine*(theLabel: TDF_Label): bool {.importcpp: "XCAFDoc_Note::IsMine(@)",
                                      header: "XCAFDoc_Note.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocNote] {.
    importcpp: "XCAFDoc_Note::Get(@)", header: "XCAFDoc_Note.hxx".}
proc set*(this: var XCAFDocNote; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString) {.importcpp: "Set",
    header: "XCAFDoc_Note.hxx".}
proc userName*(this: XCAFDocNote): TCollectionExtendedString {.noSideEffect,
    importcpp: "UserName", header: "XCAFDoc_Note.hxx".}
proc timeStamp*(this: XCAFDocNote): TCollectionExtendedString {.noSideEffect,
    importcpp: "TimeStamp", header: "XCAFDoc_Note.hxx".}
proc isOrphan*(this: XCAFDocNote): bool {.noSideEffect, importcpp: "IsOrphan",
                                      header: "XCAFDoc_Note.hxx".}
proc getObject*(this: XCAFDocNote): Handle[XCAFNoteObjectsNoteObject] {.
    noSideEffect, importcpp: "GetObject", header: "XCAFDoc_Note.hxx".}
proc setObject*(this: var XCAFDocNote; theObject: Handle[XCAFNoteObjectsNoteObject]) {.
    importcpp: "SetObject", header: "XCAFDoc_Note.hxx".}
proc restore*(this: var XCAFDocNote; theAttrFrom: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Note.hxx".}
proc paste*(this: XCAFDocNote; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Note.hxx".}
proc dump*(this: XCAFDocNote; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Note.hxx".}
proc dumpJson*(this: XCAFDocNote; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "XCAFDoc_Note.hxx".}
discard "forward decl of XCAFDoc_Note"
type
  HandleXCAFDocNote* = Handle[XCAFDocNote]

