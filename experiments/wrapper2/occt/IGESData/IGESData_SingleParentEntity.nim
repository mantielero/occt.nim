##  Created on: 1992-10-21
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SingleParentEntity"
discard "forward decl of IGESData_SingleParentEntity"
type
  Handle_IGESData_SingleParentEntity* = handle[IGESData_SingleParentEntity]

## ! a SingleParentEntity is a kind of IGESEntity which can refer
## ! to a (Single) Parent, from Associativities list of an Entity
## ! a effective SingleParent definition entity must inherit it

type
  IGESData_SingleParentEntity* {.importcpp: "IGESData_SingleParentEntity",
                                header: "IGESData_SingleParentEntity.hxx", bycopy.} = object of IGESData_IGESEntity ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## the
                                                                                                             ## parent
                                                                                                             ## designated
                                                                                                             ## by
                                                                                                             ## the
                                                                                                             ## Entity,
                                                                                                             ## if
                                                                                                             ## only
                                                                                                             ## one
                                                                                                             ## !


proc SingleParent*(this: IGESData_SingleParentEntity): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "SingleParent",
    header: "IGESData_SingleParentEntity.hxx".}
proc NbChildren*(this: IGESData_SingleParentEntity): Standard_Integer {.
    noSideEffect, importcpp: "NbChildren",
    header: "IGESData_SingleParentEntity.hxx".}
proc Child*(this: IGESData_SingleParentEntity; num: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Child",
                          header: "IGESData_SingleParentEntity.hxx".}
type
  IGESData_SingleParentEntitybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESData_SingleParentEntity::get_type_name(@)",
                              header: "IGESData_SingleParentEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_SingleParentEntity::get_type_descriptor(@)",
    header: "IGESData_SingleParentEntity.hxx".}
proc DynamicType*(this: IGESData_SingleParentEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_SingleParentEntity.hxx".}