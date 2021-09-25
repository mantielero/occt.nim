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

discard "forward decl of BOPDS_IndexRange"
discard "forward decl of BOPDS_ShapeInfo"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of BOPDS_FaceInfo"
discard "forward decl of Bnd_Box"
type
  Bopds_Ds* {.importcpp: "BOPDS_DS", header: "BOPDS_DS.hxx", bycopy.} = object ## ! Empty
                                                                       ## contructor
                                                                       ## !
                                                                       ## Initializes the pave blocks for the shape with index theIndex


proc constructBopdsDs*(): Bopds_Ds {.constructor, importcpp: "BOPDS_DS(@)",
                                  header: "BOPDS_DS.hxx".}
proc destroyBopdsDs*(this: var Bopds_Ds) {.importcpp: "#.~BOPDS_DS()",
                                       header: "BOPDS_DS.hxx".}
proc constructBopdsDs*(theAllocator: Handle[NCollectionBaseAllocator]): Bopds_Ds {.
    constructor, importcpp: "BOPDS_DS(@)", header: "BOPDS_DS.hxx".}
proc clear*(this: var Bopds_Ds) {.importcpp: "Clear", header: "BOPDS_DS.hxx".}
proc allocator*(this: Bopds_Ds): Handle[NCollectionBaseAllocator] {.noSideEffect,
    importcpp: "Allocator", header: "BOPDS_DS.hxx".}
proc setArguments*(this: var Bopds_Ds; theLS: TopToolsListOfShape) {.
    importcpp: "SetArguments", header: "BOPDS_DS.hxx".}
proc arguments*(this: Bopds_Ds): TopToolsListOfShape {.noSideEffect,
    importcpp: "Arguments", header: "BOPDS_DS.hxx".}
proc init*(this: var Bopds_Ds; theFuzz: float = confusion()) {.importcpp: "Init",
    header: "BOPDS_DS.hxx".}
proc nbShapes*(this: Bopds_Ds): int {.noSideEffect, importcpp: "NbShapes",
                                  header: "BOPDS_DS.hxx".}
proc nbSourceShapes*(this: Bopds_Ds): int {.noSideEffect,
                                        importcpp: "NbSourceShapes",
                                        header: "BOPDS_DS.hxx".}
proc nbRanges*(this: Bopds_Ds): int {.noSideEffect, importcpp: "NbRanges",
                                  header: "BOPDS_DS.hxx".}
proc range*(this: Bopds_Ds; theIndex: int): BOPDS_IndexRange {.noSideEffect,
    importcpp: "Range", header: "BOPDS_DS.hxx".}
proc rank*(this: Bopds_Ds; theIndex: int): int {.noSideEffect, importcpp: "Rank",
    header: "BOPDS_DS.hxx".}
proc isNewShape*(this: Bopds_Ds; theIndex: int): bool {.noSideEffect,
    importcpp: "IsNewShape", header: "BOPDS_DS.hxx".}
proc append*(this: var Bopds_Ds; theSI: BOPDS_ShapeInfo): int {.importcpp: "Append",
    header: "BOPDS_DS.hxx".}
proc append*(this: var Bopds_Ds; theS: TopoDS_Shape): int {.importcpp: "Append",
    header: "BOPDS_DS.hxx".}
proc shapeInfo*(this: Bopds_Ds; theIndex: int): BOPDS_ShapeInfo {.noSideEffect,
    importcpp: "ShapeInfo", header: "BOPDS_DS.hxx".}
proc changeShapeInfo*(this: var Bopds_Ds; theIndex: int): var BOPDS_ShapeInfo {.
    importcpp: "ChangeShapeInfo", header: "BOPDS_DS.hxx".}
proc shape*(this: Bopds_Ds; theIndex: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BOPDS_DS.hxx".}
proc index*(this: Bopds_Ds; theS: TopoDS_Shape): int {.noSideEffect,
    importcpp: "Index", header: "BOPDS_DS.hxx".}
proc paveBlocksPool*(this: Bopds_Ds): BOPDS_VectorOfListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocksPool", header: "BOPDS_DS.hxx".}
proc changePaveBlocksPool*(this: var Bopds_Ds): var BOPDS_VectorOfListOfPaveBlock {.
    importcpp: "ChangePaveBlocksPool", header: "BOPDS_DS.hxx".}
proc hasPaveBlocks*(this: Bopds_Ds; theIndex: int): bool {.noSideEffect,
    importcpp: "HasPaveBlocks", header: "BOPDS_DS.hxx".}
proc paveBlocks*(this: Bopds_Ds; theIndex: int): BOPDS_ListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocks", header: "BOPDS_DS.hxx".}
proc changePaveBlocks*(this: var Bopds_Ds; theIndex: int): var BOPDS_ListOfPaveBlock {.
    importcpp: "ChangePaveBlocks", header: "BOPDS_DS.hxx".}
proc updatePaveBlocks*(this: var Bopds_Ds) {.importcpp: "UpdatePaveBlocks",
    header: "BOPDS_DS.hxx".}
proc updatePaveBlock*(this: var Bopds_Ds; thePB: Handle[BOPDS_PaveBlock]) {.
    importcpp: "UpdatePaveBlock", header: "BOPDS_DS.hxx".}
proc updateCommonBlock*(this: var Bopds_Ds; theCB: Handle[BOPDS_CommonBlock];
                       theFuzz: float) {.importcpp: "UpdateCommonBlock",
                                       header: "BOPDS_DS.hxx".}
proc isCommonBlock*(this: Bopds_Ds; thePB: Handle[BOPDS_PaveBlock]): bool {.
    noSideEffect, importcpp: "IsCommonBlock", header: "BOPDS_DS.hxx".}
proc commonBlock*(this: Bopds_Ds; thePB: Handle[BOPDS_PaveBlock]): Handle[
    BOPDS_CommonBlock] {.noSideEffect, importcpp: "CommonBlock",
                        header: "BOPDS_DS.hxx".}
proc setCommonBlock*(this: var Bopds_Ds; thePB: Handle[BOPDS_PaveBlock];
                    theCB: Handle[BOPDS_CommonBlock]) {.
    importcpp: "SetCommonBlock", header: "BOPDS_DS.hxx".}
proc realPaveBlock*(this: Bopds_Ds; thePB: Handle[BOPDS_PaveBlock]): Handle[
    BOPDS_PaveBlock] {.noSideEffect, importcpp: "RealPaveBlock",
                      header: "BOPDS_DS.hxx".}
proc isCommonBlockOnEdge*(this: Bopds_Ds; thePB: Handle[BOPDS_PaveBlock]): bool {.
    noSideEffect, importcpp: "IsCommonBlockOnEdge", header: "BOPDS_DS.hxx".}
proc faceInfoPool*(this: Bopds_Ds): BOPDS_VectorOfFaceInfo {.noSideEffect,
    importcpp: "FaceInfoPool", header: "BOPDS_DS.hxx".}
proc hasFaceInfo*(this: Bopds_Ds; theIndex: int): bool {.noSideEffect,
    importcpp: "HasFaceInfo", header: "BOPDS_DS.hxx".}
proc faceInfo*(this: Bopds_Ds; theIndex: int): BOPDS_FaceInfo {.noSideEffect,
    importcpp: "FaceInfo", header: "BOPDS_DS.hxx".}
proc changeFaceInfo*(this: var Bopds_Ds; theIndex: int): var BOPDS_FaceInfo {.
    importcpp: "ChangeFaceInfo", header: "BOPDS_DS.hxx".}
proc updateFaceInfoIn*(this: var Bopds_Ds; theIndex: int) {.
    importcpp: "UpdateFaceInfoIn", header: "BOPDS_DS.hxx".}
proc updateFaceInfoIn*(this: var Bopds_Ds; theFaces: TColStdMapOfInteger) {.
    importcpp: "UpdateFaceInfoIn", header: "BOPDS_DS.hxx".}
proc updateFaceInfoOn*(this: var Bopds_Ds; theIndex: int) {.
    importcpp: "UpdateFaceInfoOn", header: "BOPDS_DS.hxx".}
proc updateFaceInfoOn*(this: var Bopds_Ds; theFaces: TColStdMapOfInteger) {.
    importcpp: "UpdateFaceInfoOn", header: "BOPDS_DS.hxx".}
proc faceInfoOn*(this: var Bopds_Ds; theIndex: int;
                theMPB: var BOPDS_IndexedMapOfPaveBlock;
                theMVP: var TColStdMapOfInteger) {.importcpp: "FaceInfoOn",
    header: "BOPDS_DS.hxx".}
proc faceInfoIn*(this: var Bopds_Ds; theIndex: int;
                theMPB: var BOPDS_IndexedMapOfPaveBlock;
                theMVP: var TColStdMapOfInteger) {.importcpp: "FaceInfoIn",
    header: "BOPDS_DS.hxx".}
proc aloneVertices*(this: Bopds_Ds; theF: int; theLI: var TColStdListOfInteger) {.
    noSideEffect, importcpp: "AloneVertices", header: "BOPDS_DS.hxx".}
proc refineFaceInfoOn*(this: var Bopds_Ds) {.importcpp: "RefineFaceInfoOn",
    header: "BOPDS_DS.hxx".}
proc refineFaceInfoIn*(this: var Bopds_Ds) {.importcpp: "RefineFaceInfoIn",
    header: "BOPDS_DS.hxx".}
proc subShapesOnIn*(this: Bopds_Ds; theNF1: int; theNF2: int;
                   theMVOnIn: var TColStdMapOfInteger;
                   theMVCommon: var TColStdMapOfInteger;
                   thePBOnIn: var BOPDS_IndexedMapOfPaveBlock;
                   theCommonPB: var BOPDS_MapOfPaveBlock) {.noSideEffect,
    importcpp: "SubShapesOnIn", header: "BOPDS_DS.hxx".}
proc sharedEdges*(this: var Bopds_Ds; theF1: int; theF2: int;
                 theLI: var TColStdListOfInteger;
                 theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "SharedEdges", header: "BOPDS_DS.hxx".}
proc shapesSD*(this: var Bopds_Ds): var TColStdDataMapOfIntegerInteger {.
    importcpp: "ShapesSD", header: "BOPDS_DS.hxx".}
proc addShapeSD*(this: var Bopds_Ds; theIndex: int; theIndexSD: int) {.
    importcpp: "AddShapeSD", header: "BOPDS_DS.hxx".}
proc hasShapeSD*(this: Bopds_Ds; theIndex: int; theIndexSD: var int): bool {.
    noSideEffect, importcpp: "HasShapeSD", header: "BOPDS_DS.hxx".}
proc interfVV*(this: var Bopds_Ds): var BOPDS_VectorOfInterfVV {.
    importcpp: "InterfVV", header: "BOPDS_DS.hxx".}
proc interfVE*(this: var Bopds_Ds): var BOPDS_VectorOfInterfVE {.
    importcpp: "InterfVE", header: "BOPDS_DS.hxx".}
proc interfVF*(this: var Bopds_Ds): var BOPDS_VectorOfInterfVF {.
    importcpp: "InterfVF", header: "BOPDS_DS.hxx".}
proc interfEE*(this: var Bopds_Ds): var BOPDS_VectorOfInterfEE {.
    importcpp: "InterfEE", header: "BOPDS_DS.hxx".}
proc interfEF*(this: var Bopds_Ds): var BOPDS_VectorOfInterfEF {.
    importcpp: "InterfEF", header: "BOPDS_DS.hxx".}
proc interfFF*(this: var Bopds_Ds): var BOPDS_VectorOfInterfFF {.
    importcpp: "InterfFF", header: "BOPDS_DS.hxx".}
proc interfVZ*(this: var Bopds_Ds): var BOPDS_VectorOfInterfVZ {.
    importcpp: "InterfVZ", header: "BOPDS_DS.hxx".}
proc interfEZ*(this: var Bopds_Ds): var BOPDS_VectorOfInterfEZ {.
    importcpp: "InterfEZ", header: "BOPDS_DS.hxx".}
proc interfFZ*(this: var Bopds_Ds): var BOPDS_VectorOfInterfFZ {.
    importcpp: "InterfFZ", header: "BOPDS_DS.hxx".}
proc interfZZ*(this: var Bopds_Ds): var BOPDS_VectorOfInterfZZ {.
    importcpp: "InterfZZ", header: "BOPDS_DS.hxx".}
proc nbInterfTypes*(): int {.importcpp: "BOPDS_DS::NbInterfTypes(@)",
                          header: "BOPDS_DS.hxx".}
proc addInterf*(this: var Bopds_Ds; theI1: int; theI2: int): bool {.
    importcpp: "AddInterf", header: "BOPDS_DS.hxx".}
proc hasInterf*(this: Bopds_Ds; theI: int): bool {.noSideEffect,
    importcpp: "HasInterf", header: "BOPDS_DS.hxx".}
proc hasInterf*(this: Bopds_Ds; theI1: int; theI2: int): bool {.noSideEffect,
    importcpp: "HasInterf", header: "BOPDS_DS.hxx".}
proc hasInterfShapeSubShapes*(this: Bopds_Ds; theI1: int; theI2: int;
                             theFlag: bool = true): bool {.noSideEffect,
    importcpp: "HasInterfShapeSubShapes", header: "BOPDS_DS.hxx".}
proc hasInterfSubShapes*(this: Bopds_Ds; theI1: int; theI2: int): bool {.noSideEffect,
    importcpp: "HasInterfSubShapes", header: "BOPDS_DS.hxx".}
proc interferences*(this: Bopds_Ds): BOPDS_MapOfPair {.noSideEffect,
    importcpp: "Interferences", header: "BOPDS_DS.hxx".}
proc dump*(this: Bopds_Ds) {.noSideEffect, importcpp: "Dump", header: "BOPDS_DS.hxx".}
proc isSubShape*(this: var Bopds_Ds; theI1: int; theI2: int): bool {.
    importcpp: "IsSubShape", header: "BOPDS_DS.hxx".}
proc paves*(this: var Bopds_Ds; theIndex: int; theLP: var BOPDS_ListOfPave) {.
    importcpp: "Paves", header: "BOPDS_DS.hxx".}
proc updatePaveBlocksWithSDVertices*(this: var Bopds_Ds) {.
    importcpp: "UpdatePaveBlocksWithSDVertices", header: "BOPDS_DS.hxx".}
proc updatePaveBlockWithSDVertices*(this: var Bopds_Ds;
                                   thePB: Handle[BOPDS_PaveBlock]) {.
    importcpp: "UpdatePaveBlockWithSDVertices", header: "BOPDS_DS.hxx".}
proc updateCommonBlockWithSDVertices*(this: var Bopds_Ds;
                                     theCB: Handle[BOPDS_CommonBlock]) {.
    importcpp: "UpdateCommonBlockWithSDVertices", header: "BOPDS_DS.hxx".}
proc initPaveBlocksForVertex*(this: var Bopds_Ds; theNV: int) {.
    importcpp: "InitPaveBlocksForVertex", header: "BOPDS_DS.hxx".}
proc releasePaveBlocks*(this: var Bopds_Ds) {.importcpp: "ReleasePaveBlocks",
    header: "BOPDS_DS.hxx".}
proc isValidShrunkData*(this: var Bopds_Ds; thePB: Handle[BOPDS_PaveBlock]): bool {.
    importcpp: "IsValidShrunkData", header: "BOPDS_DS.hxx".}
proc buildBndBoxSolid*(this: var Bopds_Ds; theIndex: int; theBox: var BndBox;
                      theCheckInverted: bool = true) {.
    importcpp: "BuildBndBoxSolid", header: "BOPDS_DS.hxx".}
