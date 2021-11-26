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
                                     dynlib: tkfillet.}
proc newChFiDS_Spine*(tol: cfloat): ChFiDS_Spine {.cdecl, constructor,
    importcpp: "ChFiDS_Spine(@)", dynlib: tkfillet.}
proc setEdges*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl, importcpp: "SetEdges",
    dynlib: tkfillet.}
proc setOffsetEdges*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl,
    importcpp: "SetOffsetEdges", dynlib: tkfillet.}
proc putInFirst*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl,
    importcpp: "PutInFirst", dynlib: tkfillet.}
proc putInFirstOffset*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.cdecl,
    importcpp: "PutInFirstOffset", dynlib: tkfillet.}
proc nbEdges*(this: ChFiDS_Spine): cint {.noSideEffect, cdecl, importcpp: "NbEdges",
                                      dynlib: tkfillet.}
proc edges*(this: ChFiDS_Spine; i: cint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Edges", dynlib: tkfillet.}
proc offsetEdges*(this: ChFiDS_Spine; i: cint): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "OffsetEdges", dynlib: tkfillet.}
proc setFirstStatus*(this: var ChFiDS_Spine; s: ChFiDS_State) {.cdecl,
    importcpp: "SetFirstStatus", dynlib: tkfillet.}
proc setLastStatus*(this: var ChFiDS_Spine; s: ChFiDS_State) {.cdecl,
    importcpp: "SetLastStatus", dynlib: tkfillet.}
proc appendElSpine*(this: var ChFiDS_Spine; els: Handle[ChFiDS_HElSpine]) {.cdecl,
    importcpp: "AppendElSpine", dynlib: tkfillet.}
proc appendOffsetElSpine*(this: var ChFiDS_Spine; els: Handle[ChFiDS_HElSpine]) {.
    cdecl, importcpp: "AppendOffsetElSpine", dynlib: tkfillet.}
proc elSpine*(this: ChFiDS_Spine; ie: cint): Handle[ChFiDS_HElSpine] {.noSideEffect,
    cdecl, importcpp: "ElSpine", dynlib: tkfillet.}
proc elSpine*(this: ChFiDS_Spine; e: TopoDS_Edge): Handle[ChFiDS_HElSpine] {.
    noSideEffect, cdecl, importcpp: "ElSpine", dynlib: tkfillet.}
proc elSpine*(this: ChFiDS_Spine; w: cfloat): Handle[ChFiDS_HElSpine] {.noSideEffect,
    cdecl, importcpp: "ElSpine", dynlib: tkfillet.}
proc changeElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.cdecl,
    importcpp: "ChangeElSpines", dynlib: tkfillet.}
proc changeOffsetElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.cdecl,
    importcpp: "ChangeOffsetElSpines", dynlib: tkfillet.}
proc reset*(this: var ChFiDS_Spine; allData: bool = false) {.cdecl, importcpp: "Reset",
    dynlib: tkfillet.}
proc splitDone*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
                                        importcpp: "SplitDone", dynlib: tkfillet.}
proc splitDone*(this: var ChFiDS_Spine; b: bool) {.cdecl, importcpp: "SplitDone",
    dynlib: tkfillet.}
proc load*(this: var ChFiDS_Spine) {.cdecl, importcpp: "Load", dynlib: tkfillet.}
proc resolution*(this: ChFiDS_Spine; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkfillet.}
proc isClosed*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                       dynlib: tkfillet.}
proc firstParameter*(this: ChFiDS_Spine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkfillet.}
proc lastParameter*(this: ChFiDS_Spine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkfillet.}
proc setFirstParameter*(this: var ChFiDS_Spine; par: cfloat) {.cdecl,
    importcpp: "SetFirstParameter", dynlib: tkfillet.}
proc setLastParameter*(this: var ChFiDS_Spine; par: cfloat) {.cdecl,
    importcpp: "SetLastParameter", dynlib: tkfillet.}
proc firstParameter*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "FirstParameter", dynlib: tkfillet.}
proc lastParameter*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "LastParameter", dynlib: tkfillet.}
proc length*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkfillet.}
proc isPeriodic*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkfillet.}
proc period*(this: ChFiDS_Spine): cfloat {.noSideEffect, cdecl, importcpp: "Period",
                                       dynlib: tkfillet.}
proc absc*(this: var ChFiDS_Spine; u: cfloat): cfloat {.cdecl, importcpp: "Absc",
    dynlib: tkfillet.}
proc absc*(this: var ChFiDS_Spine; u: cfloat; i: cint): cfloat {.cdecl, importcpp: "Absc",
    dynlib: tkfillet.}
proc parameter*(this: var ChFiDS_Spine; absC: cfloat; u: var cfloat;
               oriented: bool = true) {.cdecl, importcpp: "Parameter", dynlib: tkfillet.}
proc parameter*(this: var ChFiDS_Spine; index: cint; absC: cfloat; u: var cfloat;
               oriented: bool = true) {.cdecl, importcpp: "Parameter", dynlib: tkfillet.}
proc value*(this: var ChFiDS_Spine; absC: cfloat): Pnt {.cdecl, importcpp: "Value",
    dynlib: tkfillet.}
proc d0*(this: var ChFiDS_Spine; absC: cfloat; p: var Pnt) {.cdecl, importcpp: "D0",
    dynlib: tkfillet.}
proc d1*(this: var ChFiDS_Spine; absC: cfloat; p: var Pnt; v1: var Vec) {.cdecl,
    importcpp: "D1", dynlib: tkfillet.}
proc d2*(this: var ChFiDS_Spine; absC: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.cdecl,
    importcpp: "D2", dynlib: tkfillet.}
proc setCurrent*(this: var ChFiDS_Spine; index: cint) {.cdecl, importcpp: "SetCurrent",
    dynlib: tkfillet.}
proc currentElementarySpine*(this: var ChFiDS_Spine; index: cint): BRepAdaptorCurve {.
    cdecl, importcpp: "CurrentElementarySpine", dynlib: tkfillet.}
proc currentIndexOfElementarySpine*(this: ChFiDS_Spine): cint {.noSideEffect, cdecl,
    importcpp: "CurrentIndexOfElementarySpine", dynlib: tkfillet.}
proc getType*(this: ChFiDS_Spine): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkfillet.}
proc line*(this: ChFiDS_Spine): Lin {.noSideEffect, cdecl, importcpp: "Line",
                                  dynlib: tkfillet.}
proc circle*(this: ChFiDS_Spine): Circ {.noSideEffect, cdecl, importcpp: "Circle",
                                     dynlib: tkfillet.}
proc firstStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect, cdecl,
    importcpp: "FirstStatus", dynlib: tkfillet.}
proc lastStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect, cdecl,
    importcpp: "LastStatus", dynlib: tkfillet.}
proc status*(this: ChFiDS_Spine; isFirst: bool): ChFiDS_State {.noSideEffect, cdecl,
    importcpp: "Status", dynlib: tkfillet.}
proc getTypeOfConcavity*(this: ChFiDS_Spine): ChFiDS_TypeOfConcavity {.noSideEffect,
    cdecl, importcpp: "GetTypeOfConcavity", dynlib: tkfillet.}
proc setStatus*(this: var ChFiDS_Spine; s: ChFiDS_State; isFirst: bool) {.cdecl,
    importcpp: "SetStatus", dynlib: tkfillet.}
proc setTypeOfConcavity*(this: var ChFiDS_Spine; theType: ChFiDS_TypeOfConcavity) {.
    cdecl, importcpp: "SetTypeOfConcavity", dynlib: tkfillet.}
proc isTangencyExtremity*(this: ChFiDS_Spine; isFirst: bool): bool {.noSideEffect,
    cdecl, importcpp: "IsTangencyExtremity", dynlib: tkfillet.}
proc setTangencyExtremity*(this: var ChFiDS_Spine; isTangency: bool; isFirst: bool) {.
    cdecl, importcpp: "SetTangencyExtremity", dynlib: tkfillet.}
proc absc*(this: ChFiDS_Spine; v: TopoDS_Vertex): cfloat {.noSideEffect, cdecl,
    importcpp: "Absc", dynlib: tkfillet.}
proc firstVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FirstVertex", dynlib: tkfillet.}
proc lastVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "LastVertex", dynlib: tkfillet.}
proc setFirstTgt*(this: var ChFiDS_Spine; w: cfloat) {.cdecl, importcpp: "SetFirstTgt",
    dynlib: tkfillet.}
proc setLastTgt*(this: var ChFiDS_Spine; w: cfloat) {.cdecl, importcpp: "SetLastTgt",
    dynlib: tkfillet.}
proc hasFirstTgt*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstTgt", dynlib: tkfillet.}
proc hasLastTgt*(this: ChFiDS_Spine): bool {.noSideEffect, cdecl,
    importcpp: "HasLastTgt", dynlib: tkfillet.}
proc setReference*(this: var ChFiDS_Spine; w: cfloat) {.cdecl,
    importcpp: "SetReference", dynlib: tkfillet.}
proc setReference*(this: var ChFiDS_Spine; i: cint) {.cdecl, importcpp: "SetReference",
    dynlib: tkfillet.}
proc index*(this: ChFiDS_Spine; w: cfloat; forward: bool = true): cint {.noSideEffect,
    cdecl, importcpp: "Index", dynlib: tkfillet.}
proc index*(this: ChFiDS_Spine; e: TopoDS_Edge): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkfillet.}
proc unsetReference*(this: var ChFiDS_Spine) {.cdecl, importcpp: "UnsetReference",
    dynlib: tkfillet.}
proc setErrorStatus*(this: var ChFiDS_Spine; state: ChFiDS_ErrorStatus) {.cdecl,
    importcpp: "SetErrorStatus", dynlib: tkfillet.}
proc errorStatus*(this: ChFiDS_Spine): ChFiDS_ErrorStatus {.noSideEffect, cdecl,
    importcpp: "ErrorStatus", dynlib: tkfillet.}
proc mode*(this: ChFiDS_Spine): ChFiDS_ChamfMode {.noSideEffect, cdecl,
    importcpp: "Mode", dynlib: tkfillet.}