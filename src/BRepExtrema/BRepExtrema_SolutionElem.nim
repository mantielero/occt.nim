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
                            header: "BRepExtrema_SolutionElem.hxx", bycopy.} = object


proc `new`*(this: var BRepExtremaSolutionElem; theSize: csize_t): pointer {.
    importcpp: "BRepExtrema_SolutionElem::operator new",
    header: "BRepExtrema_SolutionElem.hxx".}
proc `delete`*(this: var BRepExtremaSolutionElem; theAddress: pointer) {.
    importcpp: "BRepExtrema_SolutionElem::operator delete",
    header: "BRepExtrema_SolutionElem.hxx".}
proc `new[]`*(this: var BRepExtremaSolutionElem; theSize: csize_t): pointer {.
    importcpp: "BRepExtrema_SolutionElem::operator new[]",
    header: "BRepExtrema_SolutionElem.hxx".}
proc `delete[]`*(this: var BRepExtremaSolutionElem; theAddress: pointer) {.
    importcpp: "BRepExtrema_SolutionElem::operator delete[]",
    header: "BRepExtrema_SolutionElem.hxx".}
proc `new`*(this: var BRepExtremaSolutionElem; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepExtrema_SolutionElem::operator new",
    header: "BRepExtrema_SolutionElem.hxx".}
proc `delete`*(this: var BRepExtremaSolutionElem; a2: pointer; a3: pointer) {.
    importcpp: "BRepExtrema_SolutionElem::operator delete",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(): BRepExtremaSolutionElem {.constructor,
    importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(theDist: StandardReal; thePoint: Pnt;
                                      theSolType: BRepExtremaSupportType;
                                      theVertex: TopoDS_Vertex): BRepExtremaSolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(theDist: StandardReal; thePoint: Pnt;
                                      theSolType: BRepExtremaSupportType;
                                      theEdge: TopoDS_Edge; theParam: StandardReal): BRepExtremaSolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc constructBRepExtremaSolutionElem*(theDist: StandardReal; thePoint: Pnt;
                                      theSolType: BRepExtremaSupportType;
                                      theFace: TopoDS_Face; theU: StandardReal;
                                      theV: StandardReal): BRepExtremaSolutionElem {.
    constructor, importcpp: "BRepExtrema_SolutionElem(@)",
    header: "BRepExtrema_SolutionElem.hxx".}
proc dist*(this: BRepExtremaSolutionElem): StandardReal {.noSideEffect,
    importcpp: "Dist", header: "BRepExtrema_SolutionElem.hxx".}
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
proc edgeParameter*(this: BRepExtremaSolutionElem; theParam: var StandardReal) {.
    noSideEffect, importcpp: "EdgeParameter",
    header: "BRepExtrema_SolutionElem.hxx".}
proc faceParameter*(this: BRepExtremaSolutionElem; theU: var StandardReal;
                   theV: var StandardReal) {.noSideEffect,
    importcpp: "FaceParameter", header: "BRepExtrema_SolutionElem.hxx".}