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

discard "forward decl of TDF_Data"
type
  StdLPersistentData* {.importcpp: "StdLPersistent_Data",
                       header: "StdLPersistent_Data.hxx", bycopy.} = object of StdObjMgtPersistent ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor.


proc constructStdLPersistentData*(): StdLPersistentData {.constructor,
    importcpp: "StdLPersistent_Data(@)", header: "StdLPersistent_Data.hxx".}
proc read*(this: var StdLPersistentData; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_Data.hxx".}
proc write*(this: StdLPersistentData; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Data.hxx".}
proc pChildren*(this: StdLPersistentData; theChildren: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Data.hxx".}
proc pName*(this: StdLPersistentData): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Data.hxx".}
proc `import`*(this: StdLPersistentData): Handle[TDF_Data] {.noSideEffect,
    importcpp: "Import", header: "StdLPersistent_Data.hxx".}

























