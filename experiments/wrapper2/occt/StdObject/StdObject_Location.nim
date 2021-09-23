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
  ../StdObjMgt/StdObjMgt_ReadData, ../StdObjMgt/StdObjMgt_WriteData,
  ../StdObjMgt/StdObjMgt_Persistent,
  ../StdObjMgt/StdObjMgt_TransientPersistentMap, ../TopLoc/TopLoc_Location

type
  StdObject_Location* {.importcpp: "StdObject_Location",
                       header: "StdObject_Location.hxx", bycopy.} = object ## ! Gets persistent child objects


proc PChildren*(this: StdObject_Location; theChildren: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdObject_Location.hxx".}
proc Import*(this: StdObject_Location): TopLoc_Location {.noSideEffect,
    importcpp: "Import", header: "StdObject_Location.hxx".}
proc Translate*(theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): StdObject_Location {.
    importcpp: "StdObject_Location::Translate(@)",
    header: "StdObject_Location.hxx".}
## ! Read persistent data from a file.

proc `>>`*(theReadData: var StdObjMgt_ReadData; theLocation: var StdObject_Location): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_Location.hxx".}
## ! Write persistent data to a file.

proc `<<`*(theWriteData: var StdObjMgt_WriteData; theLocation: StdObject_Location): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_Location.hxx".}