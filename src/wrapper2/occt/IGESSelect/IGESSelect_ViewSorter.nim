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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_IndexedMapOfTransient, ../TColStd/TColStd_SequenceOfInteger,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HSequenceOfTransient, ../Standard/Standard_Integer

discard "forward decl of IGESData_IGESModel"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of IGESSelect_ViewSorter"
discard "forward decl of IGESSelect_ViewSorter"
type
  Handle_IGESSelect_ViewSorter* = handle[IGESSelect_ViewSorter]

## ! Sorts IGES Entities on the views and drawings.
## ! In a first step, it splits a set of entities according the
## ! different views they are attached to.
## ! Then, packets according single views (+ drawing frames), or
## ! according drawings (which refer to the views) can be determined
## !
## ! It is a TShared, hence it can be a workomg field of a non-
## ! mutable object (a Dispatch for instance)

type
  IGESSelect_ViewSorter* {.importcpp: "IGESSelect_ViewSorter",
                          header: "IGESSelect_ViewSorter.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIGESSelect_ViewSorter*(): IGESSelect_ViewSorter {.constructor,
    importcpp: "IGESSelect_ViewSorter(@)", header: "IGESSelect_ViewSorter.hxx".}
proc SetModel*(this: var IGESSelect_ViewSorter; model: handle[IGESData_IGESModel]) {.
    importcpp: "SetModel", header: "IGESSelect_ViewSorter.hxx".}
proc Clear*(this: var IGESSelect_ViewSorter) {.importcpp: "Clear",
    header: "IGESSelect_ViewSorter.hxx".}
proc Add*(this: var IGESSelect_ViewSorter; ent: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Add", header: "IGESSelect_ViewSorter.hxx".}
proc AddEntity*(this: var IGESSelect_ViewSorter;
               igesent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "AddEntity", header: "IGESSelect_ViewSorter.hxx".}
proc AddList*(this: var IGESSelect_ViewSorter;
             list: handle[TColStd_HSequenceOfTransient]) {.importcpp: "AddList",
    header: "IGESSelect_ViewSorter.hxx".}
proc AddModel*(this: var IGESSelect_ViewSorter;
              model: handle[Interface_InterfaceModel]) {.importcpp: "AddModel",
    header: "IGESSelect_ViewSorter.hxx".}
proc NbEntities*(this: IGESSelect_ViewSorter): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "IGESSelect_ViewSorter.hxx".}
proc SortSingleViews*(this: var IGESSelect_ViewSorter; alsoframes: Standard_Boolean) {.
    importcpp: "SortSingleViews", header: "IGESSelect_ViewSorter.hxx".}
proc SortDrawings*(this: var IGESSelect_ViewSorter; G: Interface_Graph) {.
    importcpp: "SortDrawings", header: "IGESSelect_ViewSorter.hxx".}
proc NbSets*(this: IGESSelect_ViewSorter; final: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "NbSets", header: "IGESSelect_ViewSorter.hxx".}
proc SetItem*(this: IGESSelect_ViewSorter; num: Standard_Integer;
             final: Standard_Boolean): handle[IGESData_IGESEntity] {.noSideEffect,
    importcpp: "SetItem", header: "IGESSelect_ViewSorter.hxx".}
proc Sets*(this: IGESSelect_ViewSorter; final: Standard_Boolean): handle[
    IFSelect_PacketList] {.noSideEffect, importcpp: "Sets",
                          header: "IGESSelect_ViewSorter.hxx".}
type
  IGESSelect_ViewSorterbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESSelect_ViewSorter::get_type_name(@)",
                              header: "IGESSelect_ViewSorter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_ViewSorter::get_type_descriptor(@)",
    header: "IGESSelect_ViewSorter.hxx".}
proc DynamicType*(this: IGESSelect_ViewSorter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_ViewSorter.hxx".}