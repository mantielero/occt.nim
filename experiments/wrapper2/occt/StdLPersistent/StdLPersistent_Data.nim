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
  ../StdObjMgt/StdObjMgt_Persistent, StdLPersistent_HArray1

discard "forward decl of TDF_Data"
type
  StdLPersistent_Data* {.importcpp: "StdLPersistent_Data",
                        header: "StdLPersistent_Data.hxx", bycopy.} = object of StdObjMgt_Persistent ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.


proc constructStdLPersistent_Data*(): StdLPersistent_Data {.constructor,
    importcpp: "StdLPersistent_Data(@)", header: "StdLPersistent_Data.hxx".}
proc Read*(this: var StdLPersistent_Data; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_Data.hxx".}
proc Write*(this: StdLPersistent_Data; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_Data.hxx".}
proc PChildren*(this: StdLPersistent_Data; theChildren: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_Data.hxx".}
proc PName*(this: StdLPersistent_Data): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_Data.hxx".}
proc Import*(this: StdLPersistent_Data): handle[TDF_Data] {.noSideEffect,
    importcpp: "Import", header: "StdLPersistent_Data.hxx".}