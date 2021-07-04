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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectDeduct,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

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
  Handle_IFSelect_SelectAnyList* = handle[IFSelect_SelectAnyList]

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
  IFSelect_SelectAnyList* {.importcpp: "IFSelect_SelectAnyList",
                           header: "IFSelect_SelectAnyList.hxx", bycopy.} = object of IFSelect_SelectDeduct ##
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


proc KeepInputEntity*(this: IFSelect_SelectAnyList;
                     iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "KeepInputEntity", header: "IFSelect_SelectAnyList.hxx".}
proc NbItems*(this: IFSelect_SelectAnyList; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "NbItems", header: "IFSelect_SelectAnyList.hxx".}
proc SetRange*(this: var IFSelect_SelectAnyList;
              rankfrom: handle[IFSelect_IntParam];
              rankto: handle[IFSelect_IntParam]) {.importcpp: "SetRange",
    header: "IFSelect_SelectAnyList.hxx".}
proc SetOne*(this: var IFSelect_SelectAnyList; rank: handle[IFSelect_IntParam]) {.
    importcpp: "SetOne", header: "IFSelect_SelectAnyList.hxx".}
proc SetFrom*(this: var IFSelect_SelectAnyList; rankfrom: handle[IFSelect_IntParam]) {.
    importcpp: "SetFrom", header: "IFSelect_SelectAnyList.hxx".}
proc SetUntil*(this: var IFSelect_SelectAnyList; rankto: handle[IFSelect_IntParam]) {.
    importcpp: "SetUntil", header: "IFSelect_SelectAnyList.hxx".}
proc HasLower*(this: IFSelect_SelectAnyList): Standard_Boolean {.noSideEffect,
    importcpp: "HasLower", header: "IFSelect_SelectAnyList.hxx".}
proc Lower*(this: IFSelect_SelectAnyList): handle[IFSelect_IntParam] {.noSideEffect,
    importcpp: "Lower", header: "IFSelect_SelectAnyList.hxx".}
proc LowerValue*(this: IFSelect_SelectAnyList): Standard_Integer {.noSideEffect,
    importcpp: "LowerValue", header: "IFSelect_SelectAnyList.hxx".}
proc HasUpper*(this: IFSelect_SelectAnyList): Standard_Boolean {.noSideEffect,
    importcpp: "HasUpper", header: "IFSelect_SelectAnyList.hxx".}
proc Upper*(this: IFSelect_SelectAnyList): handle[IFSelect_IntParam] {.noSideEffect,
    importcpp: "Upper", header: "IFSelect_SelectAnyList.hxx".}
proc UpperValue*(this: IFSelect_SelectAnyList): Standard_Integer {.noSideEffect,
    importcpp: "UpperValue", header: "IFSelect_SelectAnyList.hxx".}
proc RootResult*(this: IFSelect_SelectAnyList; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectAnyList.hxx".}
proc FillResult*(this: IFSelect_SelectAnyList; n1: Standard_Integer;
                n2: Standard_Integer; ent: handle[Standard_Transient];
                res: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillResult", header: "IFSelect_SelectAnyList.hxx".}
proc Label*(this: IFSelect_SelectAnyList): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectAnyList.hxx".}
proc ListLabel*(this: IFSelect_SelectAnyList): TCollection_AsciiString {.
    noSideEffect, importcpp: "ListLabel", header: "IFSelect_SelectAnyList.hxx".}
type
  IFSelect_SelectAnyListbase_type* = IFSelect_SelectDeduct

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectAnyList::get_type_name(@)",
                              header: "IFSelect_SelectAnyList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectAnyList::get_type_descriptor(@)",
    header: "IFSelect_SelectAnyList.hxx".}
proc DynamicType*(this: IFSelect_SelectAnyList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectAnyList.hxx".}