##  Created on: 1993-11-09
##  Created by: Laurent BOURESCHE
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../BRepAdaptor/BRepAdaptor_Curve, ../Standard/Standard_Integer, ChFiDS_State,
  ../TopTools/TopTools_SequenceOfShape, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Boolean, ChFiDS_ListOfHElSpine, ../Standard/Standard_Real,
  ../gp/gp_Pnt, ../gp/gp_Vec, ChFiDS_ErrorStatus, ../Standard/Standard_Transient,
  ../GeomAbs/GeomAbs_CurveType, ChFiDS_ChamfMode, ChFiDS_TypeOfConcavity

discard "forward decl of TopoDS_Edge"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
discard "forward decl of ChFiDS_Spine"
discard "forward decl of ChFiDS_Spine"
type
  Handle_ChFiDS_Spine* = handle[ChFiDS_Spine]

## ! Contains information necessary for construction of
## ! a 3D fillet or chamfer:
## !
## ! - guideline composed of edges of the solid, tangents
## ! between them, and borders by faces tangents
## ! between them.
## !
## ! Tools for construction of the Sp
## ! by propagation from an edge of solid
## ! are provided in the Builder of Fil3d.
## !
## ! The Spine contains among others the
## ! information about the nature of extremities
## ! of the fillet ( on free border , on section or closed ).
## !
## ! IMPORTANT NOTE  :    the guideline
## ! represented in this way is not C2, although the path
## ! claims it. Several palliative workarounds
## ! (see the methods at the end) are planned,
## ! but they are not enough. It is necessary to change
## ! the approach and double the Spine of line C2 with
## ! the known consequences for management of
## ! interactions between KPart Blend in Fil3d.

type
  ChFiDS_Spine* {.importcpp: "ChFiDS_Spine", header: "ChFiDS_Spine.hxx", bycopy.} = object of Standard_Transient


proc constructChFiDS_Spine*(): ChFiDS_Spine {.constructor,
    importcpp: "ChFiDS_Spine(@)", header: "ChFiDS_Spine.hxx".}
proc constructChFiDS_Spine*(Tol: Standard_Real): ChFiDS_Spine {.constructor,
    importcpp: "ChFiDS_Spine(@)", header: "ChFiDS_Spine.hxx".}
proc SetEdges*(this: var ChFiDS_Spine; E: TopoDS_Edge) {.importcpp: "SetEdges",
    header: "ChFiDS_Spine.hxx".}
proc SetOffsetEdges*(this: var ChFiDS_Spine; E: TopoDS_Edge) {.
    importcpp: "SetOffsetEdges", header: "ChFiDS_Spine.hxx".}
proc PutInFirst*(this: var ChFiDS_Spine; E: TopoDS_Edge) {.importcpp: "PutInFirst",
    header: "ChFiDS_Spine.hxx".}
proc PutInFirstOffset*(this: var ChFiDS_Spine; E: TopoDS_Edge) {.
    importcpp: "PutInFirstOffset", header: "ChFiDS_Spine.hxx".}
proc NbEdges*(this: ChFiDS_Spine): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ChFiDS_Spine.hxx".}
proc Edges*(this: ChFiDS_Spine; I: Standard_Integer): TopoDS_Edge {.noSideEffect,
    importcpp: "Edges", header: "ChFiDS_Spine.hxx".}
proc OffsetEdges*(this: ChFiDS_Spine; I: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "OffsetEdges", header: "ChFiDS_Spine.hxx".}
proc SetFirstStatus*(this: var ChFiDS_Spine; S: ChFiDS_State) {.
    importcpp: "SetFirstStatus", header: "ChFiDS_Spine.hxx".}
proc SetLastStatus*(this: var ChFiDS_Spine; S: ChFiDS_State) {.
    importcpp: "SetLastStatus", header: "ChFiDS_Spine.hxx".}
proc AppendElSpine*(this: var ChFiDS_Spine; Els: handle[ChFiDS_HElSpine]) {.
    importcpp: "AppendElSpine", header: "ChFiDS_Spine.hxx".}
proc AppendOffsetElSpine*(this: var ChFiDS_Spine; Els: handle[ChFiDS_HElSpine]) {.
    importcpp: "AppendOffsetElSpine", header: "ChFiDS_Spine.hxx".}
proc ElSpine*(this: ChFiDS_Spine; IE: Standard_Integer): handle[ChFiDS_HElSpine] {.
    noSideEffect, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc ElSpine*(this: ChFiDS_Spine; E: TopoDS_Edge): handle[ChFiDS_HElSpine] {.
    noSideEffect, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc ElSpine*(this: ChFiDS_Spine; W: Standard_Real): handle[ChFiDS_HElSpine] {.
    noSideEffect, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc ChangeElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.
    importcpp: "ChangeElSpines", header: "ChFiDS_Spine.hxx".}
proc ChangeOffsetElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.
    importcpp: "ChangeOffsetElSpines", header: "ChFiDS_Spine.hxx".}
proc Reset*(this: var ChFiDS_Spine; AllData: Standard_Boolean = Standard_False) {.
    importcpp: "Reset", header: "ChFiDS_Spine.hxx".}
proc SplitDone*(this: ChFiDS_Spine): Standard_Boolean {.noSideEffect,
    importcpp: "SplitDone", header: "ChFiDS_Spine.hxx".}
proc SplitDone*(this: var ChFiDS_Spine; B: Standard_Boolean) {.importcpp: "SplitDone",
    header: "ChFiDS_Spine.hxx".}
proc Load*(this: var ChFiDS_Spine) {.importcpp: "Load", header: "ChFiDS_Spine.hxx".}
proc Resolution*(this: ChFiDS_Spine; R3d: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Resolution", header: "ChFiDS_Spine.hxx".}
proc IsClosed*(this: ChFiDS_Spine): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "ChFiDS_Spine.hxx".}
proc FirstParameter*(this: ChFiDS_Spine): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "ChFiDS_Spine.hxx".}
proc LastParameter*(this: ChFiDS_Spine): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ChFiDS_Spine.hxx".}
proc SetFirstParameter*(this: var ChFiDS_Spine; Par: Standard_Real) {.
    importcpp: "SetFirstParameter", header: "ChFiDS_Spine.hxx".}
proc SetLastParameter*(this: var ChFiDS_Spine; Par: Standard_Real) {.
    importcpp: "SetLastParameter", header: "ChFiDS_Spine.hxx".}
proc FirstParameter*(this: ChFiDS_Spine; IndexSpine: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "FirstParameter", header: "ChFiDS_Spine.hxx".}
proc LastParameter*(this: ChFiDS_Spine; IndexSpine: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "LastParameter", header: "ChFiDS_Spine.hxx".}
proc Length*(this: ChFiDS_Spine; IndexSpine: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "ChFiDS_Spine.hxx".}
proc IsPeriodic*(this: ChFiDS_Spine): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ChFiDS_Spine.hxx".}
proc Period*(this: ChFiDS_Spine): Standard_Real {.noSideEffect, importcpp: "Period",
    header: "ChFiDS_Spine.hxx".}
proc Absc*(this: var ChFiDS_Spine; U: Standard_Real): Standard_Real {.
    importcpp: "Absc", header: "ChFiDS_Spine.hxx".}
proc Absc*(this: var ChFiDS_Spine; U: Standard_Real; I: Standard_Integer): Standard_Real {.
    importcpp: "Absc", header: "ChFiDS_Spine.hxx".}
proc Parameter*(this: var ChFiDS_Spine; AbsC: Standard_Real; U: var Standard_Real;
               Oriented: Standard_Boolean = Standard_True) {.importcpp: "Parameter",
    header: "ChFiDS_Spine.hxx".}
proc Parameter*(this: var ChFiDS_Spine; Index: Standard_Integer; AbsC: Standard_Real;
               U: var Standard_Real; Oriented: Standard_Boolean = Standard_True) {.
    importcpp: "Parameter", header: "ChFiDS_Spine.hxx".}
proc Value*(this: var ChFiDS_Spine; AbsC: Standard_Real): gp_Pnt {.importcpp: "Value",
    header: "ChFiDS_Spine.hxx".}
proc D0*(this: var ChFiDS_Spine; AbsC: Standard_Real; P: var gp_Pnt) {.importcpp: "D0",
    header: "ChFiDS_Spine.hxx".}
proc D1*(this: var ChFiDS_Spine; AbsC: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "D1", header: "ChFiDS_Spine.hxx".}
proc D2*(this: var ChFiDS_Spine; AbsC: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "D2", header: "ChFiDS_Spine.hxx".}
proc SetCurrent*(this: var ChFiDS_Spine; Index: Standard_Integer) {.
    importcpp: "SetCurrent", header: "ChFiDS_Spine.hxx".}
proc CurrentElementarySpine*(this: var ChFiDS_Spine; Index: Standard_Integer): BRepAdaptor_Curve {.
    importcpp: "CurrentElementarySpine", header: "ChFiDS_Spine.hxx".}
proc CurrentIndexOfElementarySpine*(this: ChFiDS_Spine): Standard_Integer {.
    noSideEffect, importcpp: "CurrentIndexOfElementarySpine",
    header: "ChFiDS_Spine.hxx".}
proc GetType*(this: ChFiDS_Spine): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "ChFiDS_Spine.hxx".}
proc Line*(this: ChFiDS_Spine): gp_Lin {.noSideEffect, importcpp: "Line",
                                     header: "ChFiDS_Spine.hxx".}
proc Circle*(this: ChFiDS_Spine): gp_Circ {.noSideEffect, importcpp: "Circle",
                                        header: "ChFiDS_Spine.hxx".}
proc FirstStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect,
    importcpp: "FirstStatus", header: "ChFiDS_Spine.hxx".}
proc LastStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect,
    importcpp: "LastStatus", header: "ChFiDS_Spine.hxx".}
proc Status*(this: ChFiDS_Spine; IsFirst: Standard_Boolean): ChFiDS_State {.
    noSideEffect, importcpp: "Status", header: "ChFiDS_Spine.hxx".}
proc GetTypeOfConcavity*(this: ChFiDS_Spine): ChFiDS_TypeOfConcavity {.noSideEffect,
    importcpp: "GetTypeOfConcavity", header: "ChFiDS_Spine.hxx".}
proc SetStatus*(this: var ChFiDS_Spine; S: ChFiDS_State; IsFirst: Standard_Boolean) {.
    importcpp: "SetStatus", header: "ChFiDS_Spine.hxx".}
proc SetTypeOfConcavity*(this: var ChFiDS_Spine; theType: ChFiDS_TypeOfConcavity) {.
    importcpp: "SetTypeOfConcavity", header: "ChFiDS_Spine.hxx".}
proc IsTangencyExtremity*(this: ChFiDS_Spine; IsFirst: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "IsTangencyExtremity", header: "ChFiDS_Spine.hxx".}
proc SetTangencyExtremity*(this: var ChFiDS_Spine; IsTangency: Standard_Boolean;
                          IsFirst: Standard_Boolean) {.
    importcpp: "SetTangencyExtremity", header: "ChFiDS_Spine.hxx".}
proc Absc*(this: ChFiDS_Spine; V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "Absc", header: "ChFiDS_Spine.hxx".}
proc FirstVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "ChFiDS_Spine.hxx".}
proc LastVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "ChFiDS_Spine.hxx".}
proc SetFirstTgt*(this: var ChFiDS_Spine; W: Standard_Real) {.
    importcpp: "SetFirstTgt", header: "ChFiDS_Spine.hxx".}
proc SetLastTgt*(this: var ChFiDS_Spine; W: Standard_Real) {.importcpp: "SetLastTgt",
    header: "ChFiDS_Spine.hxx".}
proc HasFirstTgt*(this: ChFiDS_Spine): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstTgt", header: "ChFiDS_Spine.hxx".}
proc HasLastTgt*(this: ChFiDS_Spine): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastTgt", header: "ChFiDS_Spine.hxx".}
proc SetReference*(this: var ChFiDS_Spine; W: Standard_Real) {.
    importcpp: "SetReference", header: "ChFiDS_Spine.hxx".}
proc SetReference*(this: var ChFiDS_Spine; I: Standard_Integer) {.
    importcpp: "SetReference", header: "ChFiDS_Spine.hxx".}
proc Index*(this: ChFiDS_Spine; W: Standard_Real;
           Forward: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "ChFiDS_Spine.hxx".}
proc Index*(this: ChFiDS_Spine; E: TopoDS_Edge): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "ChFiDS_Spine.hxx".}
proc UnsetReference*(this: var ChFiDS_Spine) {.importcpp: "UnsetReference",
    header: "ChFiDS_Spine.hxx".}
proc SetErrorStatus*(this: var ChFiDS_Spine; state: ChFiDS_ErrorStatus) {.
    importcpp: "SetErrorStatus", header: "ChFiDS_Spine.hxx".}
proc ErrorStatus*(this: ChFiDS_Spine): ChFiDS_ErrorStatus {.noSideEffect,
    importcpp: "ErrorStatus", header: "ChFiDS_Spine.hxx".}
proc Mode*(this: ChFiDS_Spine): ChFiDS_ChamfMode {.noSideEffect, importcpp: "Mode",
    header: "ChFiDS_Spine.hxx".}
type
  ChFiDS_Spinebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ChFiDS_Spine::get_type_name(@)",
                              header: "ChFiDS_Spine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ChFiDS_Spine::get_type_descriptor(@)", header: "ChFiDS_Spine.hxx".}
proc DynamicType*(this: ChFiDS_Spine): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_Spine.hxx".}