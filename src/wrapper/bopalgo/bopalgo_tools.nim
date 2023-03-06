import ../standard/standard_types
import ../ncollection/ncollection_types
import ../toptools/toptools_types
import ../topods/topods_types





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



proc makeBlocks*[TheType; TheTypeHasher](theMILI: NCollectionIndexedDataMap[
    TheType, NCollectionList[TheType], TheTypeHasher]; theMBlocks: var NCollectionList[
    NCollectionList[TheType]]; theAllocator: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "BOPAlgo_Tools::MakeBlocks(@)", header: "BOPAlgo_Tools.hxx".}
proc fillMap*[TheType; TheTypeHasher](n1: TheType; n2: TheType; theMILI: var NCollectionIndexedDataMap[
    TheType, NCollectionList[TheType], TheTypeHasher]; theAllocator: Handle[
    NCollectionBaseAllocator]) {.cdecl, importcpp: "BOPAlgo_Tools::FillMap(@)",
                                header: "BOPAlgo_Tools.hxx".}
#proc fillMap*(thePB1: Handle[BOPDS_PaveBlock]; theF: cint;
#             theMILI: var BOPDS_IndexedDataMapOfPaveBlockListOfInteger;
#             theAllocator: Handle[NCollectionBaseAllocator]) {.cdecl,
#    importcpp: "BOPAlgo_Tools::FillMap(@)", header: "BOPAlgo_Tools.hxx".}
#proc performCommonBlocks*(theMBlocks: var BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock;
#                         theAllocator: Handle[NCollectionBaseAllocator];
#                         theDS: var Bopds_Pds; theContext: Handle[IntToolsContext] = handle[
#    IntToolsContext]()) {.cdecl,
#                         importcpp: "BOPAlgo_Tools::PerformCommonBlocks(@)",
#                         header: "BOPAlgo_Tools.hxx".}
#proc performCommonBlocks*(theMBlocks: BOPDS_IndexedDataMapOfPaveBlockListOfInteger;
#                         theAllocator: Handle[NCollectionBaseAllocator];
#                         pDS: var Bopds_Pds; theContext: Handle[IntToolsContext] = handle[
#    IntToolsContext]()) {.cdecl,
#                         importcpp: "BOPAlgo_Tools::PerformCommonBlocks(@)",
#                         header: "BOPAlgo_Tools.hxx".}
#proc computeToleranceOfCB*(theCB: Handle[BOPDS_CommonBlock]; theDS: Bopds_Pds;
#                          theContext: Handle[IntToolsContext]): cfloat {.cdecl,
#    importcpp: "BOPAlgo_Tools::ComputeToleranceOfCB(@)", header: "BOPAlgo_Tools.hxx".}
proc edgesToWires*(theEdges: TopoDS_Shape; theWires: var TopoDS_Shape;
                  theShared: bool = false; theAngTol: cfloat = 1e-8): cint {.cdecl,
    importcpp: "BOPAlgo_Tools::EdgesToWires(@)", header: "BOPAlgo_Tools.hxx".}
proc wiresToFaces*(theWires: TopoDS_Shape; theFaces: var TopoDS_Shape;
                  theAngTol: cfloat = 1e-8): bool {.cdecl,
    importcpp: "BOPAlgo_Tools::WiresToFaces(@)", header: "BOPAlgo_Tools.hxx".}
proc intersectVertices*(theVertices: TopToolsIndexedDataMapOfShapeReal;
                       theFuzzyValue: cfloat;
                       theChains: var TopToolsListOfListOfShape) {.cdecl,
    importcpp: "BOPAlgo_Tools::IntersectVertices(@)", header: "BOPAlgo_Tools.hxx".}
#proc classifyFaces*(theFaces: TopToolsListOfShape; theSolids: TopToolsListOfShape;
#                   theRunParallel: bool; theContext: var Handle[IntToolsContext];
#                   theInParts: var TopToolsIndexedDataMapOfShapeListOfShape;
#    theShapeBoxMap: TopToolsDataMapOfShapeBox = topToolsDataMapOfShapeBox();
#    theSolidsIF: TopToolsDataMapOfShapeListOfShape = topToolsDataMapOfShapeListOfShape()) {.
#    cdecl, importcpp: "BOPAlgo_Tools::ClassifyFaces(@)", header: "BOPAlgo_Tools.hxx".}
#proc fillInternals*(theSolids: TopToolsListOfShape; theParts: TopToolsListOfShape;
#                   theImages: TopToolsDataMapOfShapeListOfShape;
#                   theContext: Handle[IntToolsContext]) {.cdecl,
#    importcpp: "BOPAlgo_Tools::FillInternals(@)", header: "BOPAlgo_Tools.hxx".}
#proc trsfToPoint*(theBox1: BndBox; theBox2: BndBox; theTrsf: var TrsfObj;
#                 thePoint: PntObj = pnt(0.0, 0.0, 0.0); theCriteria: cfloat = 1.e+5): bool {.
#    cdecl, importcpp: "BOPAlgo_Tools::TrsfToPoint(@)", header: "BOPAlgo_Tools.hxx".}


