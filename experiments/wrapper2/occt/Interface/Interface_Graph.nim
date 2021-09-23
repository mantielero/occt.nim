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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Interface_BitMap, Interface_InterfaceModel,
  ../TCollection/TCollection_HAsciiString, ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_HArray1OfListOfInteger,
  ../TColStd/TColStd_HSequenceOfTransient

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_GTool"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
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

type
  Interface_Graph* {.importcpp: "Interface_Graph", header: "Interface_Graph.hxx",
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


proc constructInterface_Graph*(amodel: handle[Interface_InterfaceModel];
                              lib: Interface_GeneralLib;
                              theModeStats: Standard_Boolean = Standard_True): Interface_Graph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterface_Graph*(amodel: handle[Interface_InterfaceModel];
                              protocol: handle[Interface_Protocol];
                              theModeStats: Standard_Boolean = Standard_True): Interface_Graph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterface_Graph*(amodel: handle[Interface_InterfaceModel];
                              gtool: handle[Interface_GTool];
                              theModeStats: Standard_Boolean = Standard_True): Interface_Graph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterface_Graph*(amodel: handle[Interface_InterfaceModel];
                              theModeStats: Standard_Boolean = Standard_True): Interface_Graph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc constructInterface_Graph*(agraph: Interface_Graph;
                              copied: Standard_Boolean = Standard_False): Interface_Graph {.
    constructor, importcpp: "Interface_Graph(@)", header: "Interface_Graph.hxx".}
proc Reset*(this: var Interface_Graph) {.importcpp: "Reset",
                                     header: "Interface_Graph.hxx".}
proc ResetStatus*(this: var Interface_Graph) {.importcpp: "ResetStatus",
    header: "Interface_Graph.hxx".}
proc Size*(this: Interface_Graph): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Interface_Graph.hxx".}
proc NbStatuses*(this: Interface_Graph): Standard_Integer {.noSideEffect,
    importcpp: "NbStatuses", header: "Interface_Graph.hxx".}
proc EntityNumber*(this: Interface_Graph; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "EntityNumber", header: "Interface_Graph.hxx".}
proc IsPresent*(this: Interface_Graph; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsPresent", header: "Interface_Graph.hxx".}
proc IsPresent*(this: Interface_Graph; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsPresent", header: "Interface_Graph.hxx".}
proc Entity*(this: Interface_Graph; num: Standard_Integer): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Entity", header: "Interface_Graph.hxx".}
proc Status*(this: Interface_Graph; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Status", header: "Interface_Graph.hxx".}
proc SetStatus*(this: var Interface_Graph; num: Standard_Integer;
               stat: Standard_Integer) {.importcpp: "SetStatus",
                                       header: "Interface_Graph.hxx".}
proc RemoveItem*(this: var Interface_Graph; num: Standard_Integer) {.
    importcpp: "RemoveItem", header: "Interface_Graph.hxx".}
proc ChangeStatus*(this: var Interface_Graph; oldstat: Standard_Integer;
                  newstat: Standard_Integer) {.importcpp: "ChangeStatus",
    header: "Interface_Graph.hxx".}
proc RemoveStatus*(this: var Interface_Graph; stat: Standard_Integer) {.
    importcpp: "RemoveStatus", header: "Interface_Graph.hxx".}
proc BitMap*(this: Interface_Graph): Interface_BitMap {.noSideEffect,
    importcpp: "BitMap", header: "Interface_Graph.hxx".}
proc CBitMap*(this: var Interface_Graph): var Interface_BitMap {.importcpp: "CBitMap",
    header: "Interface_Graph.hxx".}
proc Model*(this: Interface_Graph): handle[Interface_InterfaceModel] {.noSideEffect,
    importcpp: "Model", header: "Interface_Graph.hxx".}
proc GetFromModel*(this: var Interface_Graph) {.importcpp: "GetFromModel",
    header: "Interface_Graph.hxx".}
proc GetFromEntity*(this: var Interface_Graph; ent: handle[Standard_Transient];
                   shared: Standard_Boolean; newstat: Standard_Integer = 0) {.
    importcpp: "GetFromEntity", header: "Interface_Graph.hxx".}
proc GetFromEntity*(this: var Interface_Graph; ent: handle[Standard_Transient];
                   shared: Standard_Boolean; newstat: Standard_Integer;
                   overlapstat: Standard_Integer; cumul: Standard_Boolean) {.
    importcpp: "GetFromEntity", header: "Interface_Graph.hxx".}
proc GetFromIter*(this: var Interface_Graph; iter: Interface_EntityIterator;
                 newstat: Standard_Integer) {.importcpp: "GetFromIter",
    header: "Interface_Graph.hxx".}
proc GetFromIter*(this: var Interface_Graph; iter: Interface_EntityIterator;
                 newstat: Standard_Integer; overlapstat: Standard_Integer;
                 cumul: Standard_Boolean) {.importcpp: "GetFromIter",
    header: "Interface_Graph.hxx".}
proc GetFromGraph*(this: var Interface_Graph; agraph: Interface_Graph) {.
    importcpp: "GetFromGraph", header: "Interface_Graph.hxx".}
proc GetFromGraph*(this: var Interface_Graph; agraph: Interface_Graph;
                  stat: Standard_Integer) {.importcpp: "GetFromGraph",
    header: "Interface_Graph.hxx".}
proc HasShareErrors*(this: Interface_Graph; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "HasShareErrors", header: "Interface_Graph.hxx".}
proc GetShareds*(this: Interface_Graph; ent: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "GetShareds",
                                   header: "Interface_Graph.hxx".}
proc Shareds*(this: Interface_Graph; ent: handle[Standard_Transient]): Interface_EntityIterator {.
    noSideEffect, importcpp: "Shareds", header: "Interface_Graph.hxx".}
proc Sharings*(this: Interface_Graph; ent: handle[Standard_Transient]): Interface_EntityIterator {.
    noSideEffect, importcpp: "Sharings", header: "Interface_Graph.hxx".}
proc GetSharings*(this: Interface_Graph; ent: handle[Standard_Transient]): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "GetSharings",
                                   header: "Interface_Graph.hxx".}
proc TypedSharings*(this: Interface_Graph; ent: handle[Standard_Transient];
                   `type`: handle[Standard_Type]): Interface_EntityIterator {.
    noSideEffect, importcpp: "TypedSharings", header: "Interface_Graph.hxx".}
proc RootEntities*(this: Interface_Graph): Interface_EntityIterator {.noSideEffect,
    importcpp: "RootEntities", header: "Interface_Graph.hxx".}
proc Name*(this: Interface_Graph; ent: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "Interface_Graph.hxx".}
proc SharingTable*(this: Interface_Graph): handle[TColStd_HArray1OfListOfInteger] {.
    noSideEffect, importcpp: "SharingTable", header: "Interface_Graph.hxx".}
proc ModeStat*(this: Interface_Graph): Standard_Boolean {.noSideEffect,
    importcpp: "ModeStat", header: "Interface_Graph.hxx".}