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
  StdLPersistentFunction* {.importcpp: "StdLPersistent_Function",
                           header: "StdLPersistent_Function.hxx", bycopy.} = object of StdObjMgtAttribute[
      TFunctionFunction]      ## ! Empty constructor.


proc constructStdLPersistentFunction*(): StdLPersistentFunction {.constructor,
    importcpp: "StdLPersistent_Function(@)", header: "StdLPersistent_Function.hxx".}
proc read*(this: var StdLPersistentFunction; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_Function.hxx".}
proc write*(this: StdLPersistentFunction; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Function.hxx".}
proc pChildren*(this: StdLPersistentFunction; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Function.hxx".}
proc pName*(this: StdLPersistentFunction): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Function.hxx".}
proc `import`*(this: StdLPersistentFunction;
              theAttribute: Handle[TFunctionFunction]) {.noSideEffect,
    importcpp: "Import", header: "StdLPersistent_Function.hxx".}

























