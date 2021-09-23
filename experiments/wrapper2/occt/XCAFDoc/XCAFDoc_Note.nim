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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_ExtendedString, ../OSD/OSD_File,
  ../TDF/TDF_DerivedAttribute, ../TDF/TDF_LabelSequence,
  ../XCAFNoteObjects/XCAFNoteObjects_NoteObject

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_RelocationTable"
type
  XCAFDoc_Note* {.importcpp: "XCAFDoc_Note", header: "XCAFDoc_Note.hxx", bycopy.} = object of TDF_Attribute ##  Overrides TDF_Attribute virtuals
                                                                                                  ## ! Creates an empty note.
    ## /< Name of the user, who created the note.
    ## /< Timestamp, when the note was created.

  XCAFDoc_Notebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_Note::get_type_name(@)",
                              header: "XCAFDoc_Note.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_Note::get_type_descriptor(@)", header: "XCAFDoc_Note.hxx".}
proc DynamicType*(this: XCAFDoc_Note): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Note.hxx".}
proc IsMine*(theLabel: TDF_Label): Standard_Boolean {.
    importcpp: "XCAFDoc_Note::IsMine(@)", header: "XCAFDoc_Note.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_Note] {.
    importcpp: "XCAFDoc_Note::Get(@)", header: "XCAFDoc_Note.hxx".}
proc Set*(this: var XCAFDoc_Note; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString) {.importcpp: "Set",
    header: "XCAFDoc_Note.hxx".}
proc UserName*(this: XCAFDoc_Note): TCollection_ExtendedString {.noSideEffect,
    importcpp: "UserName", header: "XCAFDoc_Note.hxx".}
proc TimeStamp*(this: XCAFDoc_Note): TCollection_ExtendedString {.noSideEffect,
    importcpp: "TimeStamp", header: "XCAFDoc_Note.hxx".}
proc IsOrphan*(this: XCAFDoc_Note): Standard_Boolean {.noSideEffect,
    importcpp: "IsOrphan", header: "XCAFDoc_Note.hxx".}
proc GetObject*(this: XCAFDoc_Note): handle[XCAFNoteObjects_NoteObject] {.
    noSideEffect, importcpp: "GetObject", header: "XCAFDoc_Note.hxx".}
proc SetObject*(this: var XCAFDoc_Note;
               theObject: handle[XCAFNoteObjects_NoteObject]) {.
    importcpp: "SetObject", header: "XCAFDoc_Note.hxx".}
proc Restore*(this: var XCAFDoc_Note; theAttrFrom: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Note.hxx".}
proc Paste*(this: XCAFDoc_Note; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Note.hxx".}
proc Dump*(this: XCAFDoc_Note; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Note.hxx".}
proc DumpJson*(this: XCAFDoc_Note; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_Note.hxx".}
discard "forward decl of XCAFDoc_Note"
type
  Handle_XCAFDoc_Note* = handle[XCAFDoc_Note]
