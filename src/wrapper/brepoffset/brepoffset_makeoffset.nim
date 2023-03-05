import brepoffset_types
import ../tkbrep/topods/topods_types
import ../tkmath/geomabs/geomabs_types
import ../tkernel/message/message_types
import ../tkbrep/toptools/toptools_types


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
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepOffset_Inter3d"

proc newBRepOffset_MakeOffset*(): BRepOffset_MakeOffset {.cdecl, constructor,
    importcpp: "BRepOffset_MakeOffset(@)".}
proc newBRepOffset_MakeOffset*(S: TopoDS_Shape; Offset: cfloat; Tol: cfloat;
                              Mode: BRepOffset_Mode = BRepOffset_Skin;
                              Intersection: bool = false; SelfInter: bool = false;
                              Join: GeomAbs_JoinType = GeomAbs_Arc;
                              Thickening: bool = false;
                              RemoveIntEdges: bool = false; theRange: Message_ProgressRange = Message_ProgressRange()): BRepOffset_MakeOffset {.
    cdecl, constructor, importcpp: "BRepOffset_MakeOffset(@)".}
proc Initialize*(this: var BRepOffset_MakeOffset; S: TopoDS_Shape; Offset: cfloat;
                Tol: cfloat; Mode: BRepOffset_Mode = BRepOffset_Skin;
                Intersection: bool = false; SelfInter: bool = false;
                Join: GeomAbs_JoinType = GeomAbs_Arc; Thickening: bool = false;
                RemoveIntEdges: bool = false) {.cdecl, importcpp: "Initialize",
    .}
proc Clear*(this: var BRepOffset_MakeOffset) {.cdecl, importcpp: "Clear",
    .}
proc AllowLinearization*(this: var BRepOffset_MakeOffset; theIsAllowed: bool) {.cdecl,
    importcpp: "AllowLinearization".}
proc AddFace*(this: var BRepOffset_MakeOffset; F: TopoDS_Face) {.cdecl,
    importcpp: "AddFace".}
proc SetOffsetOnFace*(this: var BRepOffset_MakeOffset; F: TopoDS_Face; Off: cfloat) {.
    cdecl, importcpp: "SetOffsetOnFace".}
proc MakeOffsetShape*(this: var BRepOffset_MakeOffset;
                     theRange: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "MakeOffsetShape".}
proc MakeThickSolid*(this: var BRepOffset_MakeOffset;
                    theRange: Message_ProgressRange = Message_ProgressRange()) {.
    cdecl, importcpp: "MakeThickSolid".}
proc GetAnalyse*(this: BRepOffset_MakeOffset): BRepOffset_Analyse {.noSideEffect,
    cdecl, importcpp: "GetAnalyse".}
proc IsDone*(this: BRepOffset_MakeOffset): bool {.noSideEffect, cdecl,
    importcpp: "IsDone".}
proc Shape*(this: BRepOffset_MakeOffset): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape".}
proc InitShape*(this: BRepOffset_MakeOffset): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "InitShape".}
proc Error*(this: BRepOffset_MakeOffset): BRepOffset_Error {.noSideEffect, cdecl,
    importcpp: "Error".}
# proc OffsetFacesFromShapes*(this: BRepOffset_MakeOffset): BRepAlgo_Image {.
#     noSideEffect, cdecl, importcpp: "OffsetFacesFromShapes".}
proc GetJoinType*(this: BRepOffset_MakeOffset): GeomAbs_JoinType {.noSideEffect,
    cdecl, importcpp: "GetJoinType".}
# proc OffsetEdgesFromShapes*(this: BRepOffset_MakeOffset): BRepAlgo_Image {.
#     noSideEffect, cdecl, importcpp: "OffsetEdgesFromShapes".}
proc ClosingFaces*(this: BRepOffset_MakeOffset): TopTools_IndexedMapOfShape {.
    noSideEffect, cdecl, importcpp: "ClosingFaces".}
proc CheckInputData*(this: var BRepOffset_MakeOffset;
                    theRange: Message_ProgressRange): bool {.cdecl,
    importcpp: "CheckInputData".}
proc GetBadShape*(this: BRepOffset_MakeOffset): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetBadShape".}
proc Generated*(this: var BRepOffset_MakeOffset; theS: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc Modified*(this: var BRepOffset_MakeOffset; theS: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Modified".}
proc IsDeleted*(this: var BRepOffset_MakeOffset; S: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted".}