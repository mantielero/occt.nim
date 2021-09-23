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
  ../gp/gp_Pnt, BRepExtrema_SupportType, ../TopoDS/TopoDS_Vertex,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face

## ! This class is used to store information relative to the minimum distance between two shapes.

type
  BRepExtrema_SolutionElem* {.importcpp: "BRepExtrema_SolutionElem",
                             header: "BRepExtrema_SolutionElem.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructBRepExtrema_SolutionElem*(): BRepExtrema_SolutionElem {.constructor,
    importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtrema_SolutionElem*(theDist: Standard_Real; thePoint: gp_Pnt;
                                       theSolType: BRepExtrema_SupportType;
                                       theVertex: TopoDS_Vertex): BRepExtrema_SolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtrema_SolutionElem*(theDist: Standard_Real; thePoint: gp_Pnt;
                                       theSolType: BRepExtrema_SupportType;
                                       theEdge: TopoDS_Edge;
                                       theParam: Standard_Real): BRepExtrema_SolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtrema_SolutionElem*(theDist: Standard_Real; thePoint: gp_Pnt;
                                       theSolType: BRepExtrema_SupportType;
                                       theFace: TopoDS_Face; theU: Standard_Real;
                                       theV: Standard_Real): BRepExtrema_SolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc Dist*(this: BRepExtrema_SolutionElem): Standard_Real {.noSideEffect,
    importcpp: "Dist", header: "BRepExtrema_SolutionElem.hxx".}
proc Point*(this: BRepExtrema_SolutionElem): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "BRepExtrema_SolutionElem.hxx".}
proc SupportKind*(this: BRepExtrema_SolutionElem): BRepExtrema_SupportType {.
    noSideEffect, importcpp: "SupportKind", header: "BRepExtrema_SolutionElem.hxx".}
proc Vertex*(this: BRepExtrema_SolutionElem): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepExtrema_SolutionElem.hxx".}
proc Edge*(this: BRepExtrema_SolutionElem): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepExtrema_SolutionElem.hxx".}
proc Face*(this: BRepExtrema_SolutionElem): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepExtrema_SolutionElem.hxx".}
proc EdgeParameter*(this: BRepExtrema_SolutionElem; theParam: var Standard_Real) {.
    noSideEffect, importcpp: "EdgeParameter",
    header: "BRepExtrema_SolutionElem.hxx".}
proc FaceParameter*(this: BRepExtrema_SolutionElem; theU: var Standard_Real;
                   theV: var Standard_Real) {.noSideEffect,
    importcpp: "FaceParameter", header: "BRepExtrema_SolutionElem.hxx".}