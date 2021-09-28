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

type
  BRepExtremaSolutionElem* {.importcpp: "BRepExtrema_SolutionElem",
                            header: "BRepExtrema_SolutionElem.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructBRepExtremaSolutionElem*(): BRepExtremaSolutionElem {.constructor,
    importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(theDist: cfloat; thePoint: Pnt;
                                      theSolType: BRepExtremaSupportType;
                                      theVertex: TopoDS_Vertex): BRepExtremaSolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(theDist: cfloat; thePoint: Pnt;
                                      theSolType: BRepExtremaSupportType;
                                      theEdge: TopoDS_Edge; theParam: cfloat): BRepExtremaSolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(theDist: cfloat; thePoint: Pnt;
                                      theSolType: BRepExtremaSupportType;
                                      theFace: TopoDS_Face; theU: cfloat;
                                      theV: cfloat): BRepExtremaSolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc dist*(this: BRepExtremaSolutionElem): cfloat {.noSideEffect, importcpp: "Dist",
    header: "BRepExtrema_SolutionElem.hxx".}
proc point*(this: BRepExtremaSolutionElem): Pnt {.noSideEffect, importcpp: "Point",
    header: "BRepExtrema_SolutionElem.hxx".}
proc supportKind*(this: BRepExtremaSolutionElem): BRepExtremaSupportType {.
    noSideEffect, importcpp: "SupportKind", header: "BRepExtrema_SolutionElem.hxx".}
proc vertex*(this: BRepExtremaSolutionElem): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepExtrema_SolutionElem.hxx".}
proc edge*(this: BRepExtremaSolutionElem): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepExtrema_SolutionElem.hxx".}
proc face*(this: BRepExtremaSolutionElem): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepExtrema_SolutionElem.hxx".}
proc edgeParameter*(this: BRepExtremaSolutionElem; theParam: var cfloat) {.
    noSideEffect, importcpp: "EdgeParameter",
    header: "BRepExtrema_SolutionElem.hxx".}
proc faceParameter*(this: BRepExtremaSolutionElem; theU: var cfloat; theV: var cfloat) {.
    noSideEffect, importcpp: "FaceParameter",
    header: "BRepExtrema_SolutionElem.hxx".}

























