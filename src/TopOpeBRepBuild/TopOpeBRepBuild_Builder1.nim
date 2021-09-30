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
  TopOpeBRepBuildBuilder1* {.importcpp: "TopOpeBRepBuild_Builder1",
                            header: "TopOpeBRepBuild_Builder1.hxx", bycopy.} = object of TopOpeBRepBuildBuilder


proc `new`*(this: var TopOpeBRepBuildBuilder1; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_Builder1::operator new",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBuilder1; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_Builder1::operator delete",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildBuilder1; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_Builder1::operator new[]",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildBuilder1; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_Builder1::operator delete[]",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc `new`*(this: var TopOpeBRepBuildBuilder1; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_Builder1::operator new",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc `delete`*(this: var TopOpeBRepBuildBuilder1; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_Builder1::operator delete",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc constructTopOpeBRepBuildBuilder1*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildBuilder1 {.
    constructor, importcpp: "TopOpeBRepBuild_Builder1(@)",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc destroyTopOpeBRepBuildBuilder1*(this: var TopOpeBRepBuildBuilder1) {.
    importcpp: "#.~TopOpeBRepBuild_Builder1()",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc clear*(this: var TopOpeBRepBuildBuilder1) {.importcpp: "Clear",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder1;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Perform",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder1;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.importcpp: "Perform",
                               header: "TopOpeBRepBuild_Builder1.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder1) {.importcpp: "MergeKPart",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder1; tb1: TopAbsState; tb2: TopAbsState) {.
    importcpp: "MergeKPart", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillSolidSFS*(this: var TopOpeBRepBuildBuilder1; so1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillSolidSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillShellSFS*(this: var TopOpeBRepBuildBuilder1; sh1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillShellSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gWESMakeFaces*(this: var TopOpeBRepBuildBuilder1; ff: TopoDS_Shape;
                   wes: var TopOpeBRepBuildWireEdgeSet;
                   lof: var TopToolsListOfShape) {.importcpp: "GWESMakeFaces",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillSplitsPVS*(this: var TopOpeBRepBuildBuilder1; anEdge: TopoDS_Shape;
                    g1: TopOpeBRepBuildGTopo; pvs: var TopOpeBRepBuildPaveSet) {.
    importcpp: "GFillSplitsPVS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceNotSameDomSFS*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillFaceNotSameDomSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillFaceNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillWireNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; w1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillWireNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillEdgeNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; e1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillEdgeNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceSameDomSFS*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         sfs: var TopOpeBRepBuildShellFaceSet) {.
    importcpp: "GFillFaceSameDomSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceSameDomWES*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillFaceSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillWireSameDomWES*(this: var TopOpeBRepBuildBuilder1; w1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillWireSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillEdgeSameDomWES*(this: var TopOpeBRepBuildBuilder1; e1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "GFillEdgeSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc performONParts*(this: var TopOpeBRepBuildBuilder1; f: TopoDS_Shape;
                    sDfaces: TopToolsIndexedMapOfShape; g: TopOpeBRepBuildGTopo;
                    wes: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "PerformONParts", header: "TopOpeBRepBuild_Builder1.hxx".}
proc performPieceIn2D*(this: var TopOpeBRepBuildBuilder1;
                      aPieceToPerform: TopoDS_Edge; aOriginalEdge: TopoDS_Edge;
                      edgeFace: TopoDS_Face; toFace: TopoDS_Face;
                      g: TopOpeBRepBuildGTopo; keep: var StandardBoolean) {.
    importcpp: "PerformPieceIn2D", header: "TopOpeBRepBuild_Builder1.hxx".}
proc performPieceOn2D*(this: var TopOpeBRepBuildBuilder1; aPieceObj: TopoDS_Shape;
                      aFaceObj: TopoDS_Shape; aEdgeObj: TopoDS_Shape;
                      aListOfPieces: var TopToolsListOfShape;
                      aListOfFaces: var TopToolsListOfShape;
                      aListOfPiecesOut2d: var TopToolsListOfShape): int {.
    importcpp: "PerformPieceOn2D", header: "TopOpeBRepBuild_Builder1.hxx".}
proc twoPiecesON*(this: var TopOpeBRepBuildBuilder1; aSeq: TopToolsSequenceOfShape;
                 aListOfPieces: var TopToolsListOfShape;
                 aListOfFaces: var TopToolsListOfShape;
                 aListOfPiecesOut2d: var TopToolsListOfShape): int {.
    importcpp: "TwoPiecesON", header: "TopOpeBRepBuild_Builder1.hxx".}
proc correctResult2d*(this: var TopOpeBRepBuildBuilder1; aResult: var TopoDS_Shape): int {.
    importcpp: "CorrectResult2d", header: "TopOpeBRepBuild_Builder1.hxx".}