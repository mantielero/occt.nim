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

import
  TDataStd_GenericExtString

discard "forward decl of TDataStd_Comment"
discard "forward decl of TDataStd_Comment"
type
  Handle_TDataStd_Comment* = handle[TDataStd_Comment]

## ! Comment attribute. may be  associated to any label
## ! to store user comment.

type
  TDataStd_Comment* {.importcpp: "TDataStd_Comment",
                     header: "TDataStd_Comment.hxx", bycopy.} = object of TDataStd_GenericExtString ##
                                                                                             ## !
                                                                                             ## class
                                                                                             ## methods
                                                                                             ##
                                                                                             ## !
                                                                                             ## =============
                                                                                             ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## the
                                                                                             ## GUID
                                                                                             ## for
                                                                                             ## comments.


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Comment::GetID(@)",
                            header: "TDataStd_Comment.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_Comment] {.
    importcpp: "TDataStd_Comment::Set(@)", header: "TDataStd_Comment.hxx".}
proc Set*(label: TDF_Label; string: TCollection_ExtendedString): handle[
    TDataStd_Comment] {.importcpp: "TDataStd_Comment::Set(@)",
                       header: "TDataStd_Comment.hxx".}
proc constructTDataStd_Comment*(): TDataStd_Comment {.constructor,
    importcpp: "TDataStd_Comment(@)", header: "TDataStd_Comment.hxx".}
proc Set*(this: var TDataStd_Comment; S: TCollection_ExtendedString) {.
    importcpp: "Set", header: "TDataStd_Comment.hxx".}
proc SetID*(this: var TDataStd_Comment; guid: Standard_GUID) {.importcpp: "SetID",
    header: "TDataStd_Comment.hxx".}
proc SetID*(this: var TDataStd_Comment) {.importcpp: "SetID",
                                      header: "TDataStd_Comment.hxx".}
proc Dump*(this: TDataStd_Comment; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Comment.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Comment , TDataStd_GenericExtString ) }
## Error: token expected: ) but got: ,!!!
