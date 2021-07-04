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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_MapOfTransient, ../Standard/Standard_Integer,
  IFSelect_SignatureList, ../TColStd/TColStd_HSequenceOfTransient,
  ../Standard/Standard_CString

discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_Selection"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of IFSelect_SignCounter"
type
  Handle_IFSelect_SignCounter* = handle[IFSelect_SignCounter]

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
  IFSelect_SignCounter* {.importcpp: "IFSelect_SignCounter",
                         header: "IFSelect_SignCounter.hxx", bycopy.} = object of IFSelect_SignatureList ##
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


proc constructIFSelect_SignCounter*(withmap: Standard_Boolean = Standard_True;
                                   withlist: Standard_Boolean = Standard_False): IFSelect_SignCounter {.
    constructor, importcpp: "IFSelect_SignCounter(@)",
    header: "IFSelect_SignCounter.hxx".}
proc constructIFSelect_SignCounter*(matcher: handle[IFSelect_Signature];
                                   withmap: Standard_Boolean = Standard_True;
                                   withlist: Standard_Boolean = Standard_False): IFSelect_SignCounter {.
    constructor, importcpp: "IFSelect_SignCounter(@)",
    header: "IFSelect_SignCounter.hxx".}
proc Signature*(this: IFSelect_SignCounter): handle[IFSelect_Signature] {.
    noSideEffect, importcpp: "Signature", header: "IFSelect_SignCounter.hxx".}
proc SetMap*(this: var IFSelect_SignCounter; withmap: Standard_Boolean) {.
    importcpp: "SetMap", header: "IFSelect_SignCounter.hxx".}
proc AddEntity*(this: var IFSelect_SignCounter; ent: handle[Standard_Transient];
               model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "AddEntity", header: "IFSelect_SignCounter.hxx".}
proc AddSign*(this: var IFSelect_SignCounter; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel]) {.importcpp: "AddSign",
    header: "IFSelect_SignCounter.hxx".}
proc AddList*(this: var IFSelect_SignCounter;
             list: handle[TColStd_HSequenceOfTransient];
             model: handle[Interface_InterfaceModel]) {.importcpp: "AddList",
    header: "IFSelect_SignCounter.hxx".}
proc AddWithGraph*(this: var IFSelect_SignCounter;
                  list: handle[TColStd_HSequenceOfTransient];
                  graph: Interface_Graph) {.importcpp: "AddWithGraph",
    header: "IFSelect_SignCounter.hxx".}
proc AddModel*(this: var IFSelect_SignCounter;
              model: handle[Interface_InterfaceModel]) {.importcpp: "AddModel",
    header: "IFSelect_SignCounter.hxx".}
proc AddFromSelection*(this: var IFSelect_SignCounter;
                      sel: handle[IFSelect_Selection]; G: Interface_Graph) {.
    importcpp: "AddFromSelection", header: "IFSelect_SignCounter.hxx".}
proc SetSelection*(this: var IFSelect_SignCounter; sel: handle[IFSelect_Selection]) {.
    importcpp: "SetSelection", header: "IFSelect_SignCounter.hxx".}
proc Selection*(this: IFSelect_SignCounter): handle[IFSelect_Selection] {.
    noSideEffect, importcpp: "Selection", header: "IFSelect_SignCounter.hxx".}
proc SetSelMode*(this: var IFSelect_SignCounter; selmode: Standard_Integer) {.
    importcpp: "SetSelMode", header: "IFSelect_SignCounter.hxx".}
proc SelMode*(this: IFSelect_SignCounter): Standard_Integer {.noSideEffect,
    importcpp: "SelMode", header: "IFSelect_SignCounter.hxx".}
proc ComputeSelected*(this: var IFSelect_SignCounter; G: Interface_Graph;
                     forced: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ComputeSelected", header: "IFSelect_SignCounter.hxx".}
proc Sign*(this: IFSelect_SignCounter; ent: handle[Standard_Transient];
          model: handle[Interface_InterfaceModel]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Sign",
                               header: "IFSelect_SignCounter.hxx".}
proc ComputedSign*(this: var IFSelect_SignCounter; ent: handle[Standard_Transient];
                  G: Interface_Graph): Standard_CString {.
    importcpp: "ComputedSign", header: "IFSelect_SignCounter.hxx".}
type
  IFSelect_SignCounterbase_type* = IFSelect_SignatureList

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignCounter::get_type_name(@)",
                              header: "IFSelect_SignCounter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignCounter::get_type_descriptor(@)",
    header: "IFSelect_SignCounter.hxx".}
proc DynamicType*(this: IFSelect_SignCounter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SignCounter.hxx".}