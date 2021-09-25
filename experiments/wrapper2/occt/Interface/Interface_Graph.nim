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

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GTool"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
# when defined(Status):
#   discard
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

type
  InterfaceGraph* {.importcpp: "Interface_Graph", header: "Interface_Graph.hxx",
                   bycopy.} = object ## ! Creates an empty graph, ready to receive Entities from amodel
                                  ## ! Note that this way of Creation allows <me> to verify that
                                  ## ! Entities to work with are contained in <amodel>
                                  ## ! Basic Shared and Sharing lists are obtained from a General
                                  ## ! Services Library, given directly as an argument
                                  ## ! Initialize statuses and flags
                                  ## ! Performs the Evaluation of the Graph, from an initial Library,
                                  ## ! either defined through a Protocol, or given dierctly
                                  ## ! Called by the non-empty Constructors
                                  ## !
                                  ## ! Normally, gtool suffices. But if a Graph is created from a
                                  ## ! GeneralLib directly, it cannot be used
                                  ## ! If <gtool> is defined, it has priority


proc constructInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                             lib: InterfaceGeneralLib; theModeStats: bool = true): InterfaceGraph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                             protocol: Handle[InterfaceProtocol];
                             theModeStats: bool = true): InterfaceGraph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                             gtool: Handle[InterfaceGTool];
                             theModeStats: bool = true): InterfaceGraph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterfaceGraph*(amodel: Handle[InterfaceInterfaceModel];
                             theModeStats: bool = true): InterfaceGraph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterfaceGraph*(agraph: InterfaceGraph; copied: bool = false): InterfaceGraph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc reset*(this: var InterfaceGraph) {.importcpp: "Reset",
                                    header: "Interface_Graph.hxx".}
proc resetStatus*(this: var InterfaceGraph) {.importcpp: "ResetStatus",
    header: "Interface_Graph.hxx".}
proc size*(this: InterfaceGraph): int {.noSideEffect, importcpp: "Size",
                                    header: "Interface_Graph.hxx".}
proc nbStatuses*(this: InterfaceGraph): int {.noSideEffect, importcpp: "NbStatuses",
    header: "Interface_Graph.hxx".}
proc entityNumber*(this: InterfaceGraph; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "EntityNumber", header: "Interface_Graph.hxx".}
proc isPresent*(this: InterfaceGraph; num: int): bool {.noSideEffect,
    importcpp: "IsPresent", header: "Interface_Graph.hxx".}
proc isPresent*(this: InterfaceGraph; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "IsPresent", header: "Interface_Graph.hxx".}
proc entity*(this: InterfaceGraph; num: int): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Entity", header: "Interface_Graph.hxx".}
proc status*(this: InterfaceGraph; num: int): int {.noSideEffect, importcpp: "Status",
    header: "Interface_Graph.hxx".}
proc setStatus*(this: var InterfaceGraph; num: int; stat: int) {.importcpp: "SetStatus",
    header: "Interface_Graph.hxx".}
proc removeItem*(this: var InterfaceGraph; num: int) {.importcpp: "RemoveItem",
    header: "Interface_Graph.hxx".}
proc changeStatus*(this: var InterfaceGraph; oldstat: int; newstat: int) {.
    importcpp: "ChangeStatus", header: "Interface_Graph.hxx".}
proc removeStatus*(this: var InterfaceGraph; stat: int) {.importcpp: "RemoveStatus",
    header: "Interface_Graph.hxx".}
proc bitMap*(this: InterfaceGraph): InterfaceBitMap {.noSideEffect,
    importcpp: "BitMap", header: "Interface_Graph.hxx".}
proc cBitMap*(this: var InterfaceGraph): var InterfaceBitMap {.importcpp: "CBitMap",
    header: "Interface_Graph.hxx".}
proc model*(this: InterfaceGraph): Handle[InterfaceInterfaceModel] {.noSideEffect,
    importcpp: "Model", header: "Interface_Graph.hxx".}
proc getFromModel*(this: var InterfaceGraph) {.importcpp: "GetFromModel",
    header: "Interface_Graph.hxx".}
proc getFromEntity*(this: var InterfaceGraph; ent: Handle[StandardTransient];
                   shared: bool; newstat: int = 0) {.importcpp: "GetFromEntity",
    header: "Interface_Graph.hxx".}
proc getFromEntity*(this: var InterfaceGraph; ent: Handle[StandardTransient];
                   shared: bool; newstat: int; overlapstat: int; cumul: bool) {.
    importcpp: "GetFromEntity", header: "Interface_Graph.hxx".}
proc getFromIter*(this: var InterfaceGraph; iter: InterfaceEntityIterator;
                 newstat: int) {.importcpp: "GetFromIter",
                               header: "Interface_Graph.hxx".}
proc getFromIter*(this: var InterfaceGraph; iter: InterfaceEntityIterator;
                 newstat: int; overlapstat: int; cumul: bool) {.
    importcpp: "GetFromIter", header: "Interface_Graph.hxx".}
proc getFromGraph*(this: var InterfaceGraph; agraph: InterfaceGraph) {.
    importcpp: "GetFromGraph", header: "Interface_Graph.hxx".}
proc getFromGraph*(this: var InterfaceGraph; agraph: InterfaceGraph; stat: int) {.
    importcpp: "GetFromGraph", header: "Interface_Graph.hxx".}
proc hasShareErrors*(this: InterfaceGraph; ent: Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "HasShareErrors", header: "Interface_Graph.hxx".}
proc getShareds*(this: InterfaceGraph; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "GetShareds",
                                  header: "Interface_Graph.hxx".}
proc shareds*(this: InterfaceGraph; ent: Handle[StandardTransient]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Shareds", header: "Interface_Graph.hxx".}
proc sharings*(this: InterfaceGraph; ent: Handle[StandardTransient]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Sharings", header: "Interface_Graph.hxx".}
proc getSharings*(this: InterfaceGraph; ent: Handle[StandardTransient]): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "GetSharings",
                                  header: "Interface_Graph.hxx".}
proc typedSharings*(this: InterfaceGraph; ent: Handle[StandardTransient];
                   `type`: Handle[StandardType]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "TypedSharings", header: "Interface_Graph.hxx".}
proc rootEntities*(this: InterfaceGraph): InterfaceEntityIterator {.noSideEffect,
    importcpp: "RootEntities", header: "Interface_Graph.hxx".}
proc name*(this: InterfaceGraph; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "Interface_Graph.hxx".}
proc sharingTable*(this: InterfaceGraph): Handle[TColStdHArray1OfListOfInteger] {.
    noSideEffect, importcpp: "SharingTable", header: "Interface_Graph.hxx".}
proc modeStat*(this: InterfaceGraph): bool {.noSideEffect, importcpp: "ModeStat",
    header: "Interface_Graph.hxx".}
