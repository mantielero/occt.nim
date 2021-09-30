##  Created on: 1994-02-18
##  Created by: Remi LEQUETTE
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
type
  BRepPrimAPI_MakeSweep* {.importcpp: "BRepPrimAPI_MakeSweep",
                          header: "BRepPrimAPI_MakeSweep.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepPrimAPI_MakeSweep; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSweep::operator new",
    header: "BRepPrimAPI_MakeSweep.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeSweep; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSweep::operator delete",
    header: "BRepPrimAPI_MakeSweep.hxx".}
proc `new[]`*(this: var BRepPrimAPI_MakeSweep; theSize: csize_t): pointer {.
    importcpp: "BRepPrimAPI_MakeSweep::operator new[]",
    header: "BRepPrimAPI_MakeSweep.hxx".}
proc `delete[]`*(this: var BRepPrimAPI_MakeSweep; theAddress: pointer) {.
    importcpp: "BRepPrimAPI_MakeSweep::operator delete[]",
    header: "BRepPrimAPI_MakeSweep.hxx".}
proc `new`*(this: var BRepPrimAPI_MakeSweep; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrimAPI_MakeSweep::operator new",
    header: "BRepPrimAPI_MakeSweep.hxx".}
proc `delete`*(this: var BRepPrimAPI_MakeSweep; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrimAPI_MakeSweep::operator delete",
    header: "BRepPrimAPI_MakeSweep.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakeSweep): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakeSweep.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakeSweep): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakeSweep.hxx".}