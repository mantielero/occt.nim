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
  ../StdObjMgt/StdObjMgt_Attribute, StdLPersistent_HString,
  ../TDataStd/TDataStd_Variable

type
  StdLPersistent_Variable* {.importcpp: "StdLPersistent_Variable",
                            header: "StdLPersistent_Variable.hxx", bycopy.} = object of StdObjMgt_Attribute[
      TDataStd_Variable]      ## ! Empty constructor.


proc constructStdLPersistent_Variable*(): StdLPersistent_Variable {.constructor,
    importcpp: "StdLPersistent_Variable(@)", header: "StdLPersistent_Variable.hxx".}
proc Read*(this: var StdLPersistent_Variable; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_Variable.hxx".}
proc Write*(this: StdLPersistent_Variable; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Variable.hxx".}
proc PChildren*(this: StdLPersistent_Variable;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdLPersistent_Variable.hxx".}
proc PName*(this: StdLPersistent_Variable): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Variable.hxx".}
proc Import*(this: StdLPersistent_Variable; theAttribute: handle[TDataStd_Variable]) {.
    noSideEffect, importcpp: "Import", header: "StdLPersistent_Variable.hxx".}