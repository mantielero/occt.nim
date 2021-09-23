##  Created on: 1996-08-30
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Real, ../TopTools/TopTools_ListOfShape,
  BRepOffset_DataMapOfShapeOffset, ../TopTools/TopTools_DataMapOfShapeShape,
  ../Standard/Standard_Boolean

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepOffset_Analyse"
type
  BRepOffset_Inter3d* {.importcpp: "BRepOffset_Inter3d",
                       header: "BRepOffset_Inter3d.hxx", bycopy.} = object


proc constructBRepOffset_Inter3d*(AsDes: handle[BRepAlgo_AsDes];
                                 Side: TopAbs_State; Tol: Standard_Real): BRepOffset_Inter3d {.
    constructor, importcpp: "BRepOffset_Inter3d(@)",
    header: "BRepOffset_Inter3d.hxx".}
proc CompletInt*(this: var BRepOffset_Inter3d; SetOfFaces: TopTools_ListOfShape;
                InitOffsetFace: BRepAlgo_Image) {.importcpp: "CompletInt",
    header: "BRepOffset_Inter3d.hxx".}
proc FaceInter*(this: var BRepOffset_Inter3d; F1: TopoDS_Face; F2: TopoDS_Face;
               InitOffsetFace: BRepAlgo_Image) {.importcpp: "FaceInter",
    header: "BRepOffset_Inter3d.hxx".}
proc ConnexIntByArc*(this: var BRepOffset_Inter3d; SetOfFaces: TopTools_ListOfShape;
                    ShapeInit: TopoDS_Shape; Analyse: BRepOffset_Analyse;
                    InitOffsetFace: BRepAlgo_Image) {.importcpp: "ConnexIntByArc",
    header: "BRepOffset_Inter3d.hxx".}
proc ConnexIntByInt*(this: var BRepOffset_Inter3d; SI: TopoDS_Shape;
                    MapSF: BRepOffset_DataMapOfShapeOffset; A: BRepOffset_Analyse;
                    MES: var TopTools_DataMapOfShapeShape;
                    Build: var TopTools_DataMapOfShapeShape;
                    Failed: var TopTools_ListOfShape;
                    bIsPlanar: Standard_Boolean = Standard_False) {.
    importcpp: "ConnexIntByInt", header: "BRepOffset_Inter3d.hxx".}
proc ContextIntByInt*(this: var BRepOffset_Inter3d;
                     ContextFaces: TopTools_IndexedMapOfShape;
                     ExtentContext: Standard_Boolean;
                     MapSF: BRepOffset_DataMapOfShapeOffset;
                     A: BRepOffset_Analyse; MES: var TopTools_DataMapOfShapeShape;
                     Build: var TopTools_DataMapOfShapeShape;
                     Failed: var TopTools_ListOfShape;
                     bIsPlanar: Standard_Boolean = Standard_False) {.
    importcpp: "ContextIntByInt", header: "BRepOffset_Inter3d.hxx".}
proc ContextIntByArc*(this: var BRepOffset_Inter3d;
                     ContextFaces: TopTools_IndexedMapOfShape;
                     ExtentContext: Standard_Boolean; Analyse: BRepOffset_Analyse;
                     InitOffsetFace: BRepAlgo_Image;
                     InitOffsetEdge: var BRepAlgo_Image) {.
    importcpp: "ContextIntByArc", header: "BRepOffset_Inter3d.hxx".}
proc AddCommonEdges*(this: var BRepOffset_Inter3d; SetOfFaces: TopTools_ListOfShape) {.
    importcpp: "AddCommonEdges", header: "BRepOffset_Inter3d.hxx".}
proc SetDone*(this: var BRepOffset_Inter3d; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "SetDone", header: "BRepOffset_Inter3d.hxx".}
proc IsDone*(this: BRepOffset_Inter3d; F1: TopoDS_Face; F2: TopoDS_Face): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone", header: "BRepOffset_Inter3d.hxx".}
proc TouchedFaces*(this: var BRepOffset_Inter3d): var TopTools_IndexedMapOfShape {.
    importcpp: "TouchedFaces", header: "BRepOffset_Inter3d.hxx".}
proc AsDes*(this: BRepOffset_Inter3d): handle[BRepAlgo_AsDes] {.noSideEffect,
    importcpp: "AsDes", header: "BRepOffset_Inter3d.hxx".}
proc NewEdges*(this: var BRepOffset_Inter3d): var TopTools_IndexedMapOfShape {.
    importcpp: "NewEdges", header: "BRepOffset_Inter3d.hxx".}