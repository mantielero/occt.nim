##  Created on: 1993-01-07
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectInList"
discard "forward decl of IFSelect_SelectInList"
type
  HandleIFSelectSelectInList* = Handle[IFSelectSelectInList]

## ! A SelectInList kind Selection selects a List of an Entity,
## ! which is composed of single Entities
## ! To know the list on which to work, SelectInList has two
## ! deferred methods : NbItems (inherited from SelectAnyList) and
## ! ListedEntity (which gives an item as an Entity) which must be
## ! defined to get a List in an Entity of the required Type (and
## ! consider that list is empty if Entity has not required Type)
## !
## ! As for SelectAnyList, if a type of Entity defines several
## ! lists, a given sub-class of SelectInList is attached on one

type
  IFSelectSelectInList* {.importcpp: "IFSelect_SelectInList",
                         header: "IFSelect_SelectInList.hxx", bycopy.} = object of IFSelectSelectAnyList ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## an
                                                                                                  ## Entity,
                                                                                                  ## given
                                                                                                  ## its
                                                                                                  ## rank
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## list


proc listedEntity*(this: IFSelectSelectInList; num: int;
                  ent: Handle[StandardTransient]): Handle[StandardTransient] {.
    noSideEffect, importcpp: "ListedEntity", header: "IFSelect_SelectInList.hxx".}
proc fillResult*(this: IFSelectSelectInList; n1: int; n2: int;
                ent: Handle[StandardTransient];
                result: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillResult", header: "IFSelect_SelectInList.hxx".}
type
  IFSelectSelectInListbaseType* = IFSelectSelectAnyList

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectInList::get_type_name(@)",
                            header: "IFSelect_SelectInList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectInList::get_type_descriptor(@)",
    header: "IFSelect_SelectInList.hxx".}
proc dynamicType*(this: IFSelectSelectInList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectInList.hxx".}
