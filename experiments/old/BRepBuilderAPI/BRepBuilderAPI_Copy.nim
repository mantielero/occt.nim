##  Created on: 1994-12-12
##  Created by: Jacques GOUSSARD
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
  BRepBuilderAPI_Copy* {.importcpp: "BRepBuilderAPI_Copy",
                        header: "BRepBuilderAPI_Copy.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape


proc `new`*(this: var BRepBuilderAPI_Copy; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_Copy::operator new",
    header: "BRepBuilderAPI_Copy.hxx".}
proc `delete`*(this: var BRepBuilderAPI_Copy; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_Copy::operator delete",
    header: "BRepBuilderAPI_Copy.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_Copy; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_Copy::operator new[]",
    header: "BRepBuilderAPI_Copy.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_Copy; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_Copy::operator delete[]",
    header: "BRepBuilderAPI_Copy.hxx".}
proc `new`*(this: var BRepBuilderAPI_Copy; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_Copy::operator new",
    header: "BRepBuilderAPI_Copy.hxx".}
proc `delete`*(this: var BRepBuilderAPI_Copy; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_Copy::operator delete",
    header: "BRepBuilderAPI_Copy.hxx".}
proc constructBRepBuilderAPI_Copy*(): BRepBuilderAPI_Copy {.constructor,
    importcpp: "BRepBuilderAPI_Copy(@)", header: "BRepBuilderAPI_Copy.hxx".}
proc constructBRepBuilderAPI_Copy*(s: TopoDS_Shape;
                                  copyGeom: StandardBoolean = true;
                                  copyMesh: StandardBoolean = false): BRepBuilderAPI_Copy {.
    constructor, importcpp: "BRepBuilderAPI_Copy(@)",
    header: "BRepBuilderAPI_Copy.hxx".}
proc perform*(this: var BRepBuilderAPI_Copy; s: TopoDS_Shape;
             copyGeom: StandardBoolean = true; copyMesh: StandardBoolean = false) {.
    importcpp: "Perform", header: "BRepBuilderAPI_Copy.hxx".}