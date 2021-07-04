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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectAnyList,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectInList"
discard "forward decl of IFSelect_SelectInList"
type
  Handle_IFSelect_SelectInList* = handle[IFSelect_SelectInList]

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
  IFSelect_SelectInList* {.importcpp: "IFSelect_SelectInList",
                          header: "IFSelect_SelectInList.hxx", bycopy.} = object of IFSelect_SelectAnyList ##
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


proc ListedEntity*(this: IFSelect_SelectInList; num: Standard_Integer;
                  ent: handle[Standard_Transient]): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ListedEntity", header: "IFSelect_SelectInList.hxx".}
proc FillResult*(this: IFSelect_SelectInList; n1: Standard_Integer;
                n2: Standard_Integer; ent: handle[Standard_Transient];
                result: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillResult", header: "IFSelect_SelectInList.hxx".}
type
  IFSelect_SelectInListbase_type* = IFSelect_SelectAnyList

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectInList::get_type_name(@)",
                              header: "IFSelect_SelectInList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectInList::get_type_descriptor(@)",
    header: "IFSelect_SelectInList.hxx".}
proc DynamicType*(this: IFSelect_SelectInList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectInList.hxx".}