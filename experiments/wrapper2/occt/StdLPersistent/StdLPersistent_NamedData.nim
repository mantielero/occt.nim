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
  StdLPersistentNamedData* {.importcpp: "StdLPersistent_NamedData",
                            header: "StdLPersistent_NamedData.hxx", bycopy.} = object of StdObjMgtAttribute[
      TDataStdNamedData]      ## ! Read persistent data from a file.


proc read*(this: var StdLPersistentNamedData; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_NamedData.hxx".}
proc write*(this: StdLPersistentNamedData; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_NamedData.hxx".}
proc pChildren*(this: StdLPersistentNamedData; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_NamedData.hxx".}
proc pName*(this: StdLPersistentNamedData): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_NamedData.hxx".}
proc `import`*(this: StdLPersistentNamedData;
              theAttribute: Handle[TDataStdNamedData]) {.noSideEffect,
    importcpp: "Import", header: "StdLPersistent_NamedData.hxx".}
