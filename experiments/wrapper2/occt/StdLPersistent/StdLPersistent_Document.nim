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

discard "forward decl of TDocStd_Document"
discard "forward decl of StdLPersistent_Data"
type
  StdLPersistentDocument* {.importcpp: "StdLPersistent_Document",
                           header: "StdLPersistent_Document.hxx", bycopy.} = object of StdObjMgtPersistent ##
                                                                                                    ## !
                                                                                                    ## Read
                                                                                                    ## persistent
                                                                                                    ## data
                                                                                                    ## from
                                                                                                    ## a
                                                                                                    ## file.


proc read*(this: var StdLPersistentDocument; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_Document.hxx".}
proc write*(this: StdLPersistentDocument; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Document.hxx".}
proc pChildren*(this: StdLPersistentDocument; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Document.hxx".}
proc pName*(this: StdLPersistentDocument): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Document.hxx".}
proc importDocument*(this: StdLPersistentDocument;
                    theDocument: Handle[TDocStdDocument]) {.noSideEffect,
    importcpp: "ImportDocument", header: "StdLPersistent_Document.hxx".}
