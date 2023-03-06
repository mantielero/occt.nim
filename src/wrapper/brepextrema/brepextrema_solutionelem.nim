import brepextrema_types
import ../gp/gp_types
import ../topods/topods_types
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

## ! This class is used to store information relative to the minimum distance between two shapes.


proc newBRepExtrema_SolutionElem*(): BRepExtrema_SolutionElem {.cdecl, constructor,
    importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc newBRepExtrema_SolutionElem*(theDist: cfloat; thePoint: PntObj;
                                 theSolType: BRepExtrema_SupportType;
                                 theVertex: TopoDS_Vertex): BRepExtrema_SolutionElem {.
    cdecl, constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc newBRepExtrema_SolutionElem*(theDist: cfloat; thePoint: PntObj;
                                 theSolType: BRepExtrema_SupportType;
                                 theEdge: TopoDS_Edge; theParam: cfloat): BRepExtrema_SolutionElem {.
    cdecl, constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc newBRepExtrema_SolutionElem*(theDist: cfloat; thePoint: PntObj;
                                 theSolType: BRepExtrema_SupportType;
                                 theFace: TopoDS_Face; theU: cfloat; theV: cfloat): BRepExtrema_SolutionElem {.
    cdecl, constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc Dist*(this: BRepExtrema_SolutionElem): cfloat {.noSideEffect, cdecl,
    importcpp: "Dist", header: "BRepExtrema_SolutionElem.hxx".}
proc Point*(this: BRepExtrema_SolutionElem): PntObj {.noSideEffect, cdecl,
    importcpp: "Point", header: "BRepExtrema_SolutionElem.hxx".}
proc SupportKind*(this: BRepExtrema_SolutionElem): BRepExtrema_SupportType {.
    noSideEffect, cdecl, importcpp: "SupportKind",
    header: "BRepExtrema_SolutionElem.hxx".}
proc Vertex*(this: BRepExtrema_SolutionElem): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "Vertex", header: "BRepExtrema_SolutionElem.hxx".}
proc Edge*(this: BRepExtrema_SolutionElem): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edge", header: "BRepExtrema_SolutionElem.hxx".}
proc Face*(this: BRepExtrema_SolutionElem): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", header: "BRepExtrema_SolutionElem.hxx".}
proc EdgeParameter*(this: BRepExtrema_SolutionElem; theParam: var cfloat) {.
    noSideEffect, cdecl, importcpp: "EdgeParameter",
    header: "BRepExtrema_SolutionElem.hxx".}
proc FaceParameter*(this: BRepExtrema_SolutionElem; theU: var cfloat; theV: var cfloat) {.
    noSideEffect, cdecl, importcpp: "FaceParameter",
    header: "BRepExtrema_SolutionElem.hxx".}