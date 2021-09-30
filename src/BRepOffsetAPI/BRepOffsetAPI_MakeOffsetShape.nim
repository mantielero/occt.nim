##  Created on: 1996-02-13
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of BRepOffset_MakeOffset"
type
  BRepOffsetAPI_MakeOffsetShape* {.importcpp: "BRepOffsetAPI_MakeOffsetShape",
                                  header: "BRepOffsetAPI_MakeOffsetShape.hxx",
                                  bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepOffsetAPI_MakeOffsetShape; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeOffsetShape::operator new",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeOffsetShape; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeOffsetShape::operator delete",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_MakeOffsetShape; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeOffsetShape::operator new[]",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_MakeOffsetShape; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeOffsetShape::operator delete[]",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc `new`*(this: var BRepOffsetAPI_MakeOffsetShape; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffsetAPI_MakeOffsetShape::operator new",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeOffsetShape; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_MakeOffsetShape::operator delete",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc constructBRepOffsetAPI_MakeOffsetShape*(): BRepOffsetAPI_MakeOffsetShape {.
    constructor, importcpp: "BRepOffsetAPI_MakeOffsetShape(@)",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc constructBRepOffsetAPI_MakeOffsetShape*(s: TopoDS_Shape; offset: StandardReal;
    tol: StandardReal; mode: BRepOffsetMode = bRepOffsetSkin;
    intersection: StandardBoolean = false; selfInter: StandardBoolean = false;
    join: GeomAbsJoinType = geomAbsArc; removeIntEdges: StandardBoolean = false): BRepOffsetAPI_MakeOffsetShape {.
    constructor, importcpp: "BRepOffsetAPI_MakeOffsetShape(@)",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc performBySimple*(this: var BRepOffsetAPI_MakeOffsetShape; theS: TopoDS_Shape;
                     theOffsetValue: StandardReal) {.importcpp: "PerformBySimple",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc performByJoin*(this: var BRepOffsetAPI_MakeOffsetShape; s: TopoDS_Shape;
                   offset: StandardReal; tol: StandardReal;
                   mode: BRepOffsetMode = bRepOffsetSkin;
                   intersection: StandardBoolean = false;
                   selfInter: StandardBoolean = false;
                   join: GeomAbsJoinType = geomAbsArc;
                   removeIntEdges: StandardBoolean = false) {.
    importcpp: "PerformByJoin", header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc makeOffset*(this: BRepOffsetAPI_MakeOffsetShape): BRepOffsetMakeOffset {.
    noSideEffect, importcpp: "MakeOffset",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc build*(this: var BRepOffsetAPI_MakeOffsetShape) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc generated*(this: var BRepOffsetAPI_MakeOffsetShape; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc modified*(this: var BRepOffsetAPI_MakeOffsetShape; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc isDeleted*(this: var BRepOffsetAPI_MakeOffsetShape; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepOffsetAPI_MakeOffsetShape.hxx".}
proc getJoinType*(this: BRepOffsetAPI_MakeOffsetShape): GeomAbsJoinType {.
    noSideEffect, importcpp: "GetJoinType",
    header: "BRepOffsetAPI_MakeOffsetShape.hxx".}