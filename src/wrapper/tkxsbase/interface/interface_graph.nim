import interface_types

import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types




##  Created on: 1992-09-22
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

when defined(Status):
  discard
## ! Gives basic data structure for operating and storing
## ! graph results (usage is normally internal)
## ! Entities are Mapped according their Number in the Model
## !
## ! Each Entity from the Model can be known as "Present" or
## ! not; if it is, it is Mapped with a Status : an Integer
## ! which can be used according to needs of each algorithm
## ! In addition, the Graph brings a BitMap which can be used
## ! by any caller
## !
## ! Also, it is bound with two lists : a list of Shared
## ! Entities (in fact, their Numbers in the Model) which is
## ! filled by a ShareTool, and a list of Sharing Entities,
## ! computed by deduction from the Shared Lists
## !
## ! Moreover, it is possible to redefine the list of Entities
## ! Shared by an Entity (instead of standard answer by general
## ! service Shareds) : this new list can be empty; it can
## ! be changed or reset (i.e. to come back to standard answer)



proc newInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                       lib: InterfaceGeneralLib; theModeStats: bool = true): InterfaceGraph {.
    cdecl, constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc newInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                       protocol: Handle[InterfaceProtocol];
                       theModeStats: bool = true): InterfaceGraph {.cdecl,
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc newInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                       gtool: Handle[InterfaceGTool]; theModeStats: bool = true): InterfaceGraph {.
    cdecl, constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc newInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                       theModeStats: bool = true): InterfaceGraph {.cdecl,
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc newInterfaceGraph*(agraph: InterfaceGraph; copied: bool = false): InterfaceGraph {.
    cdecl, constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc reset*(this: var InterfaceGraph) {.cdecl, importcpp: "Reset", header: "Interface_Graph.hxx".}
proc resetStatus*(this: var InterfaceGraph) {.cdecl, importcpp: "ResetStatus",
    header: "Interface_Graph.hxx".}
proc size*(this: InterfaceGraph): cint {.noSideEffect, cdecl, importcpp: "Size",
                                     header: "Interface_Graph.hxx".}
proc nbStatuses*(this: InterfaceGraph): cint {.noSideEffect, cdecl,
    importcpp: "NbStatuses", header: "Interface_Graph.hxx".}
proc entityNumber*(this: InterfaceGraph; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "EntityNumber", header: "Interface_Graph.hxx".}
proc isPresent*(this: InterfaceGraph; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsPresent", header: "Interface_Graph.hxx".}
proc isPresent*(this: InterfaceGraph; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "IsPresent", header: "Interface_Graph.hxx".}
proc entity*(this: InterfaceGraph; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Entity", header: "Interface_Graph.hxx".}
proc status*(this: InterfaceGraph; num: cint): cint {.noSideEffect, cdecl,
    importcpp: "Status", header: "Interface_Graph.hxx".}
proc setStatus*(this: var InterfaceGraph; num: cint; stat: cint) {.cdecl,
    importcpp: "SetStatus", header: "Interface_Graph.hxx".}
proc removeItem*(this: var InterfaceGraph; num: cint) {.cdecl, importcpp: "RemoveItem",
    header: "Interface_Graph.hxx".}
proc changeStatus*(this: var InterfaceGraph; oldstat: cint; newstat: cint) {.cdecl,
    importcpp: "ChangeStatus", header: "Interface_Graph.hxx".}
proc removeStatus*(this: var InterfaceGraph; stat: cint) {.cdecl,
    importcpp: "RemoveStatus", header: "Interface_Graph.hxx".}
proc bitMap*(this: InterfaceGraph): InterfaceBitMap {.noSideEffect, cdecl,
    importcpp: "BitMap", header: "Interface_Graph.hxx".}
proc cBitMap*(this: var InterfaceGraph): var InterfaceBitMap {.cdecl,
    importcpp: "CBitMap", header: "Interface_Graph.hxx".}
proc model*(this: InterfaceGraph): Handle[InterfaceInterfaceModel] {.noSideEffect,
    cdecl, importcpp: "Model", header: "Interface_Graph.hxx".}
proc getFromModel*(this: var InterfaceGraph) {.cdecl, importcpp: "GetFromModel",
    header: "Interface_Graph.hxx".}
proc getFromEntity*(this: var InterfaceGraph; ent: Handle[StandardTransient];
                   shared: bool; newstat: cint = 0) {.cdecl,
    importcpp: "GetFromEntity", header: "Interface_Graph.hxx".}
proc getFromEntity*(this: var InterfaceGraph; ent: Handle[StandardTransient];
                   shared: bool; newstat: cint; overlapstat: cint; cumul: bool) {.cdecl,
    importcpp: "GetFromEntity", header: "Interface_Graph.hxx".}
proc getFromIter*(this: var InterfaceGraph; iter: InterfaceEntityIterator;
                 newstat: cint) {.cdecl, importcpp: "GetFromIter", header: "Interface_Graph.hxx".}
proc getFromIter*(this: var InterfaceGraph; iter: InterfaceEntityIterator;
                 newstat: cint; overlapstat: cint; cumul: bool) {.cdecl,
    importcpp: "GetFromIter", header: "Interface_Graph.hxx".}
proc getFromGraph*(this: var InterfaceGraph; agraph: InterfaceGraph) {.cdecl,
    importcpp: "GetFromGraph", header: "Interface_Graph.hxx".}
proc getFromGraph*(this: var InterfaceGraph; agraph: InterfaceGraph; stat: cint) {.
    cdecl, importcpp: "GetFromGraph", header: "Interface_Graph.hxx".}
proc hasShareErrors*(this: InterfaceGraph; ent: Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "HasShareErrors", header: "Interface_Graph.hxx".}
proc getShareds*(this: InterfaceGraph; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "GetShareds",
                                  header: "Interface_Graph.hxx".}
proc shareds*(this: InterfaceGraph; ent: Handle[StandardTransient]): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Shareds", header: "Interface_Graph.hxx".}
proc sharings*(this: InterfaceGraph; ent: Handle[StandardTransient]): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Sharings", header: "Interface_Graph.hxx".}
proc getSharings*(this: InterfaceGraph; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "GetSharings",
                                  header: "Interface_Graph.hxx".}
proc typedSharings*(this: InterfaceGraph; ent: Handle[StandardTransient];
                   `type`: Handle[StandardType]): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "TypedSharings", header: "Interface_Graph.hxx".}
proc rootEntities*(this: InterfaceGraph): InterfaceEntityIterator {.noSideEffect,
    cdecl, importcpp: "RootEntities", header: "Interface_Graph.hxx".}
proc name*(this: InterfaceGraph; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Name",
                              header: "Interface_Graph.hxx".}
proc sharingTable*(this: InterfaceGraph): Handle[TColStdHArray1OfListOfInteger] {.
    noSideEffect, cdecl, importcpp: "SharingTable", header: "Interface_Graph.hxx".}
proc modeStat*(this: InterfaceGraph): bool {.noSideEffect, cdecl,
    importcpp: "ModeStat", header: "Interface_Graph.hxx".}


