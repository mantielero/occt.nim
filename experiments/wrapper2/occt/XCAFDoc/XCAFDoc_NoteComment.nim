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

## ! A comment note attribute.
## ! Contains a textual comment.

type
  XCAFDocNoteComment* {.importcpp: "XCAFDoc_NoteComment",
                       header: "XCAFDoc_NoteComment.hxx", bycopy.} = object of XCAFDocNote ##  Overrides TDF_Attribute virtuals
    ## /< Comment text.

  XCAFDocNoteCommentbaseType* = XCAFDocNote

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_NoteComment::get_type_name(@)",
                            header: "XCAFDoc_NoteComment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_NoteComment::get_type_descriptor(@)",
    header: "XCAFDoc_NoteComment.hxx".}
proc dynamicType*(this: XCAFDocNoteComment): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_NoteComment.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_NoteComment::GetID(@)",
                           header: "XCAFDoc_NoteComment.hxx".}
proc get*(theLabel: TDF_Label): Handle[XCAFDocNoteComment] {.
    importcpp: "XCAFDoc_NoteComment::Get(@)", header: "XCAFDoc_NoteComment.hxx".}
proc set*(theLabel: TDF_Label; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString;
         theComment: TCollectionExtendedString): Handle[XCAFDocNoteComment] {.
    importcpp: "XCAFDoc_NoteComment::Set(@)", header: "XCAFDoc_NoteComment.hxx".}
proc constructXCAFDocNoteComment*(): XCAFDocNoteComment {.constructor,
    importcpp: "XCAFDoc_NoteComment(@)", header: "XCAFDoc_NoteComment.hxx".}
proc set*(this: var XCAFDocNoteComment; theComment: TCollectionExtendedString) {.
    importcpp: "Set", header: "XCAFDoc_NoteComment.hxx".}
proc comment*(this: XCAFDocNoteComment): TCollectionExtendedString {.noSideEffect,
    importcpp: "Comment", header: "XCAFDoc_NoteComment.hxx".}
proc id*(this: XCAFDocNoteComment): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NoteComment.hxx".}
proc newEmpty*(this: XCAFDocNoteComment): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_NoteComment.hxx".}
proc restore*(this: var XCAFDocNoteComment; theAttrFrom: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_NoteComment.hxx".}
proc paste*(this: XCAFDocNoteComment; theAttrInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_NoteComment.hxx".}
proc dump*(this: XCAFDocNoteComment; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_NoteComment.hxx".}
discard "forward decl of XCAFDoc_NoteComment"
type
  HandleXCAFDocNoteComment* = Handle[XCAFDocNoteComment]

