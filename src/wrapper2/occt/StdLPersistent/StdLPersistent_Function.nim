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
  ../StdObjMgt/StdObjMgt_Attribute, ../TFunction/TFunction_Function,
  ../Standard/Standard_GUID

type
  StdLPersistent_Function* {.importcpp: "StdLPersistent_Function",
                            header: "StdLPersistent_Function.hxx", bycopy.} = object of StdObjMgt_Attribute[
      TFunction_Function]     ## ! Empty constructor.


proc constructStdLPersistent_Function*(): StdLPersistent_Function {.constructor,
    importcpp: "StdLPersistent_Function(@)", header: "StdLPersistent_Function.hxx".}
proc Read*(this: var StdLPersistent_Function; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_Function.hxx".}
proc Write*(this: StdLPersistent_Function; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Function.hxx".}
proc PChildren*(this: StdLPersistent_Function; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Function.hxx".}
proc PName*(this: StdLPersistent_Function): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Function.hxx".}
proc Import*(this: StdLPersistent_Function;
            theAttribute: handle[TFunction_Function]) {.noSideEffect,
    importcpp: "Import", header: "StdLPersistent_Function.hxx".}