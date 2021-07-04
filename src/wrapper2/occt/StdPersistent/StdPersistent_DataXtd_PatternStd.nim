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
  ../StdObjMgt/StdObjMgt_Attribute, ../TDataXtd/TDataXtd_PatternStd

type
  StdPersistent_DataXtd_PatternStd* {.importcpp: "StdPersistent_DataXtd_PatternStd", header: "StdPersistent_DataXtd_PatternStd.hxx",
                                     bycopy.} = object of StdObjMgt_Attribute[
      TDataXtd_PatternStd]    ## ! Read persistent data from a file.


proc Read*(this: var StdPersistent_DataXtd_PatternStd;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdPersistent_DataXtd_PatternStd.hxx".}
proc Write*(this: var StdPersistent_DataXtd_PatternStd;
           theWriteData: var StdObjMgt_WriteData) {.importcpp: "Write",
    header: "StdPersistent_DataXtd_PatternStd.hxx".}
proc PChildren*(this: StdPersistent_DataXtd_PatternStd;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_DataXtd_PatternStd.hxx".}
proc PName*(this: StdPersistent_DataXtd_PatternStd): Standard_CString {.
    noSideEffect, importcpp: "PName",
    header: "StdPersistent_DataXtd_PatternStd.hxx".}
proc Import*(this: StdPersistent_DataXtd_PatternStd;
            theAttribute: handle[TDataXtd_PatternStd]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_DataXtd_PatternStd.hxx".}