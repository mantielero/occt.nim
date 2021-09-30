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
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepLibMakeShape* {.importcpp: "BRepLib_MakeShape",
                     header: "BRepLib_MakeShape.hxx", bycopy.} = object of BRepLibCommand


proc `new`*(this: var BRepLibMakeShape; theSize: csize_t): pointer {.
    importcpp: "BRepLib_MakeShape::operator new", header: "BRepLib_MakeShape.hxx".}
proc `delete`*(this: var BRepLibMakeShape; theAddress: pointer) {.
    importcpp: "BRepLib_MakeShape::operator delete",
    header: "BRepLib_MakeShape.hxx".}
proc `new[]`*(this: var BRepLibMakeShape; theSize: csize_t): pointer {.
    importcpp: "BRepLib_MakeShape::operator new[]",
    header: "BRepLib_MakeShape.hxx".}
proc `delete[]`*(this: var BRepLibMakeShape; theAddress: pointer) {.
    importcpp: "BRepLib_MakeShape::operator delete[]",
    header: "BRepLib_MakeShape.hxx".}
proc `new`*(this: var BRepLibMakeShape; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepLib_MakeShape::operator new", header: "BRepLib_MakeShape.hxx".}
proc `delete`*(this: var BRepLibMakeShape; a2: pointer; a3: pointer) {.
    importcpp: "BRepLib_MakeShape::operator delete",
    header: "BRepLib_MakeShape.hxx".}
proc build*(this: var BRepLibMakeShape) {.importcpp: "Build",
                                      header: "BRepLib_MakeShape.hxx".}
proc shape*(this: var BRepLibMakeShape): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepLib_MakeShape.hxx".}
converter `topoDS_Shape`*(this: var BRepLibMakeShape): TopoDS_Shape {.
    importcpp: "BRepLib_MakeShape::operator TopoDS_Shape",
    header: "BRepLib_MakeShape.hxx".}
proc faceStatus*(this: BRepLibMakeShape; f: TopoDS_Face): BRepLibShapeModification {.
    noSideEffect, importcpp: "FaceStatus", header: "BRepLib_MakeShape.hxx".}
proc hasDescendants*(this: BRepLibMakeShape; f: TopoDS_Face): StandardBoolean {.
    noSideEffect, importcpp: "HasDescendants", header: "BRepLib_MakeShape.hxx".}
proc descendantFaces*(this: var BRepLibMakeShape; f: TopoDS_Face): TopToolsListOfShape {.
    importcpp: "DescendantFaces", header: "BRepLib_MakeShape.hxx".}
proc nbSurfaces*(this: BRepLibMakeShape): int {.noSideEffect,
    importcpp: "NbSurfaces", header: "BRepLib_MakeShape.hxx".}
proc newFaces*(this: var BRepLibMakeShape; i: int): TopToolsListOfShape {.
    importcpp: "NewFaces", header: "BRepLib_MakeShape.hxx".}
proc facesFromEdges*(this: var BRepLibMakeShape; e: TopoDS_Edge): TopToolsListOfShape {.
    importcpp: "FacesFromEdges", header: "BRepLib_MakeShape.hxx".}