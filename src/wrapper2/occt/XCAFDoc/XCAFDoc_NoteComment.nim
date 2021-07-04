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
  XCAFDoc_Note

## ! A comment note attribute.
## ! Contains a textual comment.

type
  XCAFDoc_NoteComment* {.importcpp: "XCAFDoc_NoteComment",
                        header: "XCAFDoc_NoteComment.hxx", bycopy.} = object of XCAFDoc_Note ##  Overrides TDF_Attribute virtuals
    ## /< Comment text.

  XCAFDoc_NoteCommentbase_type* = XCAFDoc_Note

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_NoteComment::get_type_name(@)",
                              header: "XCAFDoc_NoteComment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_NoteComment::get_type_descriptor(@)",
    header: "XCAFDoc_NoteComment.hxx".}
proc DynamicType*(this: XCAFDoc_NoteComment): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_NoteComment.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_NoteComment::GetID(@)",
                            header: "XCAFDoc_NoteComment.hxx".}
proc Get*(theLabel: TDF_Label): handle[XCAFDoc_NoteComment] {.
    importcpp: "XCAFDoc_NoteComment::Get(@)", header: "XCAFDoc_NoteComment.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theComment: TCollection_ExtendedString): handle[XCAFDoc_NoteComment] {.
    importcpp: "XCAFDoc_NoteComment::Set(@)", header: "XCAFDoc_NoteComment.hxx".}
proc constructXCAFDoc_NoteComment*(): XCAFDoc_NoteComment {.constructor,
    importcpp: "XCAFDoc_NoteComment(@)", header: "XCAFDoc_NoteComment.hxx".}
proc Set*(this: var XCAFDoc_NoteComment; theComment: TCollection_ExtendedString) {.
    importcpp: "Set", header: "XCAFDoc_NoteComment.hxx".}
proc Comment*(this: XCAFDoc_NoteComment): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Comment", header: "XCAFDoc_NoteComment.hxx".}
proc ID*(this: XCAFDoc_NoteComment): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NoteComment.hxx".}
proc NewEmpty*(this: XCAFDoc_NoteComment): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_NoteComment.hxx".}
proc Restore*(this: var XCAFDoc_NoteComment; theAttrFrom: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_NoteComment.hxx".}
proc Paste*(this: XCAFDoc_NoteComment; theAttrInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_NoteComment.hxx".}
proc Dump*(this: XCAFDoc_NoteComment; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_NoteComment.hxx".}
discard "forward decl of XCAFDoc_NoteComment"
type
  Handle_XCAFDoc_NoteComment* = handle[XCAFDoc_NoteComment]
