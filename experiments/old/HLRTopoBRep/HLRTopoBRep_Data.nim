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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
type
  HLRTopoBRepData* {.importcpp: "HLRTopoBRep_Data", header: "HLRTopoBRep_Data.hxx",
                    bycopy.} = object


proc constructHLRTopoBRepData*(): HLRTopoBRepData {.constructor,
    importcpp: "HLRTopoBRep_Data(@)", header: "HLRTopoBRep_Data.hxx".}
proc clear*(this: var HLRTopoBRepData) {.importcpp: "Clear",
                                     header: "HLRTopoBRep_Data.hxx".}
proc clean*(this: var HLRTopoBRepData) {.importcpp: "Clean",
                                     header: "HLRTopoBRep_Data.hxx".}
proc edgeHasSplE*(this: HLRTopoBRepData; e: TopoDS_Edge): bool {.noSideEffect,
    importcpp: "EdgeHasSplE", header: "HLRTopoBRep_Data.hxx".}
proc faceHasIntL*(this: HLRTopoBRepData; f: TopoDS_Face): bool {.noSideEffect,
    importcpp: "FaceHasIntL", header: "HLRTopoBRep_Data.hxx".}
proc faceHasOutL*(this: HLRTopoBRepData; f: TopoDS_Face): bool {.noSideEffect,
    importcpp: "FaceHasOutL", header: "HLRTopoBRep_Data.hxx".}
proc faceHasIsoL*(this: HLRTopoBRepData; f: TopoDS_Face): bool {.noSideEffect,
    importcpp: "FaceHasIsoL", header: "HLRTopoBRep_Data.hxx".}
proc isSplEEdgeEdge*(this: HLRTopoBRepData; e1: TopoDS_Edge; e2: TopoDS_Edge): bool {.
    noSideEffect, importcpp: "IsSplEEdgeEdge", header: "HLRTopoBRep_Data.hxx".}
proc isIntLFaceEdge*(this: HLRTopoBRepData; f: TopoDS_Face; e: TopoDS_Edge): bool {.
    noSideEffect, importcpp: "IsIntLFaceEdge", header: "HLRTopoBRep_Data.hxx".}
proc isOutLFaceEdge*(this: HLRTopoBRepData; f: TopoDS_Face; e: TopoDS_Edge): bool {.
    noSideEffect, importcpp: "IsOutLFaceEdge", header: "HLRTopoBRep_Data.hxx".}
proc isIsoLFaceEdge*(this: HLRTopoBRepData; f: TopoDS_Face; e: TopoDS_Edge): bool {.
    noSideEffect, importcpp: "IsIsoLFaceEdge", header: "HLRTopoBRep_Data.hxx".}
proc newSOldS*(this: HLRTopoBRepData; new: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "NewSOldS", header: "HLRTopoBRep_Data.hxx".}
proc edgeSplE*(this: HLRTopoBRepData; e: TopoDS_Edge): TopToolsListOfShape {.
    noSideEffect, importcpp: "EdgeSplE", header: "HLRTopoBRep_Data.hxx".}
proc faceIntL*(this: HLRTopoBRepData; f: TopoDS_Face): TopToolsListOfShape {.
    noSideEffect, importcpp: "FaceIntL", header: "HLRTopoBRep_Data.hxx".}
proc faceOutL*(this: HLRTopoBRepData; f: TopoDS_Face): TopToolsListOfShape {.
    noSideEffect, importcpp: "FaceOutL", header: "HLRTopoBRep_Data.hxx".}
proc faceIsoL*(this: HLRTopoBRepData; f: TopoDS_Face): TopToolsListOfShape {.
    noSideEffect, importcpp: "FaceIsoL", header: "HLRTopoBRep_Data.hxx".}
proc isOutV*(this: HLRTopoBRepData; v: TopoDS_Vertex): bool {.noSideEffect,
    importcpp: "IsOutV", header: "HLRTopoBRep_Data.hxx".}
proc isIntV*(this: HLRTopoBRepData; v: TopoDS_Vertex): bool {.noSideEffect,
    importcpp: "IsIntV", header: "HLRTopoBRep_Data.hxx".}
proc addOldS*(this: var HLRTopoBRepData; newS: TopoDS_Shape; oldS: TopoDS_Shape) {.
    importcpp: "AddOldS", header: "HLRTopoBRep_Data.hxx".}
proc addSplE*(this: var HLRTopoBRepData; e: TopoDS_Edge): var TopToolsListOfShape {.
    importcpp: "AddSplE", header: "HLRTopoBRep_Data.hxx".}
proc addIntL*(this: var HLRTopoBRepData; f: TopoDS_Face): var TopToolsListOfShape {.
    importcpp: "AddIntL", header: "HLRTopoBRep_Data.hxx".}
proc addOutL*(this: var HLRTopoBRepData; f: TopoDS_Face): var TopToolsListOfShape {.
    importcpp: "AddOutL", header: "HLRTopoBRep_Data.hxx".}
proc addIsoL*(this: var HLRTopoBRepData; f: TopoDS_Face): var TopToolsListOfShape {.
    importcpp: "AddIsoL", header: "HLRTopoBRep_Data.hxx".}
proc addOutV*(this: var HLRTopoBRepData; v: TopoDS_Vertex) {.importcpp: "AddOutV",
    header: "HLRTopoBRep_Data.hxx".}
proc addIntV*(this: var HLRTopoBRepData; v: TopoDS_Vertex) {.importcpp: "AddIntV",
    header: "HLRTopoBRep_Data.hxx".}
proc initEdge*(this: var HLRTopoBRepData) {.importcpp: "InitEdge",
                                        header: "HLRTopoBRep_Data.hxx".}
proc moreEdge*(this: HLRTopoBRepData): bool {.noSideEffect, importcpp: "MoreEdge",
    header: "HLRTopoBRep_Data.hxx".}
proc nextEdge*(this: var HLRTopoBRepData) {.importcpp: "NextEdge",
                                        header: "HLRTopoBRep_Data.hxx".}
proc edge*(this: HLRTopoBRepData): TopoDS_Edge {.noSideEffect, importcpp: "Edge",
    header: "HLRTopoBRep_Data.hxx".}
proc initVertex*(this: var HLRTopoBRepData; e: TopoDS_Edge) {.importcpp: "InitVertex",
    header: "HLRTopoBRep_Data.hxx".}
proc moreVertex*(this: HLRTopoBRepData): bool {.noSideEffect,
    importcpp: "MoreVertex", header: "HLRTopoBRep_Data.hxx".}
proc nextVertex*(this: var HLRTopoBRepData) {.importcpp: "NextVertex",
    header: "HLRTopoBRep_Data.hxx".}
proc vertex*(this: HLRTopoBRepData): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "HLRTopoBRep_Data.hxx".}
proc parameter*(this: HLRTopoBRepData): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "HLRTopoBRep_Data.hxx".}
proc insertBefore*(this: var HLRTopoBRepData; v: TopoDS_Vertex; p: cfloat) {.
    importcpp: "InsertBefore", header: "HLRTopoBRep_Data.hxx".}
proc append*(this: var HLRTopoBRepData; v: TopoDS_Vertex; p: cfloat) {.
    importcpp: "Append", header: "HLRTopoBRep_Data.hxx".}

























