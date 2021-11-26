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
type
  BRepOffsetAPI_MakeThickSolid* {.importcpp: "BRepOffsetAPI_MakeThickSolid",
                                 header: "BRepOffsetAPI_MakeThickSolid.hxx",
                                 bycopy.} = object of BRepOffsetAPI_MakeOffsetShape


proc `new`*(this: var BRepOffsetAPI_MakeThickSolid; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeThickSolid::operator new",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeThickSolid; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeThickSolid::operator delete",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_MakeThickSolid; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeThickSolid::operator new[]",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_MakeThickSolid; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeThickSolid::operator delete[]",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc `new`*(this: var BRepOffsetAPI_MakeThickSolid; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffsetAPI_MakeThickSolid::operator new",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeThickSolid; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_MakeThickSolid::operator delete",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc constructBRepOffsetAPI_MakeThickSolid*(): BRepOffsetAPI_MakeThickSolid {.
    constructor, importcpp: "BRepOffsetAPI_MakeThickSolid(@)",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc constructBRepOffsetAPI_MakeThickSolid*(s: TopoDS_Shape;
    closingFaces: TopToolsListOfShape; offset: StandardReal; tol: StandardReal;
    mode: BRepOffsetMode = bRepOffsetSkin; intersection: StandardBoolean = false;
    selfInter: StandardBoolean = false; join: GeomAbsJoinType = geomAbsArc;
    removeIntEdges: StandardBoolean = false): BRepOffsetAPI_MakeThickSolid {.
    constructor, importcpp: "BRepOffsetAPI_MakeThickSolid(@)",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc makeThickSolidBySimple*(this: var BRepOffsetAPI_MakeThickSolid;
                            theS: TopoDS_Shape; theOffsetValue: StandardReal) {.
    importcpp: "MakeThickSolidBySimple",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc makeThickSolidByJoin*(this: var BRepOffsetAPI_MakeThickSolid; s: TopoDS_Shape;
                          closingFaces: TopToolsListOfShape; offset: StandardReal;
                          tol: StandardReal;
                          mode: BRepOffsetMode = bRepOffsetSkin;
                          intersection: StandardBoolean = false;
                          selfInter: StandardBoolean = false;
                          join: GeomAbsJoinType = geomAbsArc;
                          removeIntEdges: StandardBoolean = false) {.
    importcpp: "MakeThickSolidByJoin", header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc build*(this: var BRepOffsetAPI_MakeThickSolid) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc modified*(this: var BRepOffsetAPI_MakeThickSolid; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepOffsetAPI_MakeThickSolid.hxx".}