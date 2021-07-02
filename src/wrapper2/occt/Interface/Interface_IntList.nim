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
  InterfaceIntList* {.importcpp: "Interface_IntList",
                     header: "Interface_IntList.hxx", bycopy.} = object ## ! Creates empty IntList.


proc constructInterfaceIntList*(): InterfaceIntList {.constructor,
    importcpp: "Interface_IntList(@)", header: "Interface_IntList.hxx".}
proc constructInterfaceIntList*(nbe: StandardInteger): InterfaceIntList {.
    constructor, importcpp: "Interface_IntList(@)", header: "Interface_IntList.hxx".}
proc constructInterfaceIntList*(other: InterfaceIntList; copied: StandardBoolean): InterfaceIntList {.
    constructor, importcpp: "Interface_IntList(@)", header: "Interface_IntList.hxx".}
proc initialize*(this: var InterfaceIntList; nbe: StandardInteger) {.
    importcpp: "Initialize", header: "Interface_IntList.hxx".}
proc internals*(this: InterfaceIntList; nbrefs: var StandardInteger;
               ents: var Handle[TColStdHArray1OfInteger];
               refs: var Handle[TColStdHArray1OfInteger]) {.noSideEffect,
    importcpp: "Internals", header: "Interface_IntList.hxx".}
proc nbEntities*(this: InterfaceIntList): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_IntList.hxx".}
proc setNbEntities*(this: var InterfaceIntList; nbe: StandardInteger) {.
    importcpp: "SetNbEntities", header: "Interface_IntList.hxx".}
proc setNumber*(this: var InterfaceIntList; number: StandardInteger) {.
    importcpp: "SetNumber", header: "Interface_IntList.hxx".}
proc number*(this: InterfaceIntList): StandardInteger {.noSideEffect,
    importcpp: "Number", header: "Interface_IntList.hxx".}
proc list*(this: InterfaceIntList; number: StandardInteger;
          copied: StandardBoolean = standardFalse): InterfaceIntList {.noSideEffect,
    importcpp: "List", header: "Interface_IntList.hxx".}
proc setRedefined*(this: var InterfaceIntList; mode: StandardBoolean) {.
    importcpp: "SetRedefined", header: "Interface_IntList.hxx".}
proc reservate*(this: var InterfaceIntList; count: StandardInteger) {.
    importcpp: "Reservate", header: "Interface_IntList.hxx".}
proc add*(this: var InterfaceIntList; `ref`: StandardInteger) {.importcpp: "Add",
    header: "Interface_IntList.hxx".}
proc length*(this: InterfaceIntList): StandardInteger {.noSideEffect,
    importcpp: "Length", header: "Interface_IntList.hxx".}
proc isRedefined*(this: InterfaceIntList; num: StandardInteger = 0): StandardBoolean {.
    noSideEffect, importcpp: "IsRedefined", header: "Interface_IntList.hxx".}
proc value*(this: InterfaceIntList; num: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Value", header: "Interface_IntList.hxx".}
proc remove*(this: var InterfaceIntList; num: StandardInteger): StandardBoolean {.
    importcpp: "Remove", header: "Interface_IntList.hxx".}
proc clear*(this: var InterfaceIntList) {.importcpp: "Clear",
                                      header: "Interface_IntList.hxx".}
proc adjustSize*(this: var InterfaceIntList; margin: StandardInteger = 0) {.
    importcpp: "AdjustSize", header: "Interface_IntList.hxx".}

