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
# when defined(Status):
#   discard
discard "forward decl of ChFiDS_Spine"
discard "forward decl of ChFiDS_Spine"
type
  HandleC1C1* = Handle[ChFiDS_Spine]

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


proc constructChFiDS_Spine*(): ChFiDS_Spine {.constructor,
    importcpp: "ChFiDS_Spine(@)", header: "ChFiDS_Spine.hxx".}
proc constructChFiDS_Spine*(tol: cfloat): ChFiDS_Spine {.constructor,
    importcpp: "ChFiDS_Spine(@)", header: "ChFiDS_Spine.hxx".}
proc setEdges*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.importcpp: "SetEdges",
    header: "ChFiDS_Spine.hxx".}
proc setOffsetEdges*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.
    importcpp: "SetOffsetEdges", header: "ChFiDS_Spine.hxx".}
proc putInFirst*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.importcpp: "PutInFirst",
    header: "ChFiDS_Spine.hxx".}
proc putInFirstOffset*(this: var ChFiDS_Spine; e: TopoDS_Edge) {.
    importcpp: "PutInFirstOffset", header: "ChFiDS_Spine.hxx".}
proc nbEdges*(this: ChFiDS_Spine): cint {.noSideEffect, importcpp: "NbEdges",
                                      header: "ChFiDS_Spine.hxx".}
proc edges*(this: ChFiDS_Spine; i: cint): TopoDS_Edge {.noSideEffect,
    importcpp: "Edges", header: "ChFiDS_Spine.hxx".}
proc offsetEdges*(this: ChFiDS_Spine; i: cint): TopoDS_Edge {.noSideEffect,
    importcpp: "OffsetEdges", header: "ChFiDS_Spine.hxx".}
proc setFirstStatus*(this: var ChFiDS_Spine; s: ChFiDS_State) {.
    importcpp: "SetFirstStatus", header: "ChFiDS_Spine.hxx".}
proc setLastStatus*(this: var ChFiDS_Spine; s: ChFiDS_State) {.
    importcpp: "SetLastStatus", header: "ChFiDS_Spine.hxx".}
proc appendElSpine*(this: var ChFiDS_Spine; els: Handle[ChFiDS_HElSpine]) {.
    importcpp: "AppendElSpine", header: "ChFiDS_Spine.hxx".}
proc appendOffsetElSpine*(this: var ChFiDS_Spine; els: Handle[ChFiDS_HElSpine]) {.
    importcpp: "AppendOffsetElSpine", header: "ChFiDS_Spine.hxx".}
proc elSpine*(this: ChFiDS_Spine; ie: cint): Handle[ChFiDS_HElSpine] {.noSideEffect,
    importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc elSpine*(this: ChFiDS_Spine; e: TopoDS_Edge): Handle[ChFiDS_HElSpine] {.
    noSideEffect, importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc elSpine*(this: ChFiDS_Spine; w: cfloat): Handle[ChFiDS_HElSpine] {.noSideEffect,
    importcpp: "ElSpine", header: "ChFiDS_Spine.hxx".}
proc changeElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.
    importcpp: "ChangeElSpines", header: "ChFiDS_Spine.hxx".}
proc changeOffsetElSpines*(this: var ChFiDS_Spine): var ChFiDS_ListOfHElSpine {.
    importcpp: "ChangeOffsetElSpines", header: "ChFiDS_Spine.hxx".}
proc reset*(this: var ChFiDS_Spine; allData: bool = false) {.importcpp: "Reset",
    header: "ChFiDS_Spine.hxx".}
proc splitDone*(this: ChFiDS_Spine): bool {.noSideEffect, importcpp: "SplitDone",
                                        header: "ChFiDS_Spine.hxx".}
proc splitDone*(this: var ChFiDS_Spine; b: bool) {.importcpp: "SplitDone",
    header: "ChFiDS_Spine.hxx".}
proc load*(this: var ChFiDS_Spine) {.importcpp: "Load", header: "ChFiDS_Spine.hxx".}
proc resolution*(this: ChFiDS_Spine; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "ChFiDS_Spine.hxx".}
proc isClosed*(this: ChFiDS_Spine): bool {.noSideEffect, importcpp: "IsClosed",
                                       header: "ChFiDS_Spine.hxx".}
proc firstParameter*(this: ChFiDS_Spine): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "ChFiDS_Spine.hxx".}
proc lastParameter*(this: ChFiDS_Spine): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "ChFiDS_Spine.hxx".}
proc setFirstParameter*(this: var ChFiDS_Spine; par: cfloat) {.
    importcpp: "SetFirstParameter", header: "ChFiDS_Spine.hxx".}
proc setLastParameter*(this: var ChFiDS_Spine; par: cfloat) {.
    importcpp: "SetLastParameter", header: "ChFiDS_Spine.hxx".}
proc firstParameter*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "ChFiDS_Spine.hxx".}
proc lastParameter*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "ChFiDS_Spine.hxx".}
proc length*(this: ChFiDS_Spine; indexSpine: cint): cfloat {.noSideEffect,
    importcpp: "Length", header: "ChFiDS_Spine.hxx".}
proc isPeriodic*(this: ChFiDS_Spine): bool {.noSideEffect, importcpp: "IsPeriodic",
    header: "ChFiDS_Spine.hxx".}
proc period*(this: ChFiDS_Spine): cfloat {.noSideEffect, importcpp: "Period",
                                       header: "ChFiDS_Spine.hxx".}
proc absc*(this: var ChFiDS_Spine; u: cfloat): cfloat {.importcpp: "Absc",
    header: "ChFiDS_Spine.hxx".}
proc absc*(this: var ChFiDS_Spine; u: cfloat; i: cint): cfloat {.importcpp: "Absc",
    header: "ChFiDS_Spine.hxx".}
proc parameter*(this: var ChFiDS_Spine; absC: cfloat; u: var cfloat;
               oriented: bool = true) {.importcpp: "Parameter",
                                    header: "ChFiDS_Spine.hxx".}
proc parameter*(this: var ChFiDS_Spine; index: cint; absC: cfloat; u: var cfloat;
               oriented: bool = true) {.importcpp: "Parameter",
                                    header: "ChFiDS_Spine.hxx".}
proc value*(this: var ChFiDS_Spine; absC: cfloat): Pnt {.importcpp: "Value",
    header: "ChFiDS_Spine.hxx".}
proc d0*(this: var ChFiDS_Spine; absC: cfloat; p: var Pnt) {.importcpp: "D0",
    header: "ChFiDS_Spine.hxx".}
proc d1*(this: var ChFiDS_Spine; absC: cfloat; p: var Pnt; v1: var Vec) {.importcpp: "D1",
    header: "ChFiDS_Spine.hxx".}
proc d2*(this: var ChFiDS_Spine; absC: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "D2", header: "ChFiDS_Spine.hxx".}
proc setCurrent*(this: var ChFiDS_Spine; index: cint) {.importcpp: "SetCurrent",
    header: "ChFiDS_Spine.hxx".}
proc currentElementarySpine*(this: var ChFiDS_Spine; index: cint): BRepAdaptorCurve {.
    importcpp: "CurrentElementarySpine", header: "ChFiDS_Spine.hxx".}
proc currentIndexOfElementarySpine*(this: ChFiDS_Spine): cint {.noSideEffect,
    importcpp: "CurrentIndexOfElementarySpine", header: "ChFiDS_Spine.hxx".}
proc getType*(this: ChFiDS_Spine): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ChFiDS_Spine.hxx".}
proc line*(this: ChFiDS_Spine): Lin {.noSideEffect, importcpp: "Line",
                                  header: "ChFiDS_Spine.hxx".}
proc circle*(this: ChFiDS_Spine): Circ {.noSideEffect, importcpp: "Circle",
                                     header: "ChFiDS_Spine.hxx".}
proc firstStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect,
    importcpp: "FirstStatus", header: "ChFiDS_Spine.hxx".}
proc lastStatus*(this: ChFiDS_Spine): ChFiDS_State {.noSideEffect,
    importcpp: "LastStatus", header: "ChFiDS_Spine.hxx".}
proc status*(this: ChFiDS_Spine; isFirst: bool): ChFiDS_State {.noSideEffect,
    importcpp: "Status", header: "ChFiDS_Spine.hxx".}
proc getTypeOfConcavity*(this: ChFiDS_Spine): ChFiDS_TypeOfConcavity {.noSideEffect,
    importcpp: "GetTypeOfConcavity", header: "ChFiDS_Spine.hxx".}
proc setStatus*(this: var ChFiDS_Spine; s: ChFiDS_State; isFirst: bool) {.
    importcpp: "SetStatus", header: "ChFiDS_Spine.hxx".}
proc setTypeOfConcavity*(this: var ChFiDS_Spine; theType: ChFiDS_TypeOfConcavity) {.
    importcpp: "SetTypeOfConcavity", header: "ChFiDS_Spine.hxx".}
proc isTangencyExtremity*(this: ChFiDS_Spine; isFirst: bool): bool {.noSideEffect,
    importcpp: "IsTangencyExtremity", header: "ChFiDS_Spine.hxx".}
proc setTangencyExtremity*(this: var ChFiDS_Spine; isTangency: bool; isFirst: bool) {.
    importcpp: "SetTangencyExtremity", header: "ChFiDS_Spine.hxx".}
proc absc*(this: ChFiDS_Spine; v: TopoDS_Vertex): cfloat {.noSideEffect,
    importcpp: "Absc", header: "ChFiDS_Spine.hxx".}
proc firstVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "ChFiDS_Spine.hxx".}
proc lastVertex*(this: ChFiDS_Spine): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "ChFiDS_Spine.hxx".}
proc setFirstTgt*(this: var ChFiDS_Spine; w: cfloat) {.importcpp: "SetFirstTgt",
    header: "ChFiDS_Spine.hxx".}
proc setLastTgt*(this: var ChFiDS_Spine; w: cfloat) {.importcpp: "SetLastTgt",
    header: "ChFiDS_Spine.hxx".}
proc hasFirstTgt*(this: ChFiDS_Spine): bool {.noSideEffect, importcpp: "HasFirstTgt",
    header: "ChFiDS_Spine.hxx".}
proc hasLastTgt*(this: ChFiDS_Spine): bool {.noSideEffect, importcpp: "HasLastTgt",
    header: "ChFiDS_Spine.hxx".}
proc setReference*(this: var ChFiDS_Spine; w: cfloat) {.importcpp: "SetReference",
    header: "ChFiDS_Spine.hxx".}
proc setReference*(this: var ChFiDS_Spine; i: cint) {.importcpp: "SetReference",
    header: "ChFiDS_Spine.hxx".}
proc index*(this: ChFiDS_Spine; w: cfloat; forward: bool = true): cint {.noSideEffect,
    importcpp: "Index", header: "ChFiDS_Spine.hxx".}
proc index*(this: ChFiDS_Spine; e: TopoDS_Edge): cint {.noSideEffect,
    importcpp: "Index", header: "ChFiDS_Spine.hxx".}
proc unsetReference*(this: var ChFiDS_Spine) {.importcpp: "UnsetReference",
    header: "ChFiDS_Spine.hxx".}
proc setErrorStatus*(this: var ChFiDS_Spine; state: ChFiDS_ErrorStatus) {.
    importcpp: "SetErrorStatus", header: "ChFiDS_Spine.hxx".}
proc errorStatus*(this: ChFiDS_Spine): ChFiDS_ErrorStatus {.noSideEffect,
    importcpp: "ErrorStatus", header: "ChFiDS_Spine.hxx".}
proc mode*(this: ChFiDS_Spine): ChFiDS_ChamfMode {.noSideEffect, importcpp: "Mode",
    header: "ChFiDS_Spine.hxx".}
type
  ChFiDS_SpinebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ChFiDS_Spine::get_type_name(@)",
                            header: "ChFiDS_Spine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ChFiDS_Spine::get_type_descriptor(@)", header: "ChFiDS_Spine.hxx".}
proc dynamicType*(this: ChFiDS_Spine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_Spine.hxx".}

























