##  Created on: 1994-10-24
##  Created by: Christophe MARION
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  HLRTopoBRep_DataMapOfShapeFaceData, ../TopTools/TopTools_MapOfShape,
  HLRTopoBRep_MapOfShapeListOfVData,
  HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData,
  HLRTopoBRep_ListIteratorOfListOfVData, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Real

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
type
  HLRTopoBRep_Data* {.importcpp: "HLRTopoBRep_Data",
                     header: "HLRTopoBRep_Data.hxx", bycopy.} = object


proc constructHLRTopoBRep_Data*(): HLRTopoBRep_Data {.constructor,
    importcpp: "HLRTopoBRep_Data(@)", header: "HLRTopoBRep_Data.hxx".}
proc Clear*(this: var HLRTopoBRep_Data) {.importcpp: "Clear",
                                      header: "HLRTopoBRep_Data.hxx".}
proc Clean*(this: var HLRTopoBRep_Data) {.importcpp: "Clean",
                                      header: "HLRTopoBRep_Data.hxx".}
proc EdgeHasSplE*(this: HLRTopoBRep_Data; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "EdgeHasSplE", header: "HLRTopoBRep_Data.hxx".}
proc FaceHasIntL*(this: HLRTopoBRep_Data; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "FaceHasIntL", header: "HLRTopoBRep_Data.hxx".}
proc FaceHasOutL*(this: HLRTopoBRep_Data; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "FaceHasOutL", header: "HLRTopoBRep_Data.hxx".}
proc FaceHasIsoL*(this: HLRTopoBRep_Data; F: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "FaceHasIsoL", header: "HLRTopoBRep_Data.hxx".}
proc IsSplEEdgeEdge*(this: HLRTopoBRep_Data; E1: TopoDS_Edge; E2: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsSplEEdgeEdge", header: "HLRTopoBRep_Data.hxx".}
proc IsIntLFaceEdge*(this: HLRTopoBRep_Data; F: TopoDS_Face; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsIntLFaceEdge", header: "HLRTopoBRep_Data.hxx".}
proc IsOutLFaceEdge*(this: HLRTopoBRep_Data; F: TopoDS_Face; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutLFaceEdge", header: "HLRTopoBRep_Data.hxx".}
proc IsIsoLFaceEdge*(this: HLRTopoBRep_Data; F: TopoDS_Face; E: TopoDS_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsIsoLFaceEdge", header: "HLRTopoBRep_Data.hxx".}
proc NewSOldS*(this: HLRTopoBRep_Data; New: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "NewSOldS", header: "HLRTopoBRep_Data.hxx".}
proc EdgeSplE*(this: HLRTopoBRep_Data; E: TopoDS_Edge): TopTools_ListOfShape {.
    noSideEffect, importcpp: "EdgeSplE", header: "HLRTopoBRep_Data.hxx".}
proc FaceIntL*(this: HLRTopoBRep_Data; F: TopoDS_Face): TopTools_ListOfShape {.
    noSideEffect, importcpp: "FaceIntL", header: "HLRTopoBRep_Data.hxx".}
proc FaceOutL*(this: HLRTopoBRep_Data; F: TopoDS_Face): TopTools_ListOfShape {.
    noSideEffect, importcpp: "FaceOutL", header: "HLRTopoBRep_Data.hxx".}
proc FaceIsoL*(this: HLRTopoBRep_Data; F: TopoDS_Face): TopTools_ListOfShape {.
    noSideEffect, importcpp: "FaceIsoL", header: "HLRTopoBRep_Data.hxx".}
proc IsOutV*(this: HLRTopoBRep_Data; V: TopoDS_Vertex): Standard_Boolean {.
    noSideEffect, importcpp: "IsOutV", header: "HLRTopoBRep_Data.hxx".}
proc IsIntV*(this: HLRTopoBRep_Data; V: TopoDS_Vertex): Standard_Boolean {.
    noSideEffect, importcpp: "IsIntV", header: "HLRTopoBRep_Data.hxx".}
proc AddOldS*(this: var HLRTopoBRep_Data; NewS: TopoDS_Shape; OldS: TopoDS_Shape) {.
    importcpp: "AddOldS", header: "HLRTopoBRep_Data.hxx".}
proc AddSplE*(this: var HLRTopoBRep_Data; E: TopoDS_Edge): var TopTools_ListOfShape {.
    importcpp: "AddSplE", header: "HLRTopoBRep_Data.hxx".}
proc AddIntL*(this: var HLRTopoBRep_Data; F: TopoDS_Face): var TopTools_ListOfShape {.
    importcpp: "AddIntL", header: "HLRTopoBRep_Data.hxx".}
proc AddOutL*(this: var HLRTopoBRep_Data; F: TopoDS_Face): var TopTools_ListOfShape {.
    importcpp: "AddOutL", header: "HLRTopoBRep_Data.hxx".}
proc AddIsoL*(this: var HLRTopoBRep_Data; F: TopoDS_Face): var TopTools_ListOfShape {.
    importcpp: "AddIsoL", header: "HLRTopoBRep_Data.hxx".}
proc AddOutV*(this: var HLRTopoBRep_Data; V: TopoDS_Vertex) {.importcpp: "AddOutV",
    header: "HLRTopoBRep_Data.hxx".}
proc AddIntV*(this: var HLRTopoBRep_Data; V: TopoDS_Vertex) {.importcpp: "AddIntV",
    header: "HLRTopoBRep_Data.hxx".}
proc InitEdge*(this: var HLRTopoBRep_Data) {.importcpp: "InitEdge",
    header: "HLRTopoBRep_Data.hxx".}
proc MoreEdge*(this: HLRTopoBRep_Data): Standard_Boolean {.noSideEffect,
    importcpp: "MoreEdge", header: "HLRTopoBRep_Data.hxx".}
proc NextEdge*(this: var HLRTopoBRep_Data) {.importcpp: "NextEdge",
    header: "HLRTopoBRep_Data.hxx".}
proc Edge*(this: HLRTopoBRep_Data): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "HLRTopoBRep_Data.hxx".}
proc InitVertex*(this: var HLRTopoBRep_Data; E: TopoDS_Edge) {.
    importcpp: "InitVertex", header: "HLRTopoBRep_Data.hxx".}
proc MoreVertex*(this: HLRTopoBRep_Data): Standard_Boolean {.noSideEffect,
    importcpp: "MoreVertex", header: "HLRTopoBRep_Data.hxx".}
proc NextVertex*(this: var HLRTopoBRep_Data) {.importcpp: "NextVertex",
    header: "HLRTopoBRep_Data.hxx".}
proc Vertex*(this: HLRTopoBRep_Data): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "HLRTopoBRep_Data.hxx".}
proc Parameter*(this: HLRTopoBRep_Data): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "HLRTopoBRep_Data.hxx".}
proc InsertBefore*(this: var HLRTopoBRep_Data; V: TopoDS_Vertex; P: Standard_Real) {.
    importcpp: "InsertBefore", header: "HLRTopoBRep_Data.hxx".}
proc Append*(this: var HLRTopoBRep_Data; V: TopoDS_Vertex; P: Standard_Real) {.
    importcpp: "Append", header: "HLRTopoBRep_Data.hxx".}