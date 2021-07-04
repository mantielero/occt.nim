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
  ../Standard/Standard_Handle, BOPDS_DataMapOfPaveBlockCommonBlock,
  BOPDS_IndexedMapOfPaveBlock, BOPDS_ListOfPave, BOPDS_ListOfPaveBlock,
  BOPDS_MapOfPair, BOPDS_MapOfPaveBlock, BOPDS_VectorOfFaceInfo,
  BOPDS_VectorOfIndexRange, BOPDS_VectorOfInterfEE, BOPDS_VectorOfInterfEF,
  BOPDS_VectorOfInterfEZ, BOPDS_VectorOfInterfFF, BOPDS_VectorOfInterfFZ,
  BOPDS_VectorOfInterfVE, BOPDS_VectorOfInterfVF, BOPDS_VectorOfInterfVV,
  BOPDS_VectorOfInterfVZ, BOPDS_VectorOfInterfZZ, BOPDS_VectorOfListOfPaveBlock,
  BOPDS_VectorOfShapeInfo, ../NCollection/NCollection_BaseAllocator,
  ../Precision/Precision, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../TColStd/TColStd_DataMapOfIntegerInteger,
  ../TColStd/TColStd_DataMapOfIntegerListOfInteger,
  ../TColStd/TColStd_ListOfInteger, ../TColStd/TColStd_MapOfInteger,
  ../TopTools/TopTools_DataMapOfShapeInteger, ../TopTools/TopTools_ListOfShape

discard "forward decl of BOPDS_IndexRange"
discard "forward decl of BOPDS_ShapeInfo"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of BOPDS_FaceInfo"
discard "forward decl of Bnd_Box"
type
  BOPDS_DS* {.importcpp: "BOPDS_DS", header: "BOPDS_DS.hxx", bycopy.} = object ## ! Empty
                                                                       ## contructor
                                                                       ## !
                                                                       ## Initializes the pave blocks for the shape with index theIndex


proc constructBOPDS_DS*(): BOPDS_DS {.constructor, importcpp: "BOPDS_DS(@)",
                                   header: "BOPDS_DS.hxx".}
proc destroyBOPDS_DS*(this: var BOPDS_DS) {.importcpp: "#.~BOPDS_DS()",
                                        header: "BOPDS_DS.hxx".}
proc constructBOPDS_DS*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_DS {.
    constructor, importcpp: "BOPDS_DS(@)", header: "BOPDS_DS.hxx".}
proc Clear*(this: var BOPDS_DS) {.importcpp: "Clear", header: "BOPDS_DS.hxx".}
proc Allocator*(this: BOPDS_DS): handle[NCollection_BaseAllocator] {.noSideEffect,
    importcpp: "Allocator", header: "BOPDS_DS.hxx".}
proc SetArguments*(this: var BOPDS_DS; theLS: TopTools_ListOfShape) {.
    importcpp: "SetArguments", header: "BOPDS_DS.hxx".}
proc Arguments*(this: BOPDS_DS): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Arguments", header: "BOPDS_DS.hxx".}
proc Init*(this: var BOPDS_DS; theFuzz: Standard_Real = Confusion()) {.
    importcpp: "Init", header: "BOPDS_DS.hxx".}
proc NbShapes*(this: BOPDS_DS): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "BOPDS_DS.hxx".}
proc NbSourceShapes*(this: BOPDS_DS): Standard_Integer {.noSideEffect,
    importcpp: "NbSourceShapes", header: "BOPDS_DS.hxx".}
proc NbRanges*(this: BOPDS_DS): Standard_Integer {.noSideEffect,
    importcpp: "NbRanges", header: "BOPDS_DS.hxx".}
proc Range*(this: BOPDS_DS; theIndex: Standard_Integer): BOPDS_IndexRange {.
    noSideEffect, importcpp: "Range", header: "BOPDS_DS.hxx".}
proc Rank*(this: BOPDS_DS; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Rank", header: "BOPDS_DS.hxx".}
proc IsNewShape*(this: BOPDS_DS; theIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsNewShape", header: "BOPDS_DS.hxx".}
proc Append*(this: var BOPDS_DS; theSI: BOPDS_ShapeInfo): Standard_Integer {.
    importcpp: "Append", header: "BOPDS_DS.hxx".}
proc Append*(this: var BOPDS_DS; theS: TopoDS_Shape): Standard_Integer {.
    importcpp: "Append", header: "BOPDS_DS.hxx".}
proc ShapeInfo*(this: BOPDS_DS; theIndex: Standard_Integer): BOPDS_ShapeInfo {.
    noSideEffect, importcpp: "ShapeInfo", header: "BOPDS_DS.hxx".}
proc ChangeShapeInfo*(this: var BOPDS_DS; theIndex: Standard_Integer): var BOPDS_ShapeInfo {.
    importcpp: "ChangeShapeInfo", header: "BOPDS_DS.hxx".}
proc Shape*(this: BOPDS_DS; theIndex: Standard_Integer): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BOPDS_DS.hxx".}
proc Index*(this: BOPDS_DS; theS: TopoDS_Shape): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "BOPDS_DS.hxx".}
proc PaveBlocksPool*(this: BOPDS_DS): BOPDS_VectorOfListOfPaveBlock {.noSideEffect,
    importcpp: "PaveBlocksPool", header: "BOPDS_DS.hxx".}
proc ChangePaveBlocksPool*(this: var BOPDS_DS): var BOPDS_VectorOfListOfPaveBlock {.
    importcpp: "ChangePaveBlocksPool", header: "BOPDS_DS.hxx".}
proc HasPaveBlocks*(this: BOPDS_DS; theIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasPaveBlocks", header: "BOPDS_DS.hxx".}
proc PaveBlocks*(this: BOPDS_DS; theIndex: Standard_Integer): BOPDS_ListOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocks", header: "BOPDS_DS.hxx".}
proc ChangePaveBlocks*(this: var BOPDS_DS; theIndex: Standard_Integer): var BOPDS_ListOfPaveBlock {.
    importcpp: "ChangePaveBlocks", header: "BOPDS_DS.hxx".}
proc UpdatePaveBlocks*(this: var BOPDS_DS) {.importcpp: "UpdatePaveBlocks",
    header: "BOPDS_DS.hxx".}
proc UpdatePaveBlock*(this: var BOPDS_DS; thePB: handle[BOPDS_PaveBlock]) {.
    importcpp: "UpdatePaveBlock", header: "BOPDS_DS.hxx".}
proc UpdateCommonBlock*(this: var BOPDS_DS; theCB: handle[BOPDS_CommonBlock];
                       theFuzz: Standard_Real) {.importcpp: "UpdateCommonBlock",
    header: "BOPDS_DS.hxx".}
proc IsCommonBlock*(this: BOPDS_DS; thePB: handle[BOPDS_PaveBlock]): Standard_Boolean {.
    noSideEffect, importcpp: "IsCommonBlock", header: "BOPDS_DS.hxx".}
proc CommonBlock*(this: BOPDS_DS; thePB: handle[BOPDS_PaveBlock]): handle[
    BOPDS_CommonBlock] {.noSideEffect, importcpp: "CommonBlock",
                        header: "BOPDS_DS.hxx".}
proc SetCommonBlock*(this: var BOPDS_DS; thePB: handle[BOPDS_PaveBlock];
                    theCB: handle[BOPDS_CommonBlock]) {.
    importcpp: "SetCommonBlock", header: "BOPDS_DS.hxx".}
proc RealPaveBlock*(this: BOPDS_DS; thePB: handle[BOPDS_PaveBlock]): handle[
    BOPDS_PaveBlock] {.noSideEffect, importcpp: "RealPaveBlock",
                      header: "BOPDS_DS.hxx".}
proc IsCommonBlockOnEdge*(this: BOPDS_DS; thePB: handle[BOPDS_PaveBlock]): Standard_Boolean {.
    noSideEffect, importcpp: "IsCommonBlockOnEdge", header: "BOPDS_DS.hxx".}
proc FaceInfoPool*(this: BOPDS_DS): BOPDS_VectorOfFaceInfo {.noSideEffect,
    importcpp: "FaceInfoPool", header: "BOPDS_DS.hxx".}
proc HasFaceInfo*(this: BOPDS_DS; theIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasFaceInfo", header: "BOPDS_DS.hxx".}
proc FaceInfo*(this: BOPDS_DS; theIndex: Standard_Integer): BOPDS_FaceInfo {.
    noSideEffect, importcpp: "FaceInfo", header: "BOPDS_DS.hxx".}
proc ChangeFaceInfo*(this: var BOPDS_DS; theIndex: Standard_Integer): var BOPDS_FaceInfo {.
    importcpp: "ChangeFaceInfo", header: "BOPDS_DS.hxx".}
proc UpdateFaceInfoIn*(this: var BOPDS_DS; theIndex: Standard_Integer) {.
    importcpp: "UpdateFaceInfoIn", header: "BOPDS_DS.hxx".}
proc UpdateFaceInfoIn*(this: var BOPDS_DS; theFaces: TColStd_MapOfInteger) {.
    importcpp: "UpdateFaceInfoIn", header: "BOPDS_DS.hxx".}
proc UpdateFaceInfoOn*(this: var BOPDS_DS; theIndex: Standard_Integer) {.
    importcpp: "UpdateFaceInfoOn", header: "BOPDS_DS.hxx".}
proc UpdateFaceInfoOn*(this: var BOPDS_DS; theFaces: TColStd_MapOfInteger) {.
    importcpp: "UpdateFaceInfoOn", header: "BOPDS_DS.hxx".}
proc FaceInfoOn*(this: var BOPDS_DS; theIndex: Standard_Integer;
                theMPB: var BOPDS_IndexedMapOfPaveBlock;
                theMVP: var TColStd_MapOfInteger) {.importcpp: "FaceInfoOn",
    header: "BOPDS_DS.hxx".}
proc FaceInfoIn*(this: var BOPDS_DS; theIndex: Standard_Integer;
                theMPB: var BOPDS_IndexedMapOfPaveBlock;
                theMVP: var TColStd_MapOfInteger) {.importcpp: "FaceInfoIn",
    header: "BOPDS_DS.hxx".}
proc AloneVertices*(this: BOPDS_DS; theF: Standard_Integer;
                   theLI: var TColStd_ListOfInteger) {.noSideEffect,
    importcpp: "AloneVertices", header: "BOPDS_DS.hxx".}
proc RefineFaceInfoOn*(this: var BOPDS_DS) {.importcpp: "RefineFaceInfoOn",
    header: "BOPDS_DS.hxx".}
proc RefineFaceInfoIn*(this: var BOPDS_DS) {.importcpp: "RefineFaceInfoIn",
    header: "BOPDS_DS.hxx".}
proc SubShapesOnIn*(this: BOPDS_DS; theNF1: Standard_Integer;
                   theNF2: Standard_Integer; theMVOnIn: var TColStd_MapOfInteger;
                   theMVCommon: var TColStd_MapOfInteger;
                   thePBOnIn: var BOPDS_IndexedMapOfPaveBlock;
                   theCommonPB: var BOPDS_MapOfPaveBlock) {.noSideEffect,
    importcpp: "SubShapesOnIn", header: "BOPDS_DS.hxx".}
proc SharedEdges*(this: var BOPDS_DS; theF1: Standard_Integer;
                 theF2: Standard_Integer; theLI: var TColStd_ListOfInteger;
                 theAllocator: handle[NCollection_BaseAllocator]) {.
    importcpp: "SharedEdges", header: "BOPDS_DS.hxx".}
proc ShapesSD*(this: var BOPDS_DS): var TColStd_DataMapOfIntegerInteger {.
    importcpp: "ShapesSD", header: "BOPDS_DS.hxx".}
proc AddShapeSD*(this: var BOPDS_DS; theIndex: Standard_Integer;
                theIndexSD: Standard_Integer) {.importcpp: "AddShapeSD",
    header: "BOPDS_DS.hxx".}
proc HasShapeSD*(this: BOPDS_DS; theIndex: Standard_Integer;
                theIndexSD: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "HasShapeSD", header: "BOPDS_DS.hxx".}
proc InterfVV*(this: var BOPDS_DS): var BOPDS_VectorOfInterfVV {.
    importcpp: "InterfVV", header: "BOPDS_DS.hxx".}
proc InterfVE*(this: var BOPDS_DS): var BOPDS_VectorOfInterfVE {.
    importcpp: "InterfVE", header: "BOPDS_DS.hxx".}
proc InterfVF*(this: var BOPDS_DS): var BOPDS_VectorOfInterfVF {.
    importcpp: "InterfVF", header: "BOPDS_DS.hxx".}
proc InterfEE*(this: var BOPDS_DS): var BOPDS_VectorOfInterfEE {.
    importcpp: "InterfEE", header: "BOPDS_DS.hxx".}
proc InterfEF*(this: var BOPDS_DS): var BOPDS_VectorOfInterfEF {.
    importcpp: "InterfEF", header: "BOPDS_DS.hxx".}
proc InterfFF*(this: var BOPDS_DS): var BOPDS_VectorOfInterfFF {.
    importcpp: "InterfFF", header: "BOPDS_DS.hxx".}
proc InterfVZ*(this: var BOPDS_DS): var BOPDS_VectorOfInterfVZ {.
    importcpp: "InterfVZ", header: "BOPDS_DS.hxx".}
proc InterfEZ*(this: var BOPDS_DS): var BOPDS_VectorOfInterfEZ {.
    importcpp: "InterfEZ", header: "BOPDS_DS.hxx".}
proc InterfFZ*(this: var BOPDS_DS): var BOPDS_VectorOfInterfFZ {.
    importcpp: "InterfFZ", header: "BOPDS_DS.hxx".}
proc InterfZZ*(this: var BOPDS_DS): var BOPDS_VectorOfInterfZZ {.
    importcpp: "InterfZZ", header: "BOPDS_DS.hxx".}
proc NbInterfTypes*(): Standard_Integer {.importcpp: "BOPDS_DS::NbInterfTypes(@)",
                                       header: "BOPDS_DS.hxx".}
proc AddInterf*(this: var BOPDS_DS; theI1: Standard_Integer; theI2: Standard_Integer): Standard_Boolean {.
    importcpp: "AddInterf", header: "BOPDS_DS.hxx".}
proc HasInterf*(this: BOPDS_DS; theI: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasInterf", header: "BOPDS_DS.hxx".}
proc HasInterf*(this: BOPDS_DS; theI1: Standard_Integer; theI2: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasInterf", header: "BOPDS_DS.hxx".}
proc HasInterfShapeSubShapes*(this: BOPDS_DS; theI1: Standard_Integer;
                             theI2: Standard_Integer;
                             theFlag: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "HasInterfShapeSubShapes", header: "BOPDS_DS.hxx".}
proc HasInterfSubShapes*(this: BOPDS_DS; theI1: Standard_Integer;
                        theI2: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "HasInterfSubShapes", header: "BOPDS_DS.hxx".}
proc Interferences*(this: BOPDS_DS): BOPDS_MapOfPair {.noSideEffect,
    importcpp: "Interferences", header: "BOPDS_DS.hxx".}
proc Dump*(this: BOPDS_DS) {.noSideEffect, importcpp: "Dump", header: "BOPDS_DS.hxx".}
proc IsSubShape*(this: var BOPDS_DS; theI1: Standard_Integer; theI2: Standard_Integer): Standard_Boolean {.
    importcpp: "IsSubShape", header: "BOPDS_DS.hxx".}
proc Paves*(this: var BOPDS_DS; theIndex: Standard_Integer;
           theLP: var BOPDS_ListOfPave) {.importcpp: "Paves", header: "BOPDS_DS.hxx".}
proc UpdatePaveBlocksWithSDVertices*(this: var BOPDS_DS) {.
    importcpp: "UpdatePaveBlocksWithSDVertices", header: "BOPDS_DS.hxx".}
proc UpdatePaveBlockWithSDVertices*(this: var BOPDS_DS;
                                   thePB: handle[BOPDS_PaveBlock]) {.
    importcpp: "UpdatePaveBlockWithSDVertices", header: "BOPDS_DS.hxx".}
proc UpdateCommonBlockWithSDVertices*(this: var BOPDS_DS;
                                     theCB: handle[BOPDS_CommonBlock]) {.
    importcpp: "UpdateCommonBlockWithSDVertices", header: "BOPDS_DS.hxx".}
proc InitPaveBlocksForVertex*(this: var BOPDS_DS; theNV: Standard_Integer) {.
    importcpp: "InitPaveBlocksForVertex", header: "BOPDS_DS.hxx".}
proc ReleasePaveBlocks*(this: var BOPDS_DS) {.importcpp: "ReleasePaveBlocks",
    header: "BOPDS_DS.hxx".}
proc IsValidShrunkData*(this: var BOPDS_DS; thePB: handle[BOPDS_PaveBlock]): Standard_Boolean {.
    importcpp: "IsValidShrunkData", header: "BOPDS_DS.hxx".}
proc BuildBndBoxSolid*(this: var BOPDS_DS; theIndex: Standard_Integer;
                      theBox: var Bnd_Box;
                      theCheckInverted: Standard_Boolean = Standard_True) {.
    importcpp: "BuildBndBoxSolid", header: "BOPDS_DS.hxx".}