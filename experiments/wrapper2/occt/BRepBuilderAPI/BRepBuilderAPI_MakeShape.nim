##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_MakeShape* {.importcpp: "BRepBuilderAPI_MakeShape",
                             header: "BRepBuilderAPI_MakeShape.hxx", bycopy.} = object of BRepBuilderAPI_Command


proc `new`*(this: var BRepBuilderAPI_MakeShape; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeShape::operator new",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeShape; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeShape::operator delete",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_MakeShape; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeShape::operator new[]",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_MakeShape; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeShape::operator delete[]",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc `new`*(this: var BRepBuilderAPI_MakeShape; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_MakeShape::operator new",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeShape; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_MakeShape::operator delete",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc build*(this: var BRepBuilderAPI_MakeShape) {.importcpp: "Build",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc shape*(this: var BRepBuilderAPI_MakeShape): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepBuilderAPI_MakeShape.hxx".}
converter `topoDS_Shape`*(this: var BRepBuilderAPI_MakeShape): TopoDS_Shape {.
    importcpp: "(TopoDS_Shape)(#)",
    header: "BRepBuilderAPI_MakeShape.hxx".}
    # BRepBuilderAPI_MakeShape::operator TopoDS_Shape

#[ proc generated*(this: var BRepBuilderAPI_MakeShape; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepBuilderAPI_MakeShape.hxx".}
proc modified*(this: var BRepBuilderAPI_MakeShape; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepBuilderAPI_MakeShape.hxx".}
proc isDeleted*(this: var BRepBuilderAPI_MakeShape; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepBuilderAPI_MakeShape.hxx".} ]#