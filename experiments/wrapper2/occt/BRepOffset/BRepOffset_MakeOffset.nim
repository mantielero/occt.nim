##  Created on: 1995-10-26
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../TopoDS/TopoDS_Shape,
  ../TopoDS/TopoDS_Compound, BRepOffset_Mode, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_JoinType, ../TopTools/TopTools_DataMapOfShapeReal,
  ../TopTools/TopTools_IndexedMapOfShape, BRepOffset_Analyse,
  ../BRepAlgo/BRepAlgo_Image, ../TopTools/TopTools_ListOfShape, BRepOffset_Error,
  BRepOffset_MakeLoops, ../TopTools/TopTools_MapOfShape,
  BRepOffset_DataMapOfShapeOffset

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepOffset_Analyse"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepOffset_Inter3d"
type
  BRepOffset_MakeOffset* {.importcpp: "BRepOffset_MakeOffset",
                          header: "BRepOffset_MakeOffset.hxx", bycopy.} = object ## !
                                                                            ## @name
                                                                            ## History
                                                                            ## methods
                                                                            ## !
                                                                            ## Returns the  list of
                                                                            ## shapes
                                                                            ## generated from the
                                                                            ## shape <S>.
                                                                            ## !
                                                                            ## Check if
                                                                            ## shape
                                                                            ## consists of only
                                                                            ## planar
                                                                            ## faces
                                                                            ## ! If
                                                                            ## <myIsLinearizationAllowed> is
                                                                            ## TRUE, try to
                                                                            ## approximate
                                                                            ## images of
                                                                            ## faces
                                                                            ## ! by
                                                                            ## planar
                                                                            ## faces
    ##  Handle bad walls in thicksolid mode.


proc constructBRepOffset_MakeOffset*(): BRepOffset_MakeOffset {.constructor,
    importcpp: "BRepOffset_MakeOffset(@)", header: "BRepOffset_MakeOffset.hxx".}
proc constructBRepOffset_MakeOffset*(S: TopoDS_Shape; Offset: Standard_Real;
                                    Tol: Standard_Real;
                                    Mode: BRepOffset_Mode = BRepOffset_Skin;
    Intersection: Standard_Boolean = Standard_False; SelfInter: Standard_Boolean = Standard_False;
                                    Join: GeomAbs_JoinType = GeomAbs_Arc; Thickening: Standard_Boolean = Standard_False;
    RemoveIntEdges: Standard_Boolean = Standard_False): BRepOffset_MakeOffset {.
    constructor, importcpp: "BRepOffset_MakeOffset(@)",
    header: "BRepOffset_MakeOffset.hxx".}
proc Initialize*(this: var BRepOffset_MakeOffset; S: TopoDS_Shape;
                Offset: Standard_Real; Tol: Standard_Real;
                Mode: BRepOffset_Mode = BRepOffset_Skin;
                Intersection: Standard_Boolean = Standard_False;
                SelfInter: Standard_Boolean = Standard_False;
                Join: GeomAbs_JoinType = GeomAbs_Arc;
                Thickening: Standard_Boolean = Standard_False;
                RemoveIntEdges: Standard_Boolean = Standard_False) {.
    importcpp: "Initialize", header: "BRepOffset_MakeOffset.hxx".}
proc Clear*(this: var BRepOffset_MakeOffset) {.importcpp: "Clear",
    header: "BRepOffset_MakeOffset.hxx".}
proc AllowLinearization*(this: var BRepOffset_MakeOffset;
                        theIsAllowed: Standard_Boolean) {.
    importcpp: "AllowLinearization", header: "BRepOffset_MakeOffset.hxx".}
proc AddFace*(this: var BRepOffset_MakeOffset; F: TopoDS_Face) {.importcpp: "AddFace",
    header: "BRepOffset_MakeOffset.hxx".}
proc SetOffsetOnFace*(this: var BRepOffset_MakeOffset; F: TopoDS_Face;
                     Off: Standard_Real) {.importcpp: "SetOffsetOnFace",
    header: "BRepOffset_MakeOffset.hxx".}
proc MakeOffsetShape*(this: var BRepOffset_MakeOffset) {.
    importcpp: "MakeOffsetShape", header: "BRepOffset_MakeOffset.hxx".}
proc MakeThickSolid*(this: var BRepOffset_MakeOffset) {.importcpp: "MakeThickSolid",
    header: "BRepOffset_MakeOffset.hxx".}
proc GetAnalyse*(this: BRepOffset_MakeOffset): BRepOffset_Analyse {.noSideEffect,
    importcpp: "GetAnalyse", header: "BRepOffset_MakeOffset.hxx".}
proc IsDone*(this: BRepOffset_MakeOffset): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffset_MakeOffset.hxx".}
proc Shape*(this: BRepOffset_MakeOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepOffset_MakeOffset.hxx".}
proc InitShape*(this: BRepOffset_MakeOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "InitShape", header: "BRepOffset_MakeOffset.hxx".}
proc Error*(this: BRepOffset_MakeOffset): BRepOffset_Error {.noSideEffect,
    importcpp: "Error", header: "BRepOffset_MakeOffset.hxx".}
proc OffsetFacesFromShapes*(this: BRepOffset_MakeOffset): BRepAlgo_Image {.
    noSideEffect, importcpp: "OffsetFacesFromShapes",
    header: "BRepOffset_MakeOffset.hxx".}
proc GetJoinType*(this: BRepOffset_MakeOffset): GeomAbs_JoinType {.noSideEffect,
    importcpp: "GetJoinType", header: "BRepOffset_MakeOffset.hxx".}
proc OffsetEdgesFromShapes*(this: BRepOffset_MakeOffset): BRepAlgo_Image {.
    noSideEffect, importcpp: "OffsetEdgesFromShapes",
    header: "BRepOffset_MakeOffset.hxx".}
proc ClosingFaces*(this: BRepOffset_MakeOffset): TopTools_IndexedMapOfShape {.
    noSideEffect, importcpp: "ClosingFaces", header: "BRepOffset_MakeOffset.hxx".}
proc CheckInputData*(this: var BRepOffset_MakeOffset): Standard_Boolean {.
    importcpp: "CheckInputData", header: "BRepOffset_MakeOffset.hxx".}
proc GetBadShape*(this: BRepOffset_MakeOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "GetBadShape", header: "BRepOffset_MakeOffset.hxx".}
proc Generated*(this: var BRepOffset_MakeOffset; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffset_MakeOffset.hxx".}
proc Modified*(this: var BRepOffset_MakeOffset; theS: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepOffset_MakeOffset.hxx".}
proc IsDeleted*(this: var BRepOffset_MakeOffset; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepOffset_MakeOffset.hxx".}