##  Created on: 1995-05-12
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, ../Standard/Standard_Boolean

## ! This class detains the data which describe a Graph. A Graph
## ! has two lists, one for shared refs, one for sharing refs
## ! (the reverses). Each list comprises, for each Entity of the
## ! Model of the Graph, a list of Entities (shared or sharing).
## ! In fact, entities are identified by their numbers in the Model
## ! or Graph : this gives better performances.
## !
## ! A simple way to implement this is to instantiate a HArray1
## ! with a HSequenceOfInteger : each Entity Number designates a
## ! value, which is a Sequence (if it is null, it is considered as
## ! empty : this is a little optimisation).
## !
## ! This class gives a more efficient way to implement this.
## ! It has two lists (two arrays of integers), one to describe
## ! list (empty, one value given immediately, or negated index in
## ! the second list), one to store refs (pointed from the first
## ! list). This is much more efficient than a list of sequences,
## ! in terms of speed (especially for read) and of memory
## !
## ! An IntList can also be set to access data for a given entity
## ! number, it then acts as a single sequence
## !
## ! Remark that if an IntList is created from another one, it can
## ! be read, but if it is created without copying, it may not be
## ! edited

type
  Interface_IntList* {.importcpp: "Interface_IntList",
                      header: "Interface_IntList.hxx", bycopy.} = object ## ! Creates empty IntList.


proc constructInterface_IntList*(): Interface_IntList {.constructor,
    importcpp: "Interface_IntList(@)", header: "Interface_IntList.hxx".}
proc constructInterface_IntList*(nbe: Standard_Integer): Interface_IntList {.
    constructor, importcpp: "Interface_IntList(@)", header: "Interface_IntList.hxx".}
proc constructInterface_IntList*(other: Interface_IntList; copied: Standard_Boolean): Interface_IntList {.
    constructor, importcpp: "Interface_IntList(@)", header: "Interface_IntList.hxx".}
proc Initialize*(this: var Interface_IntList; nbe: Standard_Integer) {.
    importcpp: "Initialize", header: "Interface_IntList.hxx".}
proc Internals*(this: Interface_IntList; nbrefs: var Standard_Integer;
               ents: var handle[TColStd_HArray1OfInteger];
               refs: var handle[TColStd_HArray1OfInteger]) {.noSideEffect,
    importcpp: "Internals", header: "Interface_IntList.hxx".}
proc NbEntities*(this: Interface_IntList): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_IntList.hxx".}
proc SetNbEntities*(this: var Interface_IntList; nbe: Standard_Integer) {.
    importcpp: "SetNbEntities", header: "Interface_IntList.hxx".}
proc SetNumber*(this: var Interface_IntList; number: Standard_Integer) {.
    importcpp: "SetNumber", header: "Interface_IntList.hxx".}
proc Number*(this: Interface_IntList): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "Interface_IntList.hxx".}
proc List*(this: Interface_IntList; number: Standard_Integer;
          copied: Standard_Boolean = Standard_False): Interface_IntList {.
    noSideEffect, importcpp: "List", header: "Interface_IntList.hxx".}
proc SetRedefined*(this: var Interface_IntList; mode: Standard_Boolean) {.
    importcpp: "SetRedefined", header: "Interface_IntList.hxx".}
proc Reservate*(this: var Interface_IntList; count: Standard_Integer) {.
    importcpp: "Reservate", header: "Interface_IntList.hxx".}
proc Add*(this: var Interface_IntList; `ref`: Standard_Integer) {.importcpp: "Add",
    header: "Interface_IntList.hxx".}
proc Length*(this: Interface_IntList): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Interface_IntList.hxx".}
proc IsRedefined*(this: Interface_IntList; num: Standard_Integer = 0): Standard_Boolean {.
    noSideEffect, importcpp: "IsRedefined", header: "Interface_IntList.hxx".}
proc Value*(this: Interface_IntList; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "Interface_IntList.hxx".}
proc Remove*(this: var Interface_IntList; num: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "Interface_IntList.hxx".}
proc Clear*(this: var Interface_IntList) {.importcpp: "Clear",
                                       header: "Interface_IntList.hxx".}
proc AdjustSize*(this: var Interface_IntList; margin: Standard_Integer = 0) {.
    importcpp: "AdjustSize", header: "Interface_IntList.hxx".}