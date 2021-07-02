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

discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepOffset_Analyse"
discard "forward decl of BRepAlgo_Image"
discard "forward decl of BRepOffset_Inter3d"
type
  BRepOffsetMakeOffset* {.importcpp: "BRepOffset_MakeOffset",
                         header: "BRepOffset_MakeOffset.hxx", bycopy.} = object ## ! @name
                                                                           ## History
                                                                           ## methods
                                                                           ## !
                                                                           ## Returns the  list of
                                                                           ## shapes
                                                                           ## generated from the shape <S>.
                                                                           ## ! Check if shape
                                                                           ## consists of only
                                                                           ## planar faces
                                                                           ## ! If
                                                                           ## <myIsLinearizationAllowed> is TRUE, try to
                                                                           ## approximate
                                                                           ## images of faces
                                                                           ## ! by
                                                                           ## planar faces
    ##  Handle bad walls in thicksolid mode.


proc constructBRepOffsetMakeOffset*(): BRepOffsetMakeOffset {.constructor,
    importcpp: "BRepOffset_MakeOffset(@)", header: "BRepOffset_MakeOffset.hxx".}
proc constructBRepOffsetMakeOffset*(s: TopoDS_Shape; offset: StandardReal;
                                   tol: StandardReal;
                                   mode: BRepOffsetMode = bRepOffsetSkin;
    intersection: StandardBoolean = standardFalse;
                                   selfInter: StandardBoolean = standardFalse;
                                   join: GeomAbsJoinType = geomAbsArc;
                                   thickening: StandardBoolean = standardFalse;
    removeIntEdges: StandardBoolean = standardFalse): BRepOffsetMakeOffset {.
    constructor, importcpp: "BRepOffset_MakeOffset(@)",
    header: "BRepOffset_MakeOffset.hxx".}
proc initialize*(this: var BRepOffsetMakeOffset; s: TopoDS_Shape;
                offset: StandardReal; tol: StandardReal;
                mode: BRepOffsetMode = bRepOffsetSkin;
                intersection: StandardBoolean = standardFalse;
                selfInter: StandardBoolean = standardFalse;
                join: GeomAbsJoinType = geomAbsArc;
                thickening: StandardBoolean = standardFalse;
                removeIntEdges: StandardBoolean = standardFalse) {.
    importcpp: "Initialize", header: "BRepOffset_MakeOffset.hxx".}
proc clear*(this: var BRepOffsetMakeOffset) {.importcpp: "Clear",
    header: "BRepOffset_MakeOffset.hxx".}
proc allowLinearization*(this: var BRepOffsetMakeOffset;
                        theIsAllowed: StandardBoolean) {.
    importcpp: "AllowLinearization", header: "BRepOffset_MakeOffset.hxx".}
proc addFace*(this: var BRepOffsetMakeOffset; f: TopoDS_Face) {.importcpp: "AddFace",
    header: "BRepOffset_MakeOffset.hxx".}
proc setOffsetOnFace*(this: var BRepOffsetMakeOffset; f: TopoDS_Face;
                     off: StandardReal) {.importcpp: "SetOffsetOnFace",
                                        header: "BRepOffset_MakeOffset.hxx".}
proc makeOffsetShape*(this: var BRepOffsetMakeOffset) {.
    importcpp: "MakeOffsetShape", header: "BRepOffset_MakeOffset.hxx".}
proc makeThickSolid*(this: var BRepOffsetMakeOffset) {.importcpp: "MakeThickSolid",
    header: "BRepOffset_MakeOffset.hxx".}
proc getAnalyse*(this: BRepOffsetMakeOffset): BRepOffsetAnalyse {.noSideEffect,
    importcpp: "GetAnalyse", header: "BRepOffset_MakeOffset.hxx".}
proc isDone*(this: BRepOffsetMakeOffset): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffset_MakeOffset.hxx".}
proc shape*(this: BRepOffsetMakeOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepOffset_MakeOffset.hxx".}
proc initShape*(this: BRepOffsetMakeOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "InitShape", header: "BRepOffset_MakeOffset.hxx".}
proc error*(this: BRepOffsetMakeOffset): BRepOffsetError {.noSideEffect,
    importcpp: "Error", header: "BRepOffset_MakeOffset.hxx".}
proc offsetFacesFromShapes*(this: BRepOffsetMakeOffset): BRepAlgoImage {.
    noSideEffect, importcpp: "OffsetFacesFromShapes",
    header: "BRepOffset_MakeOffset.hxx".}
proc getJoinType*(this: BRepOffsetMakeOffset): GeomAbsJoinType {.noSideEffect,
    importcpp: "GetJoinType", header: "BRepOffset_MakeOffset.hxx".}
proc offsetEdgesFromShapes*(this: BRepOffsetMakeOffset): BRepAlgoImage {.
    noSideEffect, importcpp: "OffsetEdgesFromShapes",
    header: "BRepOffset_MakeOffset.hxx".}
proc closingFaces*(this: BRepOffsetMakeOffset): TopToolsIndexedMapOfShape {.
    noSideEffect, importcpp: "ClosingFaces", header: "BRepOffset_MakeOffset.hxx".}
proc checkInputData*(this: var BRepOffsetMakeOffset): StandardBoolean {.
    importcpp: "CheckInputData", header: "BRepOffset_MakeOffset.hxx".}
proc getBadShape*(this: BRepOffsetMakeOffset): TopoDS_Shape {.noSideEffect,
    importcpp: "GetBadShape", header: "BRepOffset_MakeOffset.hxx".}
proc generated*(this: var BRepOffsetMakeOffset; theS: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffset_MakeOffset.hxx".}
proc modified*(this: var BRepOffsetMakeOffset; theS: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepOffset_MakeOffset.hxx".}
proc isDeleted*(this: var BRepOffsetMakeOffset; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepOffset_MakeOffset.hxx".}

