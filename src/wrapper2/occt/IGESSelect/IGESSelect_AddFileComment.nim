##  Created on: 1994-08-26
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_HSequenceOfHAsciiString, IGESSelect_FileModifier,
  ../Standard/Standard_CString, ../Standard/Standard_Integer

discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_AddFileComment"
discard "forward decl of IGESSelect_AddFileComment"
type
  Handle_IGESSelect_AddFileComment* = handle[IGESSelect_AddFileComment]

## ! This class allows to add comment lines on writing an IGES File
## ! These lines are added to Start Section, instead of the only
## ! one blank line written by default.

type
  IGESSelect_AddFileComment* {.importcpp: "IGESSelect_AddFileComment",
                              header: "IGESSelect_AddFileComment.hxx", bycopy.} = object of IGESSelect_FileModifier ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## new
                                                                                                             ## emoty
                                                                                                             ## AddFileComment.
                                                                                                             ## Use
                                                                                                             ## AddLine
                                                                                                             ## to
                                                                                                             ## complete
                                                                                                             ## it


proc constructIGESSelect_AddFileComment*(): IGESSelect_AddFileComment {.
    constructor, importcpp: "IGESSelect_AddFileComment(@)",
    header: "IGESSelect_AddFileComment.hxx".}
proc Clear*(this: var IGESSelect_AddFileComment) {.importcpp: "Clear",
    header: "IGESSelect_AddFileComment.hxx".}
proc AddLine*(this: var IGESSelect_AddFileComment; line: Standard_CString) {.
    importcpp: "AddLine", header: "IGESSelect_AddFileComment.hxx".}
proc AddLines*(this: var IGESSelect_AddFileComment;
              lines: handle[TColStd_HSequenceOfHAsciiString]) {.
    importcpp: "AddLines", header: "IGESSelect_AddFileComment.hxx".}
proc NbLines*(this: IGESSelect_AddFileComment): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IGESSelect_AddFileComment.hxx".}
proc Line*(this: IGESSelect_AddFileComment; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Line", header: "IGESSelect_AddFileComment.hxx".}
proc Lines*(this: IGESSelect_AddFileComment): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "Lines",
                                      header: "IGESSelect_AddFileComment.hxx".}
proc Perform*(this: IGESSelect_AddFileComment; ctx: var IFSelect_ContextWrite;
             writer: var IGESData_IGESWriter) {.noSideEffect, importcpp: "Perform",
    header: "IGESSelect_AddFileComment.hxx".}
proc Label*(this: IGESSelect_AddFileComment): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_AddFileComment.hxx".}
type
  IGESSelect_AddFileCommentbase_type* = IGESSelect_FileModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_AddFileComment::get_type_name(@)",
                              header: "IGESSelect_AddFileComment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_AddFileComment::get_type_descriptor(@)",
    header: "IGESSelect_AddFileComment.hxx".}
proc DynamicType*(this: IGESSelect_AddFileComment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_AddFileComment.hxx".}