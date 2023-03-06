import brepoffset_types
import ../topods/topods_types
import ../toptools/toptools_types

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
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"

proc newBRepOffsetAPI_FindContigousEdges*(tolerance: cfloat = 1.0e-06;
    option: bool = true): BRepOffsetAPI_FindContigousEdges {.cdecl, constructor,
    importcpp: "BRepOffsetAPI_FindContigousEdges(@)".}
proc Init*(this: var BRepOffsetAPI_FindContigousEdges; tolerance: cfloat; option: bool) {.
    cdecl, importcpp: "Init".}
proc Add*(this: var BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape) {.cdecl,
    importcpp: "Add".}
proc Perform*(this: var BRepOffsetAPI_FindContigousEdges) {.cdecl,
    importcpp: "Perform".}
proc NbEdges*(this: BRepOffsetAPI_FindContigousEdges): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges".}
proc NbContigousEdges*(this: BRepOffsetAPI_FindContigousEdges): cint {.noSideEffect,
    cdecl, importcpp: "NbContigousEdges".}
proc ContigousEdge*(this: BRepOffsetAPI_FindContigousEdges; index: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "ContigousEdge".}
proc ContigousEdgeCouple*(this: BRepOffsetAPI_FindContigousEdges; index: cint): TopTools_ListOfShape {.
    noSideEffect, cdecl, importcpp: "ContigousEdgeCouple".}
proc SectionToBoundary*(this: BRepOffsetAPI_FindContigousEdges;
                       section: TopoDS_Edge): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "SectionToBoundary".}
proc NbDegeneratedShapes*(this: BRepOffsetAPI_FindContigousEdges): cint {.
    noSideEffect, cdecl, importcpp: "NbDegeneratedShapes".}
proc DegeneratedShape*(this: BRepOffsetAPI_FindContigousEdges; index: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "DegeneratedShape".}
proc IsDegenerated*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsDegenerated".}
proc IsModified*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsModified".}
proc Modified*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Modified".}
proc Dump*(this: BRepOffsetAPI_FindContigousEdges) {.noSideEffect, cdecl,
    importcpp: "Dump".}