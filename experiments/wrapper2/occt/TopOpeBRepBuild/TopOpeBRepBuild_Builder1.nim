##  Created on: 1999-09-29
##  Created by: Maxim ZVEREV
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_IndexedMapOfShape,
  ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_DataMapOfOrientedShapeInteger,
  ../TopTools/TopTools_IndexedMapOfOrientedShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, TopOpeBRepBuild_Builder,
  ../TopAbs/TopAbs_State, ../TopTools/TopTools_ListOfShape,
  ../TopOpeBRepDS/TopOpeBRepDS_DataMapOfShapeState, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TopTools/TopTools_SequenceOfShape

discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of TopOpeBRepDS_BuildTool"
discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_GTopo"
discard "forward decl of TopOpeBRepBuild_ShellFaceSet"
discard "forward decl of TopOpeBRepBuild_WireEdgeSet"
discard "forward decl of TopOpeBRepBuild_PaveSet"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  TopOpeBRepBuild_Builder1* {.importcpp: "TopOpeBRepBuild_Builder1",
                             header: "TopOpeBRepBuild_Builder1.hxx", bycopy.} = object of TopOpeBRepBuild_Builder


proc constructTopOpeBRepBuild_Builder1*(BT: TopOpeBRepDS_BuildTool): TopOpeBRepBuild_Builder1 {.
    constructor, importcpp: "TopOpeBRepBuild_Builder1(@)",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc destroyTopOpeBRepBuild_Builder1*(this: var TopOpeBRepBuild_Builder1) {.
    importcpp: "#.~TopOpeBRepBuild_Builder1()",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc Clear*(this: var TopOpeBRepBuild_Builder1) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc Perform*(this: var TopOpeBRepBuild_Builder1;
             HDS: handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc Perform*(this: var TopOpeBRepBuild_Builder1;
             HDS: handle[TopOpeBRepDS_HDataStructure]; S1: TopoDS_Shape;
             S2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRepBuild_Builder1.hxx".}
proc MergeKPart*(this: var TopOpeBRepBuild_Builder1) {.importcpp: "MergeKPart",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc MergeKPart*(this: var TopOpeBRepBuild_Builder1; TB1: TopAbs_State;
                TB2: TopAbs_State) {.importcpp: "MergeKPart",
                                   header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillSolidSFS*(this: var TopOpeBRepBuild_Builder1; SO1: TopoDS_Shape;
                   LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillSolidSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillShellSFS*(this: var TopOpeBRepBuild_Builder1; SH1: TopoDS_Shape;
                   LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                   SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillShellSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GWESMakeFaces*(this: var TopOpeBRepBuild_Builder1; FF: TopoDS_Shape;
                   WES: var TopOpeBRepBuild_WireEdgeSet;
                   LOF: var TopTools_ListOfShape) {.importcpp: "GWESMakeFaces",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillSplitsPVS*(this: var TopOpeBRepBuild_Builder1; anEdge: TopoDS_Shape;
                    G1: TopOpeBRepBuild_GTopo; PVS: var TopOpeBRepBuild_PaveSet) {.
    importcpp: "GFillSplitsPVS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillFaceNotSameDomSFS*(this: var TopOpeBRepBuild_Builder1; F1: TopoDS_Shape;
                            LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                            SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillFaceNotSameDomSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillFaceNotSameDomWES*(this: var TopOpeBRepBuild_Builder1; F1: TopoDS_Shape;
                            LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                            WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillFaceNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillWireNotSameDomWES*(this: var TopOpeBRepBuild_Builder1; W1: TopoDS_Shape;
                            LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                            WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillWireNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillEdgeNotSameDomWES*(this: var TopOpeBRepBuild_Builder1; E1: TopoDS_Shape;
                            LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                            WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillEdgeNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillFaceSameDomSFS*(this: var TopOpeBRepBuild_Builder1; F1: TopoDS_Shape;
                         LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                         SFS: var TopOpeBRepBuild_ShellFaceSet) {.
    importcpp: "GFillFaceSameDomSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillFaceSameDomWES*(this: var TopOpeBRepBuild_Builder1; F1: TopoDS_Shape;
                         LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                         WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillFaceSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillWireSameDomWES*(this: var TopOpeBRepBuild_Builder1; W1: TopoDS_Shape;
                         LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                         WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillWireSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc GFillEdgeSameDomWES*(this: var TopOpeBRepBuild_Builder1; E1: TopoDS_Shape;
                         LSO2: TopTools_ListOfShape; G: TopOpeBRepBuild_GTopo;
                         WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "GFillEdgeSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc PerformONParts*(this: var TopOpeBRepBuild_Builder1; F: TopoDS_Shape;
                    SDfaces: TopTools_IndexedMapOfShape; G: TopOpeBRepBuild_GTopo;
                    WES: var TopOpeBRepBuild_WireEdgeSet) {.
    importcpp: "PerformONParts", header: "TopOpeBRepBuild_Builder1.hxx".}
proc PerformPieceIn2D*(this: var TopOpeBRepBuild_Builder1;
                      aPieceToPerform: TopoDS_Edge; aOriginalEdge: TopoDS_Edge;
                      edgeFace: TopoDS_Face; toFace: TopoDS_Face;
                      G: TopOpeBRepBuild_GTopo; keep: var Standard_Boolean) {.
    importcpp: "PerformPieceIn2D", header: "TopOpeBRepBuild_Builder1.hxx".}
proc PerformPieceOn2D*(this: var TopOpeBRepBuild_Builder1; aPieceObj: TopoDS_Shape;
                      aFaceObj: TopoDS_Shape; aEdgeObj: TopoDS_Shape;
                      aListOfPieces: var TopTools_ListOfShape;
                      aListOfFaces: var TopTools_ListOfShape;
                      aListOfPiecesOut2d: var TopTools_ListOfShape): Standard_Integer {.
    importcpp: "PerformPieceOn2D", header: "TopOpeBRepBuild_Builder1.hxx".}
proc TwoPiecesON*(this: var TopOpeBRepBuild_Builder1;
                 aSeq: TopTools_SequenceOfShape;
                 aListOfPieces: var TopTools_ListOfShape;
                 aListOfFaces: var TopTools_ListOfShape;
                 aListOfPiecesOut2d: var TopTools_ListOfShape): Standard_Integer {.
    importcpp: "TwoPiecesON", header: "TopOpeBRepBuild_Builder1.hxx".}
proc CorrectResult2d*(this: var TopOpeBRepBuild_Builder1; aResult: var TopoDS_Shape): Standard_Integer {.
    importcpp: "CorrectResult2d", header: "TopOpeBRepBuild_Builder1.hxx".}