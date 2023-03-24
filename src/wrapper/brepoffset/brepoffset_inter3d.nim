import brepoffset_types
#import ../standard/standard_types
import ../topods/topods_types
import ../toptools/toptools_types
import ../message/message_types

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

# proc newBRepOffset_Inter3d*(AsDes: Handle[BRepAlgo_AsDes]; Side: TopAbs_State;
#                            Tol: cfloat): BRepOffset_Inter3d {.cdecl, constructor,
#     importcpp: "BRepOffset_Inter3d(@)".}
# proc CompletInt*(this: var BRepOffset_Inter3d; SetOfFaces: TopTools_ListOfShape;
#                 InitOffsetFace: BRepAlgo_Image; theRange: Message_ProgressRange) {.
#     cdecl, importcpp: "CompletInt".}
# proc FaceInter*(this: var BRepOffset_Inter3d; F1: TopoDS_Face; F2: TopoDS_Face;
#                InitOffsetFace: BRepAlgo_Image) {.cdecl, importcpp: "FaceInter",
#     .}
# proc ConnexIntByArc*(this: var BRepOffset_Inter3d; SetOfFaces: TopTools_ListOfShape;
#                     ShapeInit: TopoDS_Shape; Analyse: BRepOffset_Analyse;
#                     InitOffsetFace: BRepAlgo_Image;
#                     theRange: Message_ProgressRange) {.cdecl,
#     importcpp: "ConnexIntByArc".}
proc ConnexIntByInt*(this: var BRepOffset_Inter3d; SI: TopoDS_Shape;
                    MapSF: BRepOffset_DataMapOfShapeOffset; A: BRepOffset_Analyse;
                    MES: var TopTools_DataMapOfShapeShape;
                    Build: var TopTools_DataMapOfShapeShape;
                    Failed: var TopTools_ListOfShape;
                    theRange: Message_ProgressRange; bIsPlanar: bool = false) {.cdecl,
    importcpp: "ConnexIntByInt".}
proc ContextIntByInt*(this: var BRepOffset_Inter3d;
                     ContextFaces: TopTools_IndexedMapOfShape;
                     ExtentContext: bool; MapSF: BRepOffset_DataMapOfShapeOffset;
                     A: BRepOffset_Analyse; MES: var TopTools_DataMapOfShapeShape;
                     Build: var TopTools_DataMapOfShapeShape;
                     Failed: var TopTools_ListOfShape;
                     theRange: Message_ProgressRange; bIsPlanar: bool = false) {.
    cdecl, importcpp: "ContextIntByInt".}
# proc ContextIntByArc*(this: var BRepOffset_Inter3d;
#                      ContextFaces: TopTools_IndexedMapOfShape;
#                      ExtentContext: bool; Analyse: BRepOffset_Analyse;
#                      InitOffsetFace: BRepAlgo_Image;
#                      InitOffsetEdge: var BRepAlgo_Image;
#                      theRange: Message_ProgressRange) {.cdecl,
#     importcpp: "ContextIntByArc".}
proc SetDone*(this: var BRepOffset_Inter3d; F1: TopoDS_Face; F2: TopoDS_Face) {.cdecl,
    importcpp: "SetDone".}
proc IsDone*(this: BRepOffset_Inter3d; F1: TopoDS_Face; F2: TopoDS_Face): bool {.
    noSideEffect, cdecl, importcpp: "IsDone".}
proc TouchedFaces*(this: var BRepOffset_Inter3d): var TopTools_IndexedMapOfShape {.
    cdecl, importcpp: "TouchedFaces".}
  ## ! Returns AsDes tool
# proc AsDes*(this: BRepOffset_Inter3d): Handle[BRepAlgo_AsDes] {.noSideEffect, cdecl,
#     importcpp: "AsDes".}
proc NewEdges*(this: var BRepOffset_Inter3d): var TopTools_IndexedMapOfShape {.cdecl,
    importcpp: "NewEdges".}