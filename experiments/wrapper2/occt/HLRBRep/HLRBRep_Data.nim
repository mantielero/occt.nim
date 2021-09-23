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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TopTools/TopTools_IndexedMapOfShape, HLRBRep_Array1OfEData,
  HLRBRep_Array1OfFData, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_ShortReal, ../HLRAlgo/HLRAlgo_Projector, HLRBRep_CLProps,
  HLRBRep_SLProps, ../Standard/Standard_Real, HLRBRep_FaceIterator,
  ../Standard/Standard_Address, ../GeomAbs/GeomAbs_SurfaceType,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_CurveType,
  ../TopAbs/TopAbs_Orientation, HLRBRep_Intersector,
  ../HLRAlgo/HLRAlgo_Interference, ../Standard/Standard_Transient,
  ../BRepTopAdaptor/BRepTopAdaptor_MapOfShapeTool, ../TopAbs/TopAbs_State,
  ../HLRAlgo/HLRAlgo_InterferenceList

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
  Handle_HLRBRep_Data* = handle[HLRBRep_Data]
  HLRBRep_Data* {.importcpp: "HLRBRep_Data", header: "HLRBRep_Data.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructHLRBRep_Data*(NV: Standard_Integer; NE: Standard_Integer;
                           NF: Standard_Integer): HLRBRep_Data {.constructor,
    importcpp: "HLRBRep_Data(@)", header: "HLRBRep_Data.hxx".}
proc Write*(this: var HLRBRep_Data; DS: handle[HLRBRep_Data]; dv: Standard_Integer;
           de: Standard_Integer; df: Standard_Integer) {.importcpp: "Write",
    header: "HLRBRep_Data.hxx".}
proc EDataArray*(this: var HLRBRep_Data): var HLRBRep_Array1OfEData {.
    importcpp: "EDataArray", header: "HLRBRep_Data.hxx".}
proc FDataArray*(this: var HLRBRep_Data): var HLRBRep_Array1OfFData {.
    importcpp: "FDataArray", header: "HLRBRep_Data.hxx".}
proc Tolerance*(this: var HLRBRep_Data; tol: Standard_ShortReal) {.
    importcpp: "Tolerance", header: "HLRBRep_Data.hxx".}
proc Tolerance*(this: HLRBRep_Data): Standard_ShortReal {.noSideEffect,
    importcpp: "Tolerance", header: "HLRBRep_Data.hxx".}
proc Update*(this: var HLRBRep_Data; P: HLRAlgo_Projector) {.importcpp: "Update",
    header: "HLRBRep_Data.hxx".}
proc Projector*(this: var HLRBRep_Data): var HLRAlgo_Projector {.
    importcpp: "Projector", header: "HLRBRep_Data.hxx".}
proc NbVertices*(this: HLRBRep_Data): Standard_Integer {.noSideEffect,
    importcpp: "NbVertices", header: "HLRBRep_Data.hxx".}
proc NbEdges*(this: HLRBRep_Data): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "HLRBRep_Data.hxx".}
proc NbFaces*(this: HLRBRep_Data): Standard_Integer {.noSideEffect,
    importcpp: "NbFaces", header: "HLRBRep_Data.hxx".}
proc EdgeMap*(this: var HLRBRep_Data): var TopTools_IndexedMapOfShape {.
    importcpp: "EdgeMap", header: "HLRBRep_Data.hxx".}
proc FaceMap*(this: var HLRBRep_Data): var TopTools_IndexedMapOfShape {.
    importcpp: "FaceMap", header: "HLRBRep_Data.hxx".}
proc InitBoundSort*(this: var HLRBRep_Data; MinMaxTot: MinMaxIndices;
                   e1: Standard_Integer; e2: Standard_Integer) {.
    importcpp: "InitBoundSort", header: "HLRBRep_Data.hxx".}
proc InitEdge*(this: var HLRBRep_Data; FI: Standard_Integer;
              MST: var BRepTopAdaptor_MapOfShapeTool) {.importcpp: "InitEdge",
    header: "HLRBRep_Data.hxx".}
proc MoreEdge*(this: var HLRBRep_Data): Standard_Boolean {.importcpp: "MoreEdge",
    header: "HLRBRep_Data.hxx".}
proc NextEdge*(this: var HLRBRep_Data; skip: Standard_Boolean = Standard_True) {.
    importcpp: "NextEdge", header: "HLRBRep_Data.hxx".}
proc Edge*(this: HLRBRep_Data): Standard_Integer {.noSideEffect, importcpp: "Edge",
    header: "HLRBRep_Data.hxx".}
proc HidingTheFace*(this: HLRBRep_Data): Standard_Boolean {.noSideEffect,
    importcpp: "HidingTheFace", header: "HLRBRep_Data.hxx".}
proc SimpleHidingFace*(this: HLRBRep_Data): Standard_Boolean {.noSideEffect,
    importcpp: "SimpleHidingFace", header: "HLRBRep_Data.hxx".}
proc InitInterference*(this: var HLRBRep_Data) {.importcpp: "InitInterference",
    header: "HLRBRep_Data.hxx".}
proc MoreInterference*(this: HLRBRep_Data): Standard_Boolean {.noSideEffect,
    importcpp: "MoreInterference", header: "HLRBRep_Data.hxx".}
proc NextInterference*(this: var HLRBRep_Data) {.importcpp: "NextInterference",
    header: "HLRBRep_Data.hxx".}
proc RejectedInterference*(this: var HLRBRep_Data): Standard_Boolean {.
    importcpp: "RejectedInterference", header: "HLRBRep_Data.hxx".}
proc AboveInterference*(this: var HLRBRep_Data): Standard_Boolean {.
    importcpp: "AboveInterference", header: "HLRBRep_Data.hxx".}
proc Interference*(this: var HLRBRep_Data): var HLRAlgo_Interference {.
    importcpp: "Interference", header: "HLRBRep_Data.hxx".}
proc LocalLEGeometry2D*(this: var HLRBRep_Data; Param: Standard_Real;
                       Tg: var gp_Dir2d; Nm: var gp_Dir2d; Cu: var Standard_Real) {.
    importcpp: "LocalLEGeometry2D", header: "HLRBRep_Data.hxx".}
proc LocalFEGeometry2D*(this: var HLRBRep_Data; FE: Standard_Integer;
                       Param: Standard_Real; Tg: var gp_Dir2d; Nm: var gp_Dir2d;
                       Cu: var Standard_Real) {.importcpp: "LocalFEGeometry2D",
    header: "HLRBRep_Data.hxx".}
proc EdgeState*(this: var HLRBRep_Data; p1: Standard_Real; p2: Standard_Real;
               stbef: var TopAbs_State; staf: var TopAbs_State) {.
    importcpp: "EdgeState", header: "HLRBRep_Data.hxx".}
proc EdgeOfTheHidingFace*(this: HLRBRep_Data; E: Standard_Integer;
                         ED: HLRBRep_EdgeData): Standard_Boolean {.noSideEffect,
    importcpp: "EdgeOfTheHidingFace", header: "HLRBRep_Data.hxx".}
proc HidingStartLevel*(this: var HLRBRep_Data; E: Standard_Integer;
                      ED: HLRBRep_EdgeData; IL: HLRAlgo_InterferenceList): Standard_Integer {.
    importcpp: "HidingStartLevel", header: "HLRBRep_Data.hxx".}
proc Compare*(this: var HLRBRep_Data; E: Standard_Integer; ED: HLRBRep_EdgeData): TopAbs_State {.
    importcpp: "Compare", header: "HLRBRep_Data.hxx".}
proc SimplClassify*(this: var HLRBRep_Data; E: Standard_Integer; ED: HLRBRep_EdgeData;
                   Nbp: Standard_Integer; p1: Standard_Real; p2: Standard_Real): TopAbs_State {.
    importcpp: "SimplClassify", header: "HLRBRep_Data.hxx".}
proc Classify*(this: var HLRBRep_Data; E: Standard_Integer; ED: HLRBRep_EdgeData;
              LevelFlag: Standard_Boolean; Level: var Standard_Integer;
              param: Standard_Real): TopAbs_State {.importcpp: "Classify",
    header: "HLRBRep_Data.hxx".}
proc IsBadFace*(this: HLRBRep_Data): Standard_Boolean {.noSideEffect,
    importcpp: "IsBadFace", header: "HLRBRep_Data.hxx".}
proc Destroy*(this: var HLRBRep_Data) {.importcpp: "Destroy",
                                    header: "HLRBRep_Data.hxx".}
proc destroyHLRBRep_Data*(this: var HLRBRep_Data) {.importcpp: "#.~HLRBRep_Data()",
    header: "HLRBRep_Data.hxx".}
type
  HLRBRep_Database_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRBRep_Data::get_type_name(@)",
                              header: "HLRBRep_Data.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRBRep_Data::get_type_descriptor(@)", header: "HLRBRep_Data.hxx".}
proc DynamicType*(this: HLRBRep_Data): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRBRep_Data.hxx".}