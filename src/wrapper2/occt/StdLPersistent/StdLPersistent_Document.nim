##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../StdObjMgt/StdObjMgt_Persistent

discard "forward decl of TDocStd_Document"
discard "forward decl of StdLPersistent_Data"
type
  StdLPersistent_Document* {.importcpp: "StdLPersistent_Document",
                            header: "StdLPersistent_Document.hxx", bycopy.} = object of StdObjMgt_Persistent ##
                                                                                                      ## !
                                                                                                      ## Read
                                                                                                      ## persistent
                                                                                                      ## data
                                                                                                      ## from
                                                                                                      ## a
                                                                                                      ## file.


proc Read*(this: var StdLPersistent_Document; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_Document.hxx".}
proc Write*(this: StdLPersistent_Document; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Document.hxx".}
proc PChildren*(this: StdLPersistent_Document; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Document.hxx".}
proc PName*(this: StdLPersistent_Document): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Document.hxx".}
proc ImportDocument*(this: StdLPersistent_Document;
                    theDocument: handle[TDocStd_Document]) {.noSideEffect,
    importcpp: "ImportDocument", header: "StdLPersistent_Document.hxx".}