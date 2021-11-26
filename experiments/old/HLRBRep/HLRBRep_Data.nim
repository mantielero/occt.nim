##  Created on: 1993-01-11
##  Created by: Christophe MARION
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of HLRAlgo_Interference"
discard "forward decl of gp_Dir2d"
discard "forward decl of HLRBRep_EdgeData"
discard "forward decl of HLRBRep_FaceData"
discard "forward decl of IntRes2d_IntersectionPoint"
discard "forward decl of TableauRejection"
discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRBRep_Data"
type
  HandleC1C1* = Handle[HLRBRepData]
  HLRBRepData* {.importcpp: "HLRBRep_Data", header: "HLRBRep_Data.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Create
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## data
                                                                                                     ## structure
                                                                                                     ## of
                                                                                                     ## <NV>
                                                                                                     ## vertices,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## <NE>
                                                                                                     ## edges
                                                                                                     ## and
                                                                                                     ## <NF>
                                                                                                     ## faces.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Orient
                                                                                                     ## the
                                                                                                     ## OutLines
                                                                                                     ## (
                                                                                                     ## left
                                                                                                     ## must
                                                                                                     ## be
                                                                                                     ## inside
                                                                                                     ## in
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## projection
                                                                                                     ## ).
                                                                                                     ## Returns
                                                                                                     ## True
                                                                                                     ## if
                                                                                                     ## the
                                                                                                     ## face
                                                                                                     ## of
                                                                                                     ## a
                                                                                                     ## closed
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## shell
                                                                                                     ## has
                                                                                                     ## been
                                                                                                     ## inverted;


proc constructHLRBRepData*(nv: cint; ne: cint; nf: cint): HLRBRepData {.constructor,
    importcpp: "HLRBRep_Data(@)", header: "HLRBRep_Data.hxx".}
proc write*(this: var HLRBRepData; ds: Handle[HLRBRepData]; dv: cint; de: cint; df: cint) {.
    importcpp: "Write", header: "HLRBRep_Data.hxx".}
proc eDataArray*(this: var HLRBRepData): var HLRBRepArray1OfEData {.
    importcpp: "EDataArray", header: "HLRBRep_Data.hxx".}
proc fDataArray*(this: var HLRBRepData): var HLRBRepArray1OfFData {.
    importcpp: "FDataArray", header: "HLRBRep_Data.hxx".}
proc tolerance*(this: var HLRBRepData; tol: StandardShortReal) {.
    importcpp: "Tolerance", header: "HLRBRep_Data.hxx".}
proc tolerance*(this: HLRBRepData): StandardShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRBRep_Data.hxx".}
proc update*(this: var HLRBRepData; p: HLRAlgoProjector) {.importcpp: "Update",
    header: "HLRBRep_Data.hxx".}
proc projector*(this: var HLRBRepData): var HLRAlgoProjector {.importcpp: "Projector",
    header: "HLRBRep_Data.hxx".}
proc nbVertices*(this: HLRBRepData): cint {.noSideEffect, importcpp: "NbVertices",
                                        header: "HLRBRep_Data.hxx".}
proc nbEdges*(this: HLRBRepData): cint {.noSideEffect, importcpp: "NbEdges",
                                     header: "HLRBRep_Data.hxx".}
proc nbFaces*(this: HLRBRepData): cint {.noSideEffect, importcpp: "NbFaces",
                                     header: "HLRBRep_Data.hxx".}
proc edgeMap*(this: var HLRBRepData): var TopToolsIndexedMapOfShape {.
    importcpp: "EdgeMap", header: "HLRBRep_Data.hxx".}
proc faceMap*(this: var HLRBRepData): var TopToolsIndexedMapOfShape {.
    importcpp: "FaceMap", header: "HLRBRep_Data.hxx".}
proc initBoundSort*(this: var HLRBRepData; minMaxTot: MinMaxIndices; e1: cint; e2: cint) {.
    importcpp: "InitBoundSort", header: "HLRBRep_Data.hxx".}
proc initEdge*(this: var HLRBRepData; fi: cint; mst: var BRepTopAdaptorMapOfShapeTool) {.
    importcpp: "InitEdge", header: "HLRBRep_Data.hxx".}
proc moreEdge*(this: var HLRBRepData): bool {.importcpp: "MoreEdge",
    header: "HLRBRep_Data.hxx".}
proc nextEdge*(this: var HLRBRepData; skip: bool = true) {.importcpp: "NextEdge",
    header: "HLRBRep_Data.hxx".}
proc edge*(this: HLRBRepData): cint {.noSideEffect, importcpp: "Edge",
                                  header: "HLRBRep_Data.hxx".}
proc hidingTheFace*(this: HLRBRepData): bool {.noSideEffect,
    importcpp: "HidingTheFace", header: "HLRBRep_Data.hxx".}
proc simpleHidingFace*(this: HLRBRepData): bool {.noSideEffect,
    importcpp: "SimpleHidingFace", header: "HLRBRep_Data.hxx".}
proc initInterference*(this: var HLRBRepData) {.importcpp: "InitInterference",
    header: "HLRBRep_Data.hxx".}
proc moreInterference*(this: HLRBRepData): bool {.noSideEffect,
    importcpp: "MoreInterference", header: "HLRBRep_Data.hxx".}
proc nextInterference*(this: var HLRBRepData) {.importcpp: "NextInterference",
    header: "HLRBRep_Data.hxx".}
proc rejectedInterference*(this: var HLRBRepData): bool {.
    importcpp: "RejectedInterference", header: "HLRBRep_Data.hxx".}
proc aboveInterference*(this: var HLRBRepData): bool {.
    importcpp: "AboveInterference", header: "HLRBRep_Data.hxx".}
proc interference*(this: var HLRBRepData): var HLRAlgoInterference {.
    importcpp: "Interference", header: "HLRBRep_Data.hxx".}
proc localLEGeometry2D*(this: var HLRBRepData; param: cfloat; tg: var Dir2d;
                       nm: var Dir2d; cu: var cfloat) {.
    importcpp: "LocalLEGeometry2D", header: "HLRBRep_Data.hxx".}
proc localFEGeometry2D*(this: var HLRBRepData; fe: cint; param: cfloat; tg: var Dir2d;
                       nm: var Dir2d; cu: var cfloat) {.
    importcpp: "LocalFEGeometry2D", header: "HLRBRep_Data.hxx".}
proc edgeState*(this: var HLRBRepData; p1: cfloat; p2: cfloat; stbef: var TopAbsState;
               staf: var TopAbsState) {.importcpp: "EdgeState",
                                     header: "HLRBRep_Data.hxx".}
proc edgeOfTheHidingFace*(this: HLRBRepData; e: cint; ed: HLRBRepEdgeData): bool {.
    noSideEffect, importcpp: "EdgeOfTheHidingFace", header: "HLRBRep_Data.hxx".}
proc hidingStartLevel*(this: var HLRBRepData; e: cint; ed: HLRBRepEdgeData;
                      il: HLRAlgoInterferenceList): cint {.
    importcpp: "HidingStartLevel", header: "HLRBRep_Data.hxx".}
proc compare*(this: var HLRBRepData; e: cint; ed: HLRBRepEdgeData): TopAbsState {.
    importcpp: "Compare", header: "HLRBRep_Data.hxx".}
proc simplClassify*(this: var HLRBRepData; e: cint; ed: HLRBRepEdgeData; nbp: cint;
                   p1: cfloat; p2: cfloat): TopAbsState {.importcpp: "SimplClassify",
    header: "HLRBRep_Data.hxx".}
proc classify*(this: var HLRBRepData; e: cint; ed: HLRBRepEdgeData; levelFlag: bool;
              level: var cint; param: cfloat): TopAbsState {.importcpp: "Classify",
    header: "HLRBRep_Data.hxx".}
proc isBadFace*(this: HLRBRepData): bool {.noSideEffect, importcpp: "IsBadFace",
                                       header: "HLRBRep_Data.hxx".}
proc destroy*(this: var HLRBRepData) {.importcpp: "Destroy",
                                   header: "HLRBRep_Data.hxx".}
proc destroyHLRBRepData*(this: var HLRBRepData) {.importcpp: "#.~HLRBRep_Data()",
    header: "HLRBRep_Data.hxx".}
type
  HLRBRepDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRBRep_Data::get_type_name(@)",
                            header: "HLRBRep_Data.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRBRep_Data::get_type_descriptor(@)", header: "HLRBRep_Data.hxx".}
proc dynamicType*(this: HLRBRepData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_Data.hxx".}

























