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
  StdObject_Location, ../StdPersistent/StdPersistent_TopoDS,
  ../TopoDS/TopoDS_Shape

type
  StdObject_Shape* {.importcpp: "StdObject_Shape", header: "StdObject_Shape.hxx",
                    bycopy.} = object ## ! Empty constructor.
                                   ## ! Read persistent data from a file.


proc constructStdObject_Shape*(): StdObject_Shape {.constructor,
    importcpp: "StdObject_Shape(@)", header: "StdObject_Shape.hxx".}
proc Import*(this: StdObject_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Import", header: "StdObject_Shape.hxx".}
proc PChildren*(this: StdObject_Shape; theChildren: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdObject_Shape.hxx".}
## ! Read persistent data from a file.

proc `>>`*(theReadData: var StdObjMgt_ReadData; theShape: var StdObject_Shape): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_Shape.hxx".}
## ! Write persistent data to a file.

proc `<<`*(theWriteData: var StdObjMgt_WriteData; theShape: StdObject_Shape): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_Shape.hxx".}