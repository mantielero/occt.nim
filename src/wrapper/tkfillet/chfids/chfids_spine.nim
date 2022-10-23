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

discard "forward decl of TopoDS_Edge"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
discard "forward decl of ChFiDS_Spine"
type
  HandleChFiDS_Spine* = Handle[ChFiDS_Spine]

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
  ChFiDS_Spine* {.importcpp: "ChFiDS_Spine", header: "ChFiDS_Spine.hxx", bycopy.} = object of StandardTransient


proc newChFiDS_Spine*(): ChFiDS_Spine {.cdecl, constructor,
                                     importcpp: "ChFiDS_Spine(@)",
                                     header: "ChFiDS_Spine.hxx".}
proc newChFiDS_Spine*(tol: cfloat): ChFiDS_Spine {.cdecl, constructor,
    importcpp: "ChFiDS_Spine(@)", header: "ChFiDS_Spine.hxx".}
proc setEdges*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl, importcpp: "SetEdges",
    header: "ChFiDS_Spine.hxx".}
proc setOffsetEdges*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl,
    importcpp: "SetOffsetEdges", header: "ChFiDS_Spine.hxx".}
proc putInFirst*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl,
    importcpp: "PutInFirst", header: "ChFiDS_Spine.hxx".}
proc putInFirstOffset*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl,
    importcpp: "PutInFirstOffset", header: "ChFiDS_Spine.hxx".}
proc nbEdges*(this: ChFiDS_Spine): cint {.noSideEffect, cdecl, importcpp: "NbEdges",
                                      header: "ChFiDS_Spine.hxx".}
proc edges*(this: ChFiDS_Spine; i: cint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edges", header: "ChFiDS_Spine.hxx".}
proc offsetEdges*(this: ChFiDS_Spine; i: cint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "OffsetEdges", header: "ChFiDS_Spine.hxx".}
proc setFirstStatus*(this: var ChFiDS_Spine; s: ChFiDS_State) {.cdecl,
    importcpp: "SetFirstStatus", header: "ChFiDS_Spine.hxx".}
proc setLastStatus*(this: var ChFiDS_Spine; s: ChFiDS_State) {.cdecl,
    importcpp: "SetLastStatus", header: "ChFiDS_Spine.hxx".}
proc appendElSpine*(this: var ChFiDS_Spine; els: Handle[ChFiDS_HElSpine]) {.cdecl,
    importcpp: "AppendElSpine", header: "ChFiDS_Spine.hxx".}
proc appendOffsetElSpine*(this: var ChFiDS_Spine; els: Handle[ChFiDS_HElSpine]) {.
    cdecl, importcpp: "AppendOffsetElSpine", header: "ChFiDS_Spine.hxx".}
proc elSpine*(this: ChFiDS_Spine; ie: cint): Handle[ChFiDS_HElSpine] {.noSideEffect,
    cdecl, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc elSpine*(this: ChFiDS_Spine; e: TopoDS_Edge): Handle[ChFiDS_HElSpine] {.
    noSideEffect, cdecl, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc elSpine*(this: ChFiDS_Spine; w: cfloat): Handle[ChFiDS_HElSpine] {.noSideEffect,
    cdecl, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc changeElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.cdecl,
    importcpp: "ChangeElSpines", header: "ChFiDS_Spine.hxx".}
proc changeOffsetElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.cdecl,
    importcpp: "ChangeOffsetElSpines", header: "ChFiDS_Spine.hxx".}
proc reset*(this: var ChFiDS_Spine; allData: bool = false) {.cdecl, importcpp: "Reset",
    header: "ChFiDS_Spine.hxx".}
proc splitDone*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
                                        importcpp: "SplitDone", header: "ChFiDS_Spine.hxx".}
proc splitDone*(this: var ChFiDS_Spine; b: bool) {.cdecl, importcpp: "SplitDone",
    header: "ChFiDS_Spine.hxx".}
proc load*(this: var ChFiDS_Spine) {.cdecl, importcpp: "Load", header: "ChFiDS_Spine.hxx".}
proc resolution*(this: ChFiDS_Spine; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", header: "ChFiDS_Spine.hxx".}
proc isClosed*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                       header: "ChFiDS_Spine.hxx".}
proc firstParameter*(this: ChFiDS_Spine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "ChFiDS_Spine.hxx".}
proc lastParameter*(this: ChFiDS_Spine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "ChFiDS_Spine.hxx".}
proc setFirstParameter*(this: var ChFiDS_Spine; par: cfloat) {.cdecl,
    importcpp: "SetFirstParameter", header: "ChFiDS_Spine.hxx".}
proc setLastParameter*(this: var ChFiDS_Spine; par: cfloat) {.cdecl,
    importcpp: "SetLastParameter", header: "ChFiDS_Spine.hxx".}
proc firstParameter*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "FirstParameter", header: "ChFiDS_Spine.hxx".}
proc lastParameter*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "LastParameter", header: "ChFiDS_Spine.hxx".}
proc length*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", header: "ChFiDS_Spine.hxx".}
proc isPeriodic*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "ChFiDS_Spine.hxx".}
proc period*(this: ChFiDS_Spine): cfloat {.noSideEffect, cdecl, importcpp: "Period",
                                       header: "ChFiDS_Spine.hxx".}
proc absc*(this: var ChFiDS_Spine; u: cfloat): cfloat {.cdecl, importcpp: "Absc",
    header: "ChFiDS_Spine.hxx".}
proc absc*(this: var ChFiDS_Spine; u: cfloat; i: cint): cfloat {.cdecl, importcpp: "Absc",
    header: "ChFiDS_Spine.hxx".}
proc parameter*(this: var ChFiDS_Spine; absC: cfloat; u: var cfloat;
               oriented: bool = true) {.cdecl, importcpp: "Parameter", header: "ChFiDS_Spine.hxx".}
proc parameter*(this: var ChFiDS_Spine; index: cint; absC: cfloat; u: var cfloat;
               oriented: bool = true) {.cdecl, importcpp: "Parameter", header: "ChFiDS_Spine.hxx".}
proc value*(this: var ChFiDS_Spine; absC: cfloat): PntObj {.cdecl, importcpp: "Value",
    header: "ChFiDS_Spine.hxx".}
proc d0*(this: var ChFiDS_Spine; absC: cfloat; p: var PntObj) {.cdecl, importcpp: "D0",
    header: "ChFiDS_Spine.hxx".}
proc d1*(this: var ChFiDS_Spine; absC: cfloat; p: var PntObj; v1: var VecObj) {.cdecl,
    importcpp: "D1", header: "ChFiDS_Spine.hxx".}
proc d2*(this: var ChFiDS_Spine; absC: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "D2", header: "ChFiDS_Spine.hxx".}
proc setCurrent*(this: var ChFiDS_Spine; index: cint) {.cdecl, importcpp: "SetCurrent",
    header: "ChFiDS_Spine.hxx".}
proc currentElementarySpine*(this: var ChFiDS_Spine; index: cint): BRepAdaptorCurve {.
    cdecl, importcpp: "CurrentElementarySpine", header: "ChFiDS_Spine.hxx".}
proc currentIndexOfElementarySpine*(this: ChFiDS_Spine): cint {.noSideEffect, cdecl,
    importcpp: "CurrentIndexOfElementarySpine", header: "ChFiDS_Spine.hxx".}
proc getType*(this: ChFiDS_Spine): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "ChFiDS_Spine.hxx".}
proc line*(this: ChFiDS_Spine): LinObj {.noSideEffect, cdecl, importcpp: "Line",
                                  header: "ChFiDS_Spine.hxx".}
proc circle*(this: ChFiDS_Spine): CircObj {.noSideEffect, cdecl, importcpp: "Circle",
                                     header: "ChFiDS_Spine.hxx".}
proc firstStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect, cdecl,
    importcpp: "FirstStatus", header: "ChFiDS_Spine.hxx".}
proc lastStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect, cdecl,
    importcpp: "LastStatus", header: "ChFiDS_Spine.hxx".}
proc status*(this: ChFiDS_Spine; isFirst: bool): ChFiDS_State {.noSideEffect, cdecl,
    importcpp: "Status", header: "ChFiDS_Spine.hxx".}
proc getTypeOfConcavity*(this: ChFiDS_Spine): ChFiDS_TypeOfConcavity {.noSideEffect,
    cdecl, importcpp: "GetTypeOfConcavity", header: "ChFiDS_Spine.hxx".}
proc setStatus*(this: var ChFiDS_Spine; s: ChFiDS_State; isFirst: bool) {.cdecl,
    importcpp: "SetStatus", header: "ChFiDS_Spine.hxx".}
proc setTypeOfConcavity*(this: var ChFiDS_Spine; theType: ChFiDS_TypeOfConcavity) {.
    cdecl, importcpp: "SetTypeOfConcavity", header: "ChFiDS_Spine.hxx".}
proc isTangencyExtremity*(this: ChFiDS_Spine; isFirst: bool): bool {.noSideEffect,
    cdecl, importcpp: "IsTangencyExtremity", header: "ChFiDS_Spine.hxx".}
proc setTangencyExtremity*(this: var ChFiDS_Spine; isTangency: bool; isFirst: bool) {.
    cdecl, importcpp: "SetTangencyExtremity", header: "ChFiDS_Spine.hxx".}
proc absc*(this: ChFiDS_Spine; v: TopoDS_Vertex): cfloat {.noSideEffect, cdecl,
    importcpp: "Absc", header: "ChFiDS_Spine.hxx".}
proc firstVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FirstVertex", header: "ChFiDS_Spine.hxx".}
proc lastVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "LastVertex", header: "ChFiDS_Spine.hxx".}
proc setFirstTgt*(this: var ChFiDS_Spine; w: cfloat) {.cdecl, importcpp: "SetFirstTgt",
    header: "ChFiDS_Spine.hxx".}
proc setLastTgt*(this: var ChFiDS_Spine; w: cfloat) {.cdecl, importcpp: "SetLastTgt",
    header: "ChFiDS_Spine.hxx".}
proc hasFirstTgt*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstTgt", header: "ChFiDS_Spine.hxx".}
proc hasLastTgt*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
    importcpp: "HasLastTgt", header: "ChFiDS_Spine.hxx".}
proc setReference*(this: var ChFiDS_Spine; w: cfloat) {.cdecl,
    importcpp: "SetReference", header: "ChFiDS_Spine.hxx".}
proc setReference*(this: var ChFiDS_Spine; i: cint) {.cdecl, importcpp: "SetReference",
    header: "ChFiDS_Spine.hxx".}
proc index*(this: ChFiDS_Spine; w: cfloat; forward: bool = true): cint {.noSideEffect,
    cdecl, importcpp: "Index", header: "ChFiDS_Spine.hxx".}
proc index*(this: ChFiDS_Spine; e: TopoDS_Edge): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "ChFiDS_Spine.hxx".}
proc unsetReference*(this: var ChFiDS_Spine) {.cdecl, importcpp: "UnsetReference",
    header: "ChFiDS_Spine.hxx".}
proc setErrorStatus*(this: var ChFiDS_Spine; state: ChFiDS_ErrorStatus) {.cdecl,
    importcpp: "SetErrorStatus", header: "ChFiDS_Spine.hxx".}
proc errorStatus*(this: ChFiDS_Spine): ChFiDS_ErrorStatus {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", header: "ChFiDS_Spine.hxx".}
proc mode*(this: ChFiDS_Spine): ChFiDS_ChamfMode {.noSideEffect, cdecl,
    importcpp: "Mode", header: "ChFiDS_Spine.hxx".}