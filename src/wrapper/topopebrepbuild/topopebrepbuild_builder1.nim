import ../topabs/topabs_types
import ../standard/standard_types
import ../toptools/toptools_types
import ../topopebrepds/topopebrepds_types
import ../topods/topods_types
import topopebrepbuild_types





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



proc newTopOpeBRepBuildBuilder1*(bt: TopOpeBRepDS_BuildTool): TopOpeBRepBuildBuilder1 {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_Builder1(@)", header: "TopOpeBRepBuild_Builder1.hxx".}
proc destroyTopOpeBRepBuildBuilder1*(this: var TopOpeBRepBuildBuilder1) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_Builder1()", header: "TopOpeBRepBuild_Builder1.hxx".}
proc clear*(this: var TopOpeBRepBuildBuilder1) {.cdecl, importcpp: "Clear",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder1;
             hds: Handle[TopOpeBRepDS_HDataStructure]) {.cdecl,
    importcpp: "Perform", header: "TopOpeBRepBuild_Builder1.hxx".}
proc perform*(this: var TopOpeBRepBuildBuilder1;
             hds: Handle[TopOpeBRepDS_HDataStructure]; s1: TopoDS_Shape;
             s2: TopoDS_Shape) {.cdecl, importcpp: "Perform", header: "TopOpeBRepBuild_Builder1.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder1) {.cdecl, importcpp: "MergeKPart",
    header: "TopOpeBRepBuild_Builder1.hxx".}
proc mergeKPart*(this: var TopOpeBRepBuildBuilder1; tb1: TopAbsState; tb2: TopAbsState) {.
    cdecl, importcpp: "MergeKPart", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillSolidSFS*(this: var TopOpeBRepBuildBuilder1; so1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillSolidSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillShellSFS*(this: var TopOpeBRepBuildBuilder1; sh1: TopoDS_Shape;
                   lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                   sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillShellSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gWESMakeFaces*(this: var TopOpeBRepBuildBuilder1; ff: TopoDS_Shape;
                   wes: var TopOpeBRepBuildWireEdgeSet;
                   lof: var TopToolsListOfShape) {.cdecl,
    importcpp: "GWESMakeFaces", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillSplitsPVS*(this: var TopOpeBRepBuildBuilder1; anEdge: TopoDS_Shape;
                    g1: TopOpeBRepBuildGTopo; pvs: var TopOpeBRepBuildPaveSet) {.
    cdecl, importcpp: "GFillSplitsPVS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceNotSameDomSFS*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillFaceNotSameDomSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFaceNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillWireNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; w1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillWireNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillEdgeNotSameDomWES*(this: var TopOpeBRepBuildBuilder1; e1: TopoDS_Shape;
                            lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                            wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillEdgeNotSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceSameDomSFS*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         sfs: var TopOpeBRepBuildShellFaceSet) {.cdecl,
    importcpp: "GFillFaceSameDomSFS", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillFaceSameDomWES*(this: var TopOpeBRepBuildBuilder1; f1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillFaceSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillWireSameDomWES*(this: var TopOpeBRepBuildBuilder1; w1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillWireSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc gFillEdgeSameDomWES*(this: var TopOpeBRepBuildBuilder1; e1: TopoDS_Shape;
                         lso2: TopToolsListOfShape; g: TopOpeBRepBuildGTopo;
                         wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "GFillEdgeSameDomWES", header: "TopOpeBRepBuild_Builder1.hxx".}
proc performONParts*(this: var TopOpeBRepBuildBuilder1; f: TopoDS_Shape;
                    sDfaces: TopToolsIndexedMapOfShape; g: TopOpeBRepBuildGTopo;
                    wes: var TopOpeBRepBuildWireEdgeSet) {.cdecl,
    importcpp: "PerformONParts", header: "TopOpeBRepBuild_Builder1.hxx".}
proc performPieceIn2D*(this: var TopOpeBRepBuildBuilder1;
                      aPieceToPerform: TopoDS_Edge; aOriginalEdge: TopoDS_Edge;
                      edgeFace: TopoDS_Face; toFace: TopoDS_Face;
                      g: TopOpeBRepBuildGTopo; keep: var bool) {.cdecl,
    importcpp: "PerformPieceIn2D", header: "TopOpeBRepBuild_Builder1.hxx".}
proc performPieceOn2D*(this: var TopOpeBRepBuildBuilder1; aPieceObj: TopoDS_Shape;
                      aFaceObj: TopoDS_Shape; aEdgeObj: TopoDS_Shape;
                      aListOfPieces: var TopToolsListOfShape;
                      aListOfFaces: var TopToolsListOfShape;
                      aListOfPiecesOut2d: var TopToolsListOfShape): cint {.cdecl,
    importcpp: "PerformPieceOn2D", header: "TopOpeBRepBuild_Builder1.hxx".}
proc twoPiecesON*(this: var TopOpeBRepBuildBuilder1; aSeq: TopToolsSequenceOfShape;
                 aListOfPieces: var TopToolsListOfShape;
                 aListOfFaces: var TopToolsListOfShape;
                 aListOfPiecesOut2d: var TopToolsListOfShape): cint {.cdecl,
    importcpp: "TwoPiecesON", header: "TopOpeBRepBuild_Builder1.hxx".}
proc correctResult2d*(this: var TopOpeBRepBuildBuilder1; aResult: var TopoDS_Shape): cint {.
    cdecl, importcpp: "CorrectResult2d", header: "TopOpeBRepBuild_Builder1.hxx".}


