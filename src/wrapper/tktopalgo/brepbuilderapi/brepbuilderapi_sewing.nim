import brepbuilderapi_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types





##  Created on: 1995-03-23
##  Created by: Jing Cheng MEI
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





proc sewing*(tolerance: cfloat = 1.0e-06; option1: bool = true;
                              option2: bool = true; option3: bool = true;
                              option4: bool = false): BRepBuilderAPI_Sewing {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_Sewing(@)", header: "BRepBuilderAPI_Sewing.hxx".}
proc init*(this: var BRepBuilderAPI_Sewing; tolerance: cfloat = 1.0e-06;
          option1: bool = true; option2: bool = true; option3: bool = true;
          option4: bool = false) {.cdecl, importcpp: "Init", header: "BRepBuilderAPI_Sewing.hxx".}
proc load*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.cdecl,
    importcpp: "Load", header: "BRepBuilderAPI_Sewing.hxx".}
proc add*(this: var BRepBuilderAPI_Sewing; shape: TopoDS_Shape) {.cdecl,
    importcpp: "Add", header: "BRepBuilderAPI_Sewing.hxx".}
proc perform*(this: var BRepBuilderAPI_Sewing;
             theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Perform", header: "BRepBuilderAPI_Sewing.hxx".}
proc sewedShape*(this: BRepBuilderAPI_Sewing): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SewedShape", header: "BRepBuilderAPI_Sewing.hxx".}
proc setContext*(this: var BRepBuilderAPI_Sewing;
                theContext: Handle[BRepToolsReShape]) {.cdecl,
    importcpp: "SetContext", header: "BRepBuilderAPI_Sewing.hxx".}
proc getContext*(this: BRepBuilderAPI_Sewing): Handle[BRepToolsReShape] {.
    noSideEffect, cdecl, importcpp: "GetContext", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbFreeEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbFreeEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc freeEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "FreeEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbMultipleEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbMultipleEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc multipleEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "MultipleEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbContigousEdges*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbContigousEdges", header: "BRepBuilderAPI_Sewing.hxx".}
proc contigousEdge*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "ContigousEdge", header: "BRepBuilderAPI_Sewing.hxx".}
proc contigousEdgeCouple*(this: BRepBuilderAPI_Sewing; index: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ContigousEdgeCouple", header: "BRepBuilderAPI_Sewing.hxx".}
proc isSectionBound*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): bool {.
    noSideEffect, cdecl, importcpp: "IsSectionBound", header: "BRepBuilderAPI_Sewing.hxx".}
proc sectionToBoundary*(this: BRepBuilderAPI_Sewing; section: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "SectionToBoundary", header: "BRepBuilderAPI_Sewing.hxx".}
proc nbDegeneratedShapes*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbDegeneratedShapes", header: "BRepBuilderAPI_Sewing.hxx".}
proc degeneratedShape*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "DegeneratedShape", header: "BRepBuilderAPI_Sewing.hxx".}
proc isDegenerated*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsDegenerated", header: "BRepBuilderAPI_Sewing.hxx".}
proc isModified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsModified", header: "BRepBuilderAPI_Sewing.hxx".}
proc modified*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Modified", header: "BRepBuilderAPI_Sewing.hxx".}
proc isModifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsModifiedSubShape", header: "BRepBuilderAPI_Sewing.hxx".}
proc modifiedSubShape*(this: BRepBuilderAPI_Sewing; shape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedSubShape", header: "BRepBuilderAPI_Sewing.hxx".}
proc dump*(this: BRepBuilderAPI_Sewing) {.noSideEffect, cdecl, importcpp: "Dump",
                                       header: "BRepBuilderAPI_Sewing.hxx".}
proc nbDeletedFaces*(this: BRepBuilderAPI_Sewing): cint {.noSideEffect, cdecl,
    importcpp: "NbDeletedFaces", header: "BRepBuilderAPI_Sewing.hxx".}
proc deletedFace*(this: BRepBuilderAPI_Sewing; index: cint): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "DeletedFace", header: "BRepBuilderAPI_Sewing.hxx".}
proc whichFace*(this: BRepBuilderAPI_Sewing; theEdg: TopoDS_Edge; index: cint = 1): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "WhichFace", header: "BRepBuilderAPI_Sewing.hxx".}
proc sameParameterMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "SameParameterMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setSameParameterMode*(this: var BRepBuilderAPI_Sewing; sameParameterMode: bool) {.
    cdecl, importcpp: "SetSameParameterMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc tolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc setTolerance*(this: var BRepBuilderAPI_Sewing; theToler: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc minTolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect, cdecl,
    importcpp: "MinTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc setMinTolerance*(this: var BRepBuilderAPI_Sewing; theMinToler: cfloat) {.cdecl,
    importcpp: "SetMinTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc maxTolerance*(this: BRepBuilderAPI_Sewing): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc setMaxTolerance*(this: var BRepBuilderAPI_Sewing; theMaxToler: cfloat) {.cdecl,
    importcpp: "SetMaxTolerance", header: "BRepBuilderAPI_Sewing.hxx".}
proc faceMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "FaceMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setFaceMode*(this: var BRepBuilderAPI_Sewing; theFaceMode: bool) {.cdecl,
    importcpp: "SetFaceMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc floatingEdgesMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "FloatingEdgesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setFloatingEdgesMode*(this: var BRepBuilderAPI_Sewing;
                          theFloatingEdgesMode: bool) {.cdecl,
    importcpp: "SetFloatingEdgesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc localTolerancesMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "LocalTolerancesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setLocalTolerancesMode*(this: var BRepBuilderAPI_Sewing;
                            theLocalTolerancesMode: bool) {.cdecl,
    importcpp: "SetLocalTolerancesMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc setNonManifoldMode*(this: var BRepBuilderAPI_Sewing; theNonManifoldMode: bool) {.
    cdecl, importcpp: "SetNonManifoldMode", header: "BRepBuilderAPI_Sewing.hxx".}
proc nonManifoldMode*(this: BRepBuilderAPI_Sewing): bool {.noSideEffect, cdecl,
    importcpp: "NonManifoldMode", header: "BRepBuilderAPI_Sewing.hxx".}


