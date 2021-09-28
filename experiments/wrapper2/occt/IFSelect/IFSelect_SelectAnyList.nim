##  Created on: 1992-12-09
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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectAnyList"
discard "forward decl of IFSelect_SelectAnyList"
type
  HandleC1C1* = Handle[IFSelectSelectAnyList]

## ! A SelectAnyList kind Selection selects a List of an Entity, as
## ! well as this Entity contains some. A List contains sub-entities
## ! as one per Item, or several (for instance if an Entity binds
## ! couples of sub-entities, each item is one of these couples).
## ! Remark that only Entities are taken into account (neither
## ! Reals, nor Strings, etc...)
## !
## ! To define the list on which to work, SelectAnyList has two
## ! deferred methods : NbItems (which gives the length of the
## ! list), FillResult (which fills an EntityIterator). They are
## ! intended to get a List in an Entity of the required Type (and
## ! consider that list is empty if Entity has not required Type)
## !
## ! In addition, remark that some types of Entity define more than
## ! one list in each instance : a given sub-class of SelectAnyList
## ! must be attached to one list
## !
## ! SelectAnyList keeps or rejects a sub-set of the list,
## ! that is the Items of which rank in the list is in a given
## ! range (for instance form 2nd to 6th, etc...)
## ! Range is defined by two Integer values. In order to allow
## ! external control of them, these values are not directly
## ! defined as fields, but accessed through IntParams, that is,
## ! referenced as Transient (Handle) objects
## !
## ! Warning : the Input can be any kind of Selection, BUT its
## ! RootResult must have zero (empty) or one Entity maximum

type
  IFSelectSelectAnyList* {.importcpp: "IFSelect_SelectAnyList",
                          header: "IFSelect_SelectAnyList.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Keeps
                                                                                                   ## Input
                                                                                                   ## Entity,
                                                                                                   ## as
                                                                                                   ## having
                                                                                                   ## required
                                                                                                   ## type.
                                                                                                   ## It
                                                                                                   ## works
                                                                                                   ## by
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## keeping
                                                                                                   ## in
                                                                                                   ## <iter>,
                                                                                                   ## only
                                                                                                   ## suitable
                                                                                                   ## Entities
                                                                                                   ## (SelectType
                                                                                                   ## can
                                                                                                   ## be
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## used).
                                                                                                   ## Called
                                                                                                   ## by
                                                                                                   ## RootResult
                                                                                                   ## (which
                                                                                                   ## waits
                                                                                                   ## for
                                                                                                   ## ONE
                                                                                                   ## ENTITY
                                                                                                   ## MAX)


proc keepInputEntity*(this: IFSelectSelectAnyList;
                     iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "KeepInputEntity", header: "IFSelect_SelectAnyList.hxx".}
proc nbItems*(this: IFSelectSelectAnyList; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "NbItems", header: "IFSelect_SelectAnyList.hxx".}
proc setRange*(this: var IFSelectSelectAnyList; rankfrom: Handle[IFSelectIntParam];
              rankto: Handle[IFSelectIntParam]) {.importcpp: "SetRange",
    header: "IFSelect_SelectAnyList.hxx".}
proc setOne*(this: var IFSelectSelectAnyList; rank: Handle[IFSelectIntParam]) {.
    importcpp: "SetOne", header: "IFSelect_SelectAnyList.hxx".}
proc setFrom*(this: var IFSelectSelectAnyList; rankfrom: Handle[IFSelectIntParam]) {.
    importcpp: "SetFrom", header: "IFSelect_SelectAnyList.hxx".}
proc setUntil*(this: var IFSelectSelectAnyList; rankto: Handle[IFSelectIntParam]) {.
    importcpp: "SetUntil", header: "IFSelect_SelectAnyList.hxx".}
proc hasLower*(this: IFSelectSelectAnyList): bool {.noSideEffect,
    importcpp: "HasLower", header: "IFSelect_SelectAnyList.hxx".}
proc lower*(this: IFSelectSelectAnyList): Handle[IFSelectIntParam] {.noSideEffect,
    importcpp: "Lower", header: "IFSelect_SelectAnyList.hxx".}
proc lowerValue*(this: IFSelectSelectAnyList): cint {.noSideEffect,
    importcpp: "LowerValue", header: "IFSelect_SelectAnyList.hxx".}
proc hasUpper*(this: IFSelectSelectAnyList): bool {.noSideEffect,
    importcpp: "HasUpper", header: "IFSelect_SelectAnyList.hxx".}
proc upper*(this: IFSelectSelectAnyList): Handle[IFSelectIntParam] {.noSideEffect,
    importcpp: "Upper", header: "IFSelect_SelectAnyList.hxx".}
proc upperValue*(this: IFSelectSelectAnyList): cint {.noSideEffect,
    importcpp: "UpperValue", header: "IFSelect_SelectAnyList.hxx".}
proc rootResult*(this: IFSelectSelectAnyList; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectAnyList.hxx".}
proc fillResult*(this: IFSelectSelectAnyList; n1: cint; n2: cint;
                ent: Handle[StandardTransient]; res: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillResult", header: "IFSelect_SelectAnyList.hxx".}
proc label*(this: IFSelectSelectAnyList): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectAnyList.hxx".}
proc listLabel*(this: IFSelectSelectAnyList): TCollectionAsciiString {.noSideEffect,
    importcpp: "ListLabel", header: "IFSelect_SelectAnyList.hxx".}
type
  IFSelectSelectAnyListbaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectAnyList::get_type_name(@)",
                            header: "IFSelect_SelectAnyList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectAnyList::get_type_descriptor(@)",
    header: "IFSelect_SelectAnyList.hxx".}
proc dynamicType*(this: IFSelectSelectAnyList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectAnyList.hxx".}

























