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
  ../StdObjMgt/StdObjMgt_Attribute, StdLPersistent_HArray1,
  StdLPersistent_HArray2, ../TDataStd/TDataStd_NamedData,
  ../TCollection/TCollection_HExtendedString

type
  StdLPersistent_NamedData* {.importcpp: "StdLPersistent_NamedData",
                             header: "StdLPersistent_NamedData.hxx", bycopy.} = object of StdObjMgt_Attribute[
      TDataStd_NamedData]     ## ! Read persistent data from a file.


proc Read*(this: var StdLPersistent_NamedData; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_NamedData.hxx".}
proc Write*(this: StdLPersistent_NamedData; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_NamedData.hxx".}
proc PChildren*(this: StdLPersistent_NamedData; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_NamedData.hxx".}
proc PName*(this: StdLPersistent_NamedData): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_NamedData.hxx".}
proc Import*(this: StdLPersistent_NamedData;
            theAttribute: handle[TDataStd_NamedData]) {.noSideEffect,
    importcpp: "Import", header: "StdLPersistent_NamedData.hxx".}