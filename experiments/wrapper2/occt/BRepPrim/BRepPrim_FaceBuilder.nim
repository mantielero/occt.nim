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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Vertex, ../TopoDS/TopoDS_Edge,
  ../TopoDS/TopoDS_Face, ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRep_Builder"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepPrim_FaceBuilder* {.importcpp: "BRepPrim_FaceBuilder",
                         header: "BRepPrim_FaceBuilder.hxx", bycopy.} = object


proc constructBRepPrim_FaceBuilder*(): BRepPrim_FaceBuilder {.constructor,
    importcpp: "BRepPrim_FaceBuilder(@)", header: "BRepPrim_FaceBuilder.hxx".}
proc constructBRepPrim_FaceBuilder*(B: BRep_Builder; S: handle[Geom_Surface]): BRepPrim_FaceBuilder {.
    constructor, importcpp: "BRepPrim_FaceBuilder(@)",
    header: "BRepPrim_FaceBuilder.hxx".}
proc constructBRepPrim_FaceBuilder*(B: BRep_Builder; S: handle[Geom_Surface];
                                   UMin: Standard_Real; UMax: Standard_Real;
                                   VMin: Standard_Real; VMax: Standard_Real): BRepPrim_FaceBuilder {.
    constructor, importcpp: "BRepPrim_FaceBuilder(@)",
    header: "BRepPrim_FaceBuilder.hxx".}
proc Init*(this: var BRepPrim_FaceBuilder; B: BRep_Builder; S: handle[Geom_Surface]) {.
    importcpp: "Init", header: "BRepPrim_FaceBuilder.hxx".}
proc Init*(this: var BRepPrim_FaceBuilder; B: BRep_Builder; S: handle[Geom_Surface];
          UMin: Standard_Real; UMax: Standard_Real; VMin: Standard_Real;
          VMax: Standard_Real) {.importcpp: "Init",
                               header: "BRepPrim_FaceBuilder.hxx".}
proc Face*(this: BRepPrim_FaceBuilder): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "BRepPrim_FaceBuilder.hxx".}
converter `TopoDS_Face`*(this: var BRepPrim_FaceBuilder): TopoDS_Face {.
    importcpp: "BRepPrim_FaceBuilder::operator TopoDS_Face",
    header: "BRepPrim_FaceBuilder.hxx".}
proc Edge*(this: BRepPrim_FaceBuilder; I: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepPrim_FaceBuilder.hxx".}
proc Vertex*(this: BRepPrim_FaceBuilder; I: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "Vertex", header: "BRepPrim_FaceBuilder.hxx".}