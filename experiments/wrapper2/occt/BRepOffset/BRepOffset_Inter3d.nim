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

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepOffset_Analyse"
type
  BRepOffsetInter3d* {.importcpp: "BRepOffset_Inter3d",
                      header: "BRepOffset_Inter3d.hxx", bycopy.} = object


proc constructBRepOffsetInter3d*(asDes: Handle[BRepAlgoAsDes]; side: TopAbsState;
                                tol: cfloat): BRepOffsetInter3d {.constructor,
    importcpp: "BRepOffset_Inter3d(@)", header: "BRepOffset_Inter3d.hxx".}
proc completInt*(this: var BRepOffsetInter3d; setOfFaces: TopToolsListOfShape;
                initOffsetFace: BRepAlgoImage) {.importcpp: "CompletInt",
    header: "BRepOffset_Inter3d.hxx".}
proc faceInter*(this: var BRepOffsetInter3d; f1: TopoDS_Face; f2: TopoDS_Face;
               initOffsetFace: BRepAlgoImage) {.importcpp: "FaceInter",
    header: "BRepOffset_Inter3d.hxx".}
proc connexIntByArc*(this: var BRepOffsetInter3d; setOfFaces: TopToolsListOfShape;
                    shapeInit: TopoDS_Shape; analyse: BRepOffsetAnalyse;
                    initOffsetFace: BRepAlgoImage) {.importcpp: "ConnexIntByArc",
    header: "BRepOffset_Inter3d.hxx".}
proc connexIntByInt*(this: var BRepOffsetInter3d; si: TopoDS_Shape;
                    mapSF: BRepOffsetDataMapOfShapeOffset; a: BRepOffsetAnalyse;
                    mes: var TopToolsDataMapOfShapeShape;
                    build: var TopToolsDataMapOfShapeShape;
                    failed: var TopToolsListOfShape; bIsPlanar: bool = false) {.
    importcpp: "ConnexIntByInt", header: "BRepOffset_Inter3d.hxx".}
proc contextIntByInt*(this: var BRepOffsetInter3d;
                     contextFaces: TopToolsIndexedMapOfShape; extentContext: bool;
                     mapSF: BRepOffsetDataMapOfShapeOffset; a: BRepOffsetAnalyse;
                     mes: var TopToolsDataMapOfShapeShape;
                     build: var TopToolsDataMapOfShapeShape;
                     failed: var TopToolsListOfShape; bIsPlanar: bool = false) {.
    importcpp: "ContextIntByInt", header: "BRepOffset_Inter3d.hxx".}
proc contextIntByArc*(this: var BRepOffsetInter3d;
                     contextFaces: TopToolsIndexedMapOfShape; extentContext: bool;
                     analyse: BRepOffsetAnalyse; initOffsetFace: BRepAlgoImage;
                     initOffsetEdge: var BRepAlgoImage) {.
    importcpp: "ContextIntByArc", header: "BRepOffset_Inter3d.hxx".}
proc addCommonEdges*(this: var BRepOffsetInter3d; setOfFaces: TopToolsListOfShape) {.
    importcpp: "AddCommonEdges", header: "BRepOffset_Inter3d.hxx".}
proc setDone*(this: var BRepOffsetInter3d; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "SetDone", header: "BRepOffset_Inter3d.hxx".}
proc isDone*(this: BRepOffsetInter3d; f1: TopoDS_Face; f2: TopoDS_Face): bool {.
    noSideEffect, importcpp: "IsDone", header: "BRepOffset_Inter3d.hxx".}
proc touchedFaces*(this: var BRepOffsetInter3d): var TopToolsIndexedMapOfShape {.
    importcpp: "TouchedFaces", header: "BRepOffset_Inter3d.hxx".}
proc asDes*(this: BRepOffsetInter3d): Handle[BRepAlgoAsDes] {.noSideEffect,
    importcpp: "AsDes", header: "BRepOffset_Inter3d.hxx".}
proc newEdges*(this: var BRepOffsetInter3d): var TopToolsIndexedMapOfShape {.
    importcpp: "NewEdges", header: "BRepOffset_Inter3d.hxx".}

























