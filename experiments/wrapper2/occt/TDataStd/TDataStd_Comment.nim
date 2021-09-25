##  Created on: 1998-01-15
##  Created by: Denis PASCAL
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TDataStd_Comment"
discard "forward decl of TDataStd_Comment"
type
  HandleTDataStdComment* = Handle[TDataStdComment]

## ! Comment attribute. may be  associated to any label
## ! to store user comment.

type
  TDataStdComment* {.importcpp: "TDataStd_Comment", header: "TDataStd_Comment.hxx",
                    bycopy.} = object of TDataStdGenericExtString ## ! class methods
                                                             ## ! =============
                                                             ## ! Returns the GUID for comments.


proc getID*(): StandardGUID {.importcpp: "TDataStd_Comment::GetID(@)",
                           header: "TDataStd_Comment.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdComment] {.
    importcpp: "TDataStd_Comment::Set(@)", header: "TDataStd_Comment.hxx".}
proc set*(label: TDF_Label; string: TCollectionExtendedString): Handle[
    TDataStdComment] {.importcpp: "TDataStd_Comment::Set(@)",
                      header: "TDataStd_Comment.hxx".}
proc constructTDataStdComment*(): TDataStdComment {.constructor,
    importcpp: "TDataStd_Comment(@)", header: "TDataStd_Comment.hxx".}
proc set*(this: var TDataStdComment; s: TCollectionExtendedString) {.importcpp: "Set",
    header: "TDataStd_Comment.hxx".}
proc setID*(this: var TDataStdComment; guid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_Comment.hxx".}
proc setID*(this: var TDataStdComment) {.importcpp: "SetID",
                                     header: "TDataStd_Comment.hxx".}
proc dump*(this: TDataStdComment; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Comment.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Comment , TDataStd_GenericExtString ) }
## Error: token expected: ) but got: ,!!!

