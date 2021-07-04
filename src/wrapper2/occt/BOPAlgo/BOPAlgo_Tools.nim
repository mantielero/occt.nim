##  Created by: Peter KURNEV
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
  ../Standard/Standard_Handle,
  ../BOPDS/BOPDS_IndexedDataMapOfPaveBlockListOfInteger,
  ../BOPDS/BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock, ../BOPDS/BOPDS_PDS,
  ../NCollection/NCollection_BaseAllocator,
  ../TopTools/TopTools_DataMapOfShapeBox,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeReal,
  ../TopTools/TopTools_ListOfListOfShape, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Integer

discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Shape"
type
  BOPAlgo_Tools* {.importcpp: "BOPAlgo_Tools", header: "BOPAlgo_Tools.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Makes
                                                                                      ## the
                                                                                      ## chains
                                                                                      ## of
                                                                                      ## the
                                                                                      ## connected
                                                                                      ## elements
                                                                                      ## from
                                                                                      ## the
                                                                                      ## given
                                                                                      ## connexity
                                                                                      ## map


proc MakeBlocks*[theType; theTypeHasher](theMILI: NCollection_IndexedDataMap[
    theType, NCollection_List[theType], theTypeHasher]; theMBlocks: var NCollection_List[
    NCollection_List[theType]]; theAllocator: handle[NCollection_BaseAllocator]) {.
    importcpp: "BOPAlgo_Tools::MakeBlocks(@)", header: "BOPAlgo_Tools.hxx".}
proc FillMap*[theType; theTypeHasher](n1: theType; n2: theType; theMILI: var NCollection_IndexedDataMap[
    theType, NCollection_List[theType], theTypeHasher]; theAllocator: handle[
    NCollection_BaseAllocator]) {.importcpp: "BOPAlgo_Tools::FillMap(@)",
                                 header: "BOPAlgo_Tools.hxx".}
proc FillMap*(thePB1: handle[BOPDS_PaveBlock]; theF: Standard_Integer;
             theMILI: var BOPDS_IndexedDataMapOfPaveBlockListOfInteger;
             theAllocator: handle[NCollection_BaseAllocator]) {.
    importcpp: "BOPAlgo_Tools::FillMap(@)", header: "BOPAlgo_Tools.hxx".}
proc PerformCommonBlocks*(theMBlocks: var BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock;
                         theAllocator: handle[NCollection_BaseAllocator];
                         theDS: var BOPDS_PDS; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPAlgo_Tools::PerformCommonBlocks(@)",
                          header: "BOPAlgo_Tools.hxx".}
proc PerformCommonBlocks*(theMBlocks: BOPDS_IndexedDataMapOfPaveBlockListOfInteger;
                         theAllocator: handle[NCollection_BaseAllocator];
                         pDS: var BOPDS_PDS; theContext: handle[IntTools_Context] = handle[
    IntTools_Context]()) {.importcpp: "BOPAlgo_Tools::PerformCommonBlocks(@)",
                          header: "BOPAlgo_Tools.hxx".}
proc ComputeToleranceOfCB*(theCB: handle[BOPDS_CommonBlock]; theDS: BOPDS_PDS;
                          theContext: handle[IntTools_Context]): Standard_Real {.
    importcpp: "BOPAlgo_Tools::ComputeToleranceOfCB(@)",
    header: "BOPAlgo_Tools.hxx".}
proc EdgesToWires*(theEdges: TopoDS_Shape; theWires: var TopoDS_Shape;
                  theShared: Standard_Boolean = Standard_False;
                  theAngTol: Standard_Real = 1.e-8): Standard_Integer {.
    importcpp: "BOPAlgo_Tools::EdgesToWires(@)", header: "BOPAlgo_Tools.hxx".}
proc WiresToFaces*(theWires: TopoDS_Shape; theFaces: var TopoDS_Shape;
                  theAngTol: Standard_Real = 1.e-8): Standard_Boolean {.
    importcpp: "BOPAlgo_Tools::WiresToFaces(@)", header: "BOPAlgo_Tools.hxx".}
proc IntersectVertices*(theVertices: TopTools_IndexedDataMapOfShapeReal;
                       theFuzzyValue: Standard_Real;
                       theChains: var TopTools_ListOfListOfShape) {.
    importcpp: "BOPAlgo_Tools::IntersectVertices(@)", header: "BOPAlgo_Tools.hxx".}
proc ClassifyFaces*(theFaces: TopTools_ListOfShape;
                   theSolids: TopTools_ListOfShape;
                   theRunParallel: Standard_Boolean;
                   theContext: var handle[IntTools_Context];
                   theInParts: var TopTools_IndexedDataMapOfShapeListOfShape;
    theShapeBoxMap: TopTools_DataMapOfShapeBox = TopTools_DataMapOfShapeBox();
    theSolidsIF: TopTools_DataMapOfShapeListOfShape = TopTools_DataMapOfShapeListOfShape()) {.
    importcpp: "BOPAlgo_Tools::ClassifyFaces(@)", header: "BOPAlgo_Tools.hxx".}
proc FillInternals*(theSolids: TopTools_ListOfShape;
                   theParts: TopTools_ListOfShape;
                   theImages: TopTools_DataMapOfShapeListOfShape;
                   theContext: handle[IntTools_Context]) {.
    importcpp: "BOPAlgo_Tools::FillInternals(@)", header: "BOPAlgo_Tools.hxx".}
proc TrsfToPoint*(theBox1: Bnd_Box; theBox2: Bnd_Box; theTrsf: var gp_Trsf;
                 thePoint: gp_Pnt = gp_Pnt(0.0, 0.0, 0.0);
                 theCriteria: Standard_Real = 1.e+5): Standard_Boolean {.
    importcpp: "BOPAlgo_Tools::TrsfToPoint(@)", header: "BOPAlgo_Tools.hxx".}