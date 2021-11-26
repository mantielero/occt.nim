##  Created on: 1995-05-02
##  Created by: Jing Cheng MEI
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of BRepBuilderAPI_Sewing"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
type
  BRepOffsetAPI_FindContigousEdges* {.importcpp: "BRepOffsetAPI_FindContigousEdges", header: "BRepOffsetAPI_FindContigousEdges.hxx",
                                     bycopy.} = object


proc `new`*(this: var BRepOffsetAPI_FindContigousEdges; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_FindContigousEdges::operator new",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc `delete`*(this: var BRepOffsetAPI_FindContigousEdges; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_FindContigousEdges::operator delete",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_FindContigousEdges; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_FindContigousEdges::operator new[]",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_FindContigousEdges; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_FindContigousEdges::operator delete[]",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc `new`*(this: var BRepOffsetAPI_FindContigousEdges; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "BRepOffsetAPI_FindContigousEdges::operator new", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc `delete`*(this: var BRepOffsetAPI_FindContigousEdges; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_FindContigousEdges::operator delete",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc constructBRepOffsetAPI_FindContigousEdges*(
    tolerance: StandardReal = 1.0e-06; option: StandardBoolean = true): BRepOffsetAPI_FindContigousEdges {.
    constructor, importcpp: "BRepOffsetAPI_FindContigousEdges(@)",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc init*(this: var BRepOffsetAPI_FindContigousEdges; tolerance: StandardReal;
          option: StandardBoolean) {.importcpp: "Init", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc add*(this: var BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc perform*(this: var BRepOffsetAPI_FindContigousEdges) {.importcpp: "Perform",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc nbEdges*(this: BRepOffsetAPI_FindContigousEdges): int {.noSideEffect,
    importcpp: "NbEdges", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc nbContigousEdges*(this: BRepOffsetAPI_FindContigousEdges): int {.noSideEffect,
    importcpp: "NbContigousEdges", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc contigousEdge*(this: BRepOffsetAPI_FindContigousEdges; index: int): TopoDS_Edge {.
    noSideEffect, importcpp: "ContigousEdge",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc contigousEdgeCouple*(this: BRepOffsetAPI_FindContigousEdges; index: int): TopToolsListOfShape {.
    noSideEffect, importcpp: "ContigousEdgeCouple",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc sectionToBoundary*(this: BRepOffsetAPI_FindContigousEdges;
                       section: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "SectionToBoundary", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc nbDegeneratedShapes*(this: BRepOffsetAPI_FindContigousEdges): int {.
    noSideEffect, importcpp: "NbDegeneratedShapes",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc degeneratedShape*(this: BRepOffsetAPI_FindContigousEdges; index: int): TopoDS_Shape {.
    noSideEffect, importcpp: "DegeneratedShape",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc isDegenerated*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsDegenerated",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc isModified*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsModified",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc modified*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Modified",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc dump*(this: BRepOffsetAPI_FindContigousEdges) {.noSideEffect,
    importcpp: "Dump", header: "BRepOffsetAPI_FindContigousEdges.hxx".}