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
  ../StdObjMgt/StdObjMgt_Attribute, ../TDataStd/TDataStd_Real

type
  StdLPersistent_Real* {.importcpp: "StdLPersistent_Real",
                        header: "StdLPersistent_Real.hxx", bycopy.} = object of StdObjMgt_Attribute[
      TDataStd_Real]          ## ! Empty constructor.


proc constructStdLPersistent_Real*(): StdLPersistent_Real {.constructor,
    importcpp: "StdLPersistent_Real(@)", header: "StdLPersistent_Real.hxx".}
proc Read*(this: var StdLPersistent_Real; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_Real.hxx".}
proc Write*(this: StdLPersistent_Real; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Real.hxx".}
proc PChildren*(this: StdLPersistent_Real; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Real.hxx".}
proc PName*(this: StdLPersistent_Real): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Real.hxx".}
proc Import*(this: StdLPersistent_Real; theAttribute: handle[TDataStd_Real]) {.
    noSideEffect, importcpp: "Import", header: "StdLPersistent_Real.hxx".}