##  Created on: 1994-11-07
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

discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_Selection"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of IFSelect_SignCounter"
type
  HandleIFSelectSignCounter* = Handle[IFSelectSignCounter]

## ! SignCounter gives the frame to count signatures associated
## ! with entities, deducted from them. Ex.: their Dynamic Type.
## !
## ! It can sort a set of Entities according a signature, i.e. :
## ! - list of different values found for this Signature
## ! - for each one, count and list of entities
## ! Results are returned as a SignatureList, which can be queried
## ! on the count (list of strings, count per signature, or list of
## ! entities per signature)
## !
## ! A SignCounter can be filled, either directly from lists, or
## ! from the result of a Selection : hence, its content can be
## ! automatically recomputed as desired
## !
## ! SignCounter works by using a Signature in its method AddSign
## !
## ! Methods can be redefined to, either
## ! - directly compute the value without a Signature
## ! - compute the value in the context of a Graph

type
  IFSelectSignCounter* {.importcpp: "IFSelect_SignCounter",
                        header: "IFSelect_SignCounter.hxx", bycopy.} = object of IFSelectSignatureList ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SignCounter,
                                                                                                ## without
                                                                                                ## proper
                                                                                                ## Signature
                                                                                                ##
                                                                                                ## !
                                                                                                ## If
                                                                                                ## <withmap>
                                                                                                ## is
                                                                                                ## True
                                                                                                ## (default),
                                                                                                ## added
                                                                                                ## entities
                                                                                                ## are
                                                                                                ## counted
                                                                                                ##
                                                                                                ## !
                                                                                                ## only
                                                                                                ## if
                                                                                                ## they
                                                                                                ## are
                                                                                                ## not
                                                                                                ## yet
                                                                                                ## recorded
                                                                                                ## in
                                                                                                ## the
                                                                                                ## map
                                                                                                ##
                                                                                                ## !
                                                                                                ## Map
                                                                                                ## control
                                                                                                ## can
                                                                                                ## be
                                                                                                ## set
                                                                                                ## off
                                                                                                ## if
                                                                                                ## the
                                                                                                ## input
                                                                                                ## garantees
                                                                                                ## uniqueness
                                                                                                ##
                                                                                                ## !
                                                                                                ## of
                                                                                                ## data
                                                                                                ##
                                                                                                ## !
                                                                                                ## <withlist>
                                                                                                ## is
                                                                                                ## transmitted
                                                                                                ## to
                                                                                                ## SignatureList
                                                                                                ## (option
                                                                                                ## to
                                                                                                ## list
                                                                                                ##
                                                                                                ## !
                                                                                                ## entities,
                                                                                                ## not
                                                                                                ## only
                                                                                                ## to
                                                                                                ## count
                                                                                                ## them).


proc constructIFSelectSignCounter*(withmap: bool = true; withlist: bool = false): IFSelectSignCounter {.
    constructor, importcpp: "IFSelect_SignCounter(@)",
    header: "IFSelect_SignCounter.hxx".}
proc constructIFSelectSignCounter*(matcher: Handle[IFSelectSignature];
                                  withmap: bool = true; withlist: bool = false): IFSelectSignCounter {.
    constructor, importcpp: "IFSelect_SignCounter(@)",
    header: "IFSelect_SignCounter.hxx".}
proc signature*(this: IFSelectSignCounter): Handle[IFSelectSignature] {.
    noSideEffect, importcpp: "Signature", header: "IFSelect_SignCounter.hxx".}
proc setMap*(this: var IFSelectSignCounter; withmap: bool) {.importcpp: "SetMap",
    header: "IFSelect_SignCounter.hxx".}
proc addEntity*(this: var IFSelectSignCounter; ent: Handle[StandardTransient];
               model: Handle[InterfaceInterfaceModel]): bool {.
    importcpp: "AddEntity", header: "IFSelect_SignCounter.hxx".}
proc addSign*(this: var IFSelectSignCounter; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]) {.importcpp: "AddSign",
    header: "IFSelect_SignCounter.hxx".}
proc addList*(this: var IFSelectSignCounter;
             list: Handle[TColStdHSequenceOfTransient];
             model: Handle[InterfaceInterfaceModel]) {.importcpp: "AddList",
    header: "IFSelect_SignCounter.hxx".}
proc addWithGraph*(this: var IFSelectSignCounter;
                  list: Handle[TColStdHSequenceOfTransient]; graph: InterfaceGraph) {.
    importcpp: "AddWithGraph", header: "IFSelect_SignCounter.hxx".}
proc addModel*(this: var IFSelectSignCounter; model: Handle[InterfaceInterfaceModel]) {.
    importcpp: "AddModel", header: "IFSelect_SignCounter.hxx".}
proc addFromSelection*(this: var IFSelectSignCounter;
                      sel: Handle[IFSelectSelection]; g: InterfaceGraph) {.
    importcpp: "AddFromSelection", header: "IFSelect_SignCounter.hxx".}
proc setSelection*(this: var IFSelectSignCounter; sel: Handle[IFSelectSelection]) {.
    importcpp: "SetSelection", header: "IFSelect_SignCounter.hxx".}
proc selection*(this: IFSelectSignCounter): Handle[IFSelectSelection] {.
    noSideEffect, importcpp: "Selection", header: "IFSelect_SignCounter.hxx".}
proc setSelMode*(this: var IFSelectSignCounter; selmode: int) {.
    importcpp: "SetSelMode", header: "IFSelect_SignCounter.hxx".}
proc selMode*(this: IFSelectSignCounter): int {.noSideEffect, importcpp: "SelMode",
    header: "IFSelect_SignCounter.hxx".}
proc computeSelected*(this: var IFSelectSignCounter; g: InterfaceGraph;
                     forced: bool = false): bool {.importcpp: "ComputeSelected",
    header: "IFSelect_SignCounter.hxx".}
proc sign*(this: IFSelectSignCounter; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Sign", header: "IFSelect_SignCounter.hxx".}
proc computedSign*(this: var IFSelectSignCounter; ent: Handle[StandardTransient];
                  g: InterfaceGraph): StandardCString {.importcpp: "ComputedSign",
    header: "IFSelect_SignCounter.hxx".}
type
  IFSelectSignCounterbaseType* = IFSelectSignatureList

proc getTypeName*(): cstring {.importcpp: "IFSelect_SignCounter::get_type_name(@)",
                            header: "IFSelect_SignCounter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SignCounter::get_type_descriptor(@)",
    header: "IFSelect_SignCounter.hxx".}
proc dynamicType*(this: IFSelectSignCounter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SignCounter.hxx".}
