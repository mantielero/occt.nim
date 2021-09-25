##  Created on: 1994-05-31
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of IGESSelect_ViewSorter"
discard "forward decl of IGESSelect_ViewSorter"
type
  HandleIGESSelectViewSorter* = Handle[IGESSelectViewSorter]

## ! Sorts IGES Entities on the views and drawings.
## ! In a first step, it splits a set of entities according the
## ! different views they are attached to.
## ! Then, packets according single views (+ drawing frames), or
## ! according drawings (which refer to the views) can be determined
## !
## ! It is a TShared, hence it can be a workomg field of a non-
## ! mutable object (a Dispatch for instance)

type
  IGESSelectViewSorter* {.importcpp: "IGESSelect_ViewSorter",
                         header: "IGESSelect_ViewSorter.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## ViewSorter,
                                                                                              ## empty.
                                                                                              ## SetModel
                                                                                              ## remains
                                                                                              ## to
                                                                                              ## be
                                                                                              ## called


proc constructIGESSelectViewSorter*(): IGESSelectViewSorter {.constructor,
    importcpp: "IGESSelect_ViewSorter(@)", header: "IGESSelect_ViewSorter.hxx".}
proc setModel*(this: var IGESSelectViewSorter; model: Handle[IGESDataIGESModel]) {.
    importcpp: "SetModel", header: "IGESSelect_ViewSorter.hxx".}
proc clear*(this: var IGESSelectViewSorter) {.importcpp: "Clear",
    header: "IGESSelect_ViewSorter.hxx".}
proc add*(this: var IGESSelectViewSorter; ent: Handle[StandardTransient]): bool {.
    importcpp: "Add", header: "IGESSelect_ViewSorter.hxx".}
proc addEntity*(this: var IGESSelectViewSorter; igesent: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "AddEntity", header: "IGESSelect_ViewSorter.hxx".}
proc addList*(this: var IGESSelectViewSorter;
             list: Handle[TColStdHSequenceOfTransient]) {.importcpp: "AddList",
    header: "IGESSelect_ViewSorter.hxx".}
proc addModel*(this: var IGESSelectViewSorter;
              model: Handle[InterfaceInterfaceModel]) {.importcpp: "AddModel",
    header: "IGESSelect_ViewSorter.hxx".}
proc nbEntities*(this: IGESSelectViewSorter): int {.noSideEffect,
    importcpp: "NbEntities", header: "IGESSelect_ViewSorter.hxx".}
proc sortSingleViews*(this: var IGESSelectViewSorter; alsoframes: bool) {.
    importcpp: "SortSingleViews", header: "IGESSelect_ViewSorter.hxx".}
proc sortDrawings*(this: var IGESSelectViewSorter; g: InterfaceGraph) {.
    importcpp: "SortDrawings", header: "IGESSelect_ViewSorter.hxx".}
proc nbSets*(this: IGESSelectViewSorter; final: bool): int {.noSideEffect,
    importcpp: "NbSets", header: "IGESSelect_ViewSorter.hxx".}
proc setItem*(this: IGESSelectViewSorter; num: int; final: bool): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "SetItem",
                         header: "IGESSelect_ViewSorter.hxx".}
proc sets*(this: IGESSelectViewSorter; final: bool): Handle[IFSelectPacketList] {.
    noSideEffect, importcpp: "Sets", header: "IGESSelect_ViewSorter.hxx".}
type
  IGESSelectViewSorterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESSelect_ViewSorter::get_type_name(@)",
                            header: "IGESSelect_ViewSorter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_ViewSorter::get_type_descriptor(@)",
    header: "IGESSelect_ViewSorter.hxx".}
proc dynamicType*(this: IGESSelectViewSorter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_ViewSorter.hxx".}
