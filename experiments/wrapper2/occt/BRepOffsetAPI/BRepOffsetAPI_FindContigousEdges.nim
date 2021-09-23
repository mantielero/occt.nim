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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of BRepBuilderAPI_Sewing"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
type
  BRepOffsetAPI_FindContigousEdges* {.importcpp: "BRepOffsetAPI_FindContigousEdges", header: "BRepOffsetAPI_FindContigousEdges.hxx",
                                     bycopy.} = object ## ! Initializes an algorithm for identifying contiguous edges
                                                    ## ! on shapes with tolerance as the tolerance of contiguity
                                                    ## ! (defaulted to 1.0e-6). This tolerance value is used to
                                                    ## ! determine whether two edges or sections of edges are coincident.
                                                    ## ! Use the function Add to define the shapes to be checked.
                                                    ## ! Set option to false. This argument (defaulted to true) will
                                                    ## ! serve in subsequent software releases for performing an
                                                    ## ! analysis of degenerated shapes.


proc constructBRepOffsetAPI_FindContigousEdges*(
    tolerance: Standard_Real = 1.0e-06; option: Standard_Boolean = Standard_True): BRepOffsetAPI_FindContigousEdges {.
    constructor, importcpp: "BRepOffsetAPI_FindContigousEdges(@)",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc Init*(this: var BRepOffsetAPI_FindContigousEdges; tolerance: Standard_Real;
          option: Standard_Boolean) {.importcpp: "Init", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc Add*(this: var BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc Perform*(this: var BRepOffsetAPI_FindContigousEdges) {.importcpp: "Perform",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc NbEdges*(this: BRepOffsetAPI_FindContigousEdges): Standard_Integer {.
    noSideEffect, importcpp: "NbEdges",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc NbContigousEdges*(this: BRepOffsetAPI_FindContigousEdges): Standard_Integer {.
    noSideEffect, importcpp: "NbContigousEdges",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc ContigousEdge*(this: BRepOffsetAPI_FindContigousEdges; index: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "ContigousEdge",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc ContigousEdgeCouple*(this: BRepOffsetAPI_FindContigousEdges;
                         index: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ContigousEdgeCouple",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc SectionToBoundary*(this: BRepOffsetAPI_FindContigousEdges;
                       section: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    importcpp: "SectionToBoundary", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc NbDegeneratedShapes*(this: BRepOffsetAPI_FindContigousEdges): Standard_Integer {.
    noSideEffect, importcpp: "NbDegeneratedShapes",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc DegeneratedShape*(this: BRepOffsetAPI_FindContigousEdges;
                      index: Standard_Integer): TopoDS_Shape {.noSideEffect,
    importcpp: "DegeneratedShape", header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc IsDegenerated*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsDegenerated",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc IsModified*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsModified",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc Modified*(this: BRepOffsetAPI_FindContigousEdges; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Modified",
    header: "BRepOffsetAPI_FindContigousEdges.hxx".}
proc Dump*(this: BRepOffsetAPI_FindContigousEdges) {.noSideEffect,
    importcpp: "Dump", header: "BRepOffsetAPI_FindContigousEdges.hxx".}