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

discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_AddFileComment"
discard "forward decl of IGESSelect_AddFileComment"
type
  HandleIGESSelectAddFileComment* = Handle[IGESSelectAddFileComment]

## ! This class allows to add comment lines on writing an IGES File
## ! These lines are added to Start Section, instead of the only
## ! one blank line written by default.

type
  IGESSelectAddFileComment* {.importcpp: "IGESSelect_AddFileComment",
                             header: "IGESSelect_AddFileComment.hxx", bycopy.} = object of IGESSelectFileModifier ##
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


proc constructIGESSelectAddFileComment*(): IGESSelectAddFileComment {.constructor,
    importcpp: "IGESSelect_AddFileComment(@)",
    header: "IGESSelect_AddFileComment.hxx".}
proc clear*(this: var IGESSelectAddFileComment) {.importcpp: "Clear",
    header: "IGESSelect_AddFileComment.hxx".}
proc addLine*(this: var IGESSelectAddFileComment; line: StandardCString) {.
    importcpp: "AddLine", header: "IGESSelect_AddFileComment.hxx".}
proc addLines*(this: var IGESSelectAddFileComment;
              lines: Handle[TColStdHSequenceOfHAsciiString]) {.
    importcpp: "AddLines", header: "IGESSelect_AddFileComment.hxx".}
proc nbLines*(this: IGESSelectAddFileComment): int {.noSideEffect,
    importcpp: "NbLines", header: "IGESSelect_AddFileComment.hxx".}
proc line*(this: IGESSelectAddFileComment; num: int): StandardCString {.noSideEffect,
    importcpp: "Line", header: "IGESSelect_AddFileComment.hxx".}
proc lines*(this: IGESSelectAddFileComment): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "Lines", header: "IGESSelect_AddFileComment.hxx".}
proc perform*(this: IGESSelectAddFileComment; ctx: var IFSelectContextWrite;
             writer: var IGESDataIGESWriter) {.noSideEffect, importcpp: "Perform",
    header: "IGESSelect_AddFileComment.hxx".}
proc label*(this: IGESSelectAddFileComment): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_AddFileComment.hxx".}
type
  IGESSelectAddFileCommentbaseType* = IGESSelectFileModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_AddFileComment::get_type_name(@)",
                            header: "IGESSelect_AddFileComment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_AddFileComment::get_type_descriptor(@)",
    header: "IGESSelect_AddFileComment.hxx".}
proc dynamicType*(this: IGESSelectAddFileComment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_AddFileComment.hxx".}
