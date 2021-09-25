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
  StdLPersistentVariable* {.importcpp: "StdLPersistent_Variable",
                           header: "StdLPersistent_Variable.hxx", bycopy.} = object of StdObjMgtAttribute[
      TDataStdVariable]       ## ! Empty constructor.


proc constructStdLPersistentVariable*(): StdLPersistentVariable {.constructor,
    importcpp: "StdLPersistent_Variable(@)", header: "StdLPersistent_Variable.hxx".}
proc read*(this: var StdLPersistentVariable; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_Variable.hxx".}
proc write*(this: StdLPersistentVariable; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Variable.hxx".}
proc pChildren*(this: StdLPersistentVariable; theChildren: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Variable.hxx".}
proc pName*(this: StdLPersistentVariable): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Variable.hxx".}
proc `import`*(this: StdLPersistentVariable; theAttribute: Handle[TDataStdVariable]) {.
    noSideEffect, importcpp: "Import", header: "StdLPersistent_Variable.hxx".}
