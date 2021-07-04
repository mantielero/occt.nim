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
  ../StdObjMgt/StdObjMgt_Attribute, ../StdLPersistent/StdLPersistent_HString,
  ../TDataXtd/TDataXtd_Presentation

type
  StdPersistent_PPrsStd* {.importcpp: "StdPersistent_PPrsStd",
                          header: "StdPersistent_PPrsStd.hxx", bycopy.} = object

  StdPersistent_PPrsStdAISPresentation* {.
      importcpp: "StdPersistent_PPrsStd::AISPresentation",
      header: "StdPersistent_PPrsStd.hxx", bycopy.} = object of StdObjMgt_Attribute[
      TDataXtd_Presentation]  ## ! Read persistent data from a file.


proc Read*(this: var StdPersistent_PPrsStdAISPresentation;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdPersistent_PPrsStd.hxx".}
proc Write*(this: StdPersistent_PPrsStdAISPresentation;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "StdPersistent_PPrsStd.hxx".}
proc PChildren*(this: StdPersistent_PPrsStdAISPresentation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_PPrsStd.hxx".}
proc PName*(this: StdPersistent_PPrsStdAISPresentation): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "StdPersistent_PPrsStd.hxx".}
proc Import*(this: StdPersistent_PPrsStdAISPresentation;
            theAttribute: handle[TDataXtd_Presentation]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_PPrsStd.hxx".}
type
  StdPersistent_PPrsStdAISPresentation_1* {.
      importcpp: "StdPersistent_PPrsStd::AISPresentation_1",
      header: "StdPersistent_PPrsStd.hxx", bycopy.} = object of StdPersistent_PPrsStdAISPresentation ##
                                                                                              ## !
                                                                                              ## Read
                                                                                              ## persistent
                                                                                              ## data
                                                                                              ## from
                                                                                              ## a
                                                                                              ## file.


proc Read*(this: var StdPersistent_PPrsStdAISPresentation_1;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdPersistent_PPrsStd.hxx".}
proc Write*(this: var StdPersistent_PPrsStdAISPresentation_1;
           theWriteData: var StdObjMgt_WriteData) {.importcpp: "Write",
    header: "StdPersistent_PPrsStd.hxx".}
proc PName*(this: StdPersistent_PPrsStdAISPresentation_1): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "StdPersistent_PPrsStd.hxx".}
proc Import*(this: StdPersistent_PPrsStdAISPresentation_1;
            theAttribute: handle[TDataXtd_Presentation]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_PPrsStd.hxx".}