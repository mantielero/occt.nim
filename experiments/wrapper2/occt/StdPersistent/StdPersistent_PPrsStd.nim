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

type
  StdPersistentPPrsStd* {.importcpp: "StdPersistent_PPrsStd",
                         header: "StdPersistent_PPrsStd.hxx", bycopy.} = object

  StdPersistentPPrsStdAISPresentation* {.importcpp: "StdPersistent_PPrsStd::AISPresentation",
                                        header: "StdPersistent_PPrsStd.hxx",
                                        bycopy.} = object of StdObjMgtAttribute[
      TDataXtdPresentation]   ## ! Read persistent data from a file.


proc read*(this: var StdPersistentPPrsStdAISPresentation;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "StdPersistent_PPrsStd.hxx".}
proc write*(this: StdPersistentPPrsStdAISPresentation;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "StdPersistent_PPrsStd.hxx".}
proc pChildren*(this: StdPersistentPPrsStdAISPresentation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_PPrsStd.hxx".}
proc pName*(this: StdPersistentPPrsStdAISPresentation): StandardCString {.
    noSideEffect, importcpp: "PName", header: "StdPersistent_PPrsStd.hxx".}
proc `import`*(this: StdPersistentPPrsStdAISPresentation;
              theAttribute: Handle[TDataXtdPresentation]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_PPrsStd.hxx".}
type
  StdPersistentPPrsStdAISPresentation1* {.
      importcpp: "StdPersistent_PPrsStd::AISPresentation_1",
      header: "StdPersistent_PPrsStd.hxx", bycopy.} = object of StdPersistentPPrsStdAISPresentation ##
                                                                                             ## !
                                                                                             ## Read
                                                                                             ## persistent
                                                                                             ## data
                                                                                             ## from
                                                                                             ## a
                                                                                             ## file.


proc read*(this: var StdPersistentPPrsStdAISPresentation1;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "StdPersistent_PPrsStd.hxx".}
proc write*(this: var StdPersistentPPrsStdAISPresentation1;
           theWriteData: var StdObjMgtWriteData) {.importcpp: "Write",
    header: "StdPersistent_PPrsStd.hxx".}
proc pName*(this: StdPersistentPPrsStdAISPresentation1): StandardCString {.
    noSideEffect, importcpp: "PName", header: "StdPersistent_PPrsStd.hxx".}
proc `import`*(this: StdPersistentPPrsStdAISPresentation1;
              theAttribute: Handle[TDataXtdPresentation]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_PPrsStd.hxx".}
