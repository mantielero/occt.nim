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


proc newTopOpeBRepBuildBuilder1*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildBuilder1 {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Builder1(@)", dynlib: tkbool.}
proc destroyTopOpeBRepBuildBuilder1*(this: var TopOpeBRepBuildBuilder1) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_Builder1()", dynlib: tkbool.}
proc clear*(this: var TopOpeBRepBuildBuilder1) {.cdecl, importcpp: "Clear",
    dynlib: tkbool.}
proc perform*(this: var TopOpeBRepBuildBuilder1;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "Perform", dynlib: tkbool.}
proc perform*(this: var TopOpeBRepBuildBuilder1;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.cdecl, importcpp: "Perform", dynlib: tkbool.}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder1) {.cdecl, importcpp: "MergeKPart",
    dynlib: tkbool.}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder1; tb1: TopAbsState; tb2: TopAbsState) {.
    cdecl, importcpp: "MergeKPart", dynlib: tkbool.}
proc gFillSolidSFS*(this: var TopOpeBRepBuildBuilder1; so1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSolidSFS", dynlib: tkbool.}
proc gFillShellSFS*(this: var TopOpeBRepBuildBuilder1; sh1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillShellSFS", dynlib: tkbool.}
proc gWESMakeFaces*(this: var TopOpeBRepBuildBuilder1; ff: TopoDS_Shape;
                   wes: var TopOpeBRepBuildWireEdgeSet;
                   lof: var TopToolsListOfShape) {.cdecl,
    importcpp: "GWESMakeFaces", dynlib: tkbool.}
proc gFillSplitsPVS*(this: var TopOpeBRepBuildBuilder1; anEdge: TopoDS_Shape;
                    g1: TopOpeBRepBuildGTopo; pvs: var TopOpeBRepBuildPaveSet) {.
    cdecl, importcpp: "GFillSplitsPVS", dynlib: tkbool.}
proc gFillFaceNotSameDomSFS*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillFaceNotSameDomSFS", dynlib: tkbool.}
proc gFillFaceNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFaceNotSameDomWES", dynlib: tkbool.}
proc gFillWireNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; w1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillWireNotSameDomWES", dynlib: tkbool.}
proc gFillEdgeNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; e1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillEdgeNotSameDomWES", dynlib: tkbool.}
proc gFillFaceSameDomSFS*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillFaceSameDomSFS", dynlib: tkbool.}
proc gFillFaceSameDomWES*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFaceSameDomWES", dynlib: tkbool.}
proc gFillWireSameDomWES*(this: var TopOpeBRepBuildBuilder1; w1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillWireSameDomWES", dynlib: tkbool.}
proc gFillEdgeSameDomWES*(this: var TopOpeBRepBuildBuilder1; e1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillEdgeSameDomWES", dynlib: tkbool.}
proc performONParts*(this: var TopOpeBRepBuildBuilder1; f: TopoDS_Shape;
                    sDfaces: TopToolsIndexedMapOfShape; g: TopOpeBRepBuildGTopo;
                    wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "PerformONParts", dynlib: tkbool.}
proc performPieceIn2D*(this: var TopOpeBRepBuildBuilder1;
                      aPieceToPerform: TopoDS_Edge; aOriginalEdge: TopoDS_Edge;
                      edgeFace: TopoDS_Face; toFace: TopoDS_Face;
                      g: TopOpeBRepBuildGTopo; keep: var bool) {.cdecl,
    importcpp: "PerformPieceIn2D", dynlib: tkbool.}
proc performPieceOn2D*(this: var TopOpeBRepBuildBuilder1; aPieceObj: TopoDS_Shape;
                      aFaceObj: TopoDS_Shape; aEdgeObj: TopoDS_Shape;
                      aListOfPieces: var TopToolsListOfShape;
                      aListOfFaces: var TopToolsListOfShape;
                      aListOfPiecesOut2d: var TopToolsListOfShape): cint {.cdecl,
    importcpp: "PerformPieceOn2D", dynlib: tkbool.}
proc twoPiecesON*(this: var TopOpeBRepBuildBuilder1; aSeq: TopToolsSequenceOfShape;
                 aListOfPieces: var TopToolsListOfShape;
                 aListOfFaces: var TopToolsListOfShape;
                 aListOfPiecesOut2d: var TopToolsListOfShape): cint {.cdecl,
    importcpp: "TwoPiecesON", dynlib: tkbool.}
proc correctResult2d*(this: var TopOpeBRepBuildBuilder1; aResult: var TopoDS_Shape): cint {.
    cdecl, importcpp: "CorrectResult2d", dynlib: tkbool.}