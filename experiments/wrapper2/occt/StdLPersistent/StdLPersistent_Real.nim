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
  StdLPersistentReal* {.importcpp: "StdLPersistent_Real",
                       header: "StdLPersistent_Real.hxx", bycopy.} = object of StdObjMgtAttribute[
      TDataStdReal]           ## ! Empty constructor.


proc constructStdLPersistentReal*(): StdLPersistentReal {.constructor,
    importcpp: "StdLPersistent_Real(@)", header: "StdLPersistent_Real.hxx".}
proc read*(this: var StdLPersistentReal; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_Real.hxx".}
proc write*(this: StdLPersistentReal; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Real.hxx".}
proc pChildren*(this: StdLPersistentReal; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Real.hxx".}
proc pName*(this: StdLPersistentReal): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Real.hxx".}
proc `import`*(this: StdLPersistentReal; theAttribute: Handle[TDataStdReal]) {.
    noSideEffect, importcpp: "Import", header: "StdLPersistent_Real.hxx".}
