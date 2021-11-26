##  Created on: 1993-06-23
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRep_Builder"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepPrimFaceBuilder* {.importcpp: "BRepPrim_FaceBuilder",
                        header: "BRepPrim_FaceBuilder.hxx", bycopy.} = object


proc `new`*(this: var BRepPrimFaceBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_FaceBuilder::operator new",
    header: "BRepPrim_FaceBuilder.hxx".}
proc `delete`*(this: var BRepPrimFaceBuilder; theAddress: pointer) {.
    importcpp: "BRepPrim_FaceBuilder::operator delete",
    header: "BRepPrim_FaceBuilder.hxx".}
proc `new[]`*(this: var BRepPrimFaceBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_FaceBuilder::operator new[]",
    header: "BRepPrim_FaceBuilder.hxx".}
proc `delete[]`*(this: var BRepPrimFaceBuilder; theAddress: pointer) {.
    importcpp: "BRepPrim_FaceBuilder::operator delete[]",
    header: "BRepPrim_FaceBuilder.hxx".}
proc `new`*(this: var BRepPrimFaceBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_FaceBuilder::operator new",
    header: "BRepPrim_FaceBuilder.hxx".}
proc `delete`*(this: var BRepPrimFaceBuilder; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_FaceBuilder::operator delete",
    header: "BRepPrim_FaceBuilder.hxx".}
proc constructBRepPrimFaceBuilder*(): BRepPrimFaceBuilder {.constructor,
    importcpp: "BRepPrim_FaceBuilder(@)", header: "BRepPrim_FaceBuilder.hxx".}
proc constructBRepPrimFaceBuilder*(b: BRepBuilder; s: Handle[GeomSurface]): BRepPrimFaceBuilder {.
    constructor, importcpp: "BRepPrim_FaceBuilder(@)",
    header: "BRepPrim_FaceBuilder.hxx".}
proc constructBRepPrimFaceBuilder*(b: BRepBuilder; s: Handle[GeomSurface];
                                  uMin: StandardReal; uMax: StandardReal;
                                  vMin: StandardReal; vMax: StandardReal): BRepPrimFaceBuilder {.
    constructor, importcpp: "BRepPrim_FaceBuilder(@)",
    header: "BRepPrim_FaceBuilder.hxx".}
proc init*(this: var BRepPrimFaceBuilder; b: BRepBuilder; s: Handle[GeomSurface]) {.
    importcpp: "Init", header: "BRepPrim_FaceBuilder.hxx".}
proc init*(this: var BRepPrimFaceBuilder; b: BRepBuilder; s: Handle[GeomSurface];
          uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
          vMax: StandardReal) {.importcpp: "Init",
                              header: "BRepPrim_FaceBuilder.hxx".}
proc face*(this: BRepPrimFaceBuilder): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepPrim_FaceBuilder.hxx".}
converter `topoDS_Face`*(this: var BRepPrimFaceBuilder): TopoDS_Face {.
    importcpp: "BRepPrim_FaceBuilder::operator TopoDS_Face",
    header: "BRepPrim_FaceBuilder.hxx".}
proc edge*(this: BRepPrimFaceBuilder; i: int): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "BRepPrim_FaceBuilder.hxx".}
proc vertex*(this: BRepPrimFaceBuilder; i: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepPrim_FaceBuilder.hxx".}