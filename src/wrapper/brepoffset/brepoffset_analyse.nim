import brepoffset_types
import ../topods/topods_types
import ../message/message_types
import ../chfids/chfids_types
import ../toptools/toptools_types

##  Created on: 1995-10-20
##  Created by: Yves FRICAUD
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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Compound"


proc newBRepOffset_Analyse*(): BRepOffset_Analyse {.cdecl, constructor,
    importcpp: "BRepOffset_Analyse(@)".}
proc newBRepOffset_Analyse*(theS: TopoDS_Shape; theAngle: cfloat): BRepOffset_Analyse {.
    cdecl, constructor, importcpp: "BRepOffset_Analyse(@)".}
proc Perform*(this: var BRepOffset_Analyse; theS: TopoDS_Shape; theAngle: cfloat;
             theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Perform".}
proc IsDone*(this: BRepOffset_Analyse): bool {.noSideEffect, cdecl,
    importcpp: "IsDone".}
proc Type*(this: BRepOffset_Analyse; theE: TopoDS_Edge): BRepOffset_ListOfInterval {.
    noSideEffect, cdecl, importcpp: "Type".}
proc Edges*(this: BRepOffset_Analyse; theV: TopoDS_Vertex;
           theType: ChFiDS_TypeOfConcavity; theL: var TopTools_ListOfShape) {.
    noSideEffect, cdecl, importcpp: "Edges".}
proc Edges*(this: BRepOffset_Analyse; theF: TopoDS_Face;
           theType: ChFiDS_TypeOfConcavity; theL: var TopTools_ListOfShape) {.
    noSideEffect, cdecl, importcpp: "Edges".}
proc TangentEdges*(this: BRepOffset_Analyse; theEdge: TopoDS_Edge;
                  theVertex: TopoDS_Vertex; theEdges: var TopTools_ListOfShape) {.
    noSideEffect, cdecl, importcpp: "TangentEdges".}
proc HasAncestor*(this: BRepOffset_Analyse; theS: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "HasAncestor".}
proc Ancestors*(this: BRepOffset_Analyse; theS: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, cdecl, importcpp: "Ancestors".}
proc Explode*(this: BRepOffset_Analyse; theL: var TopTools_ListOfShape;
             theType: ChFiDS_TypeOfConcavity) {.noSideEffect, cdecl,
    importcpp: "Explode".}
proc Explode*(this: BRepOffset_Analyse; theL: var TopTools_ListOfShape;
             theType1: ChFiDS_TypeOfConcavity; theType2: ChFiDS_TypeOfConcavity) {.
    noSideEffect, cdecl, importcpp: "Explode".}
proc AddFaces*(this: BRepOffset_Analyse; theFace: TopoDS_Face;
              theCo: var TopoDS_Compound; theMap: var TopTools_MapOfShape;
              theType: ChFiDS_TypeOfConcavity) {.noSideEffect, cdecl,
    importcpp: "AddFaces".}
proc AddFaces*(this: BRepOffset_Analyse; theFace: TopoDS_Face;
              theCo: var TopoDS_Compound; theMap: var TopTools_MapOfShape;
              theType1: ChFiDS_TypeOfConcavity; theType2: ChFiDS_TypeOfConcavity) {.
    noSideEffect, cdecl, importcpp: "AddFaces".}
proc SetOffsetValue*(this: var BRepOffset_Analyse; theOffset: cfloat) {.cdecl,
    importcpp: "SetOffsetValue".}
proc SetFaceOffsetMap*(this: var BRepOffset_Analyse;
                      theMap: TopTools_DataMapOfShapeReal) {.cdecl,
    importcpp: "SetFaceOffsetMap".}
proc NewFaces*(this: BRepOffset_Analyse): TopTools_ListOfShape {.noSideEffect, cdecl,
    importcpp: "NewFaces".}
proc Generated*(this: BRepOffset_Analyse; theS: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Generated".}
proc HasGenerated*(this: BRepOffset_Analyse; theS: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "HasGenerated".}
proc EdgeReplacement*(this: BRepOffset_Analyse; theFace: TopoDS_Face;
                     theEdge: TopoDS_Edge): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "EdgeReplacement".}
proc Descendants*(this: BRepOffset_Analyse; theS: TopoDS_Shape;
                 theUpdate: bool = false): ptr TopTools_ListOfShape {.noSideEffect,
    cdecl, importcpp: "Descendants".}
proc Clear*(this: var BRepOffset_Analyse) {.cdecl, importcpp: "Clear",
                                        .}