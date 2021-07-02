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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_SingleParentEntity"
discard "forward decl of IGESData_SingleParentEntity"
type
  HandleIGESDataSingleParentEntity* = Handle[IGESDataSingleParentEntity]

## ! a SingleParentEntity is a kind of IGESEntity which can refer
## ! to a (Single) Parent, from Associativities list of an Entity
## ! a effective SingleParent definition entity must inherit it

type
  IGESDataSingleParentEntity* {.importcpp: "IGESData_SingleParentEntity",
                               header: "IGESData_SingleParentEntity.hxx", bycopy.} = object of IGESDataIGESEntity ##
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


proc singleParent*(this: IGESDataSingleParentEntity): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "SingleParent",
    header: "IGESData_SingleParentEntity.hxx".}
proc nbChildren*(this: IGESDataSingleParentEntity): StandardInteger {.noSideEffect,
    importcpp: "NbChildren", header: "IGESData_SingleParentEntity.hxx".}
proc child*(this: IGESDataSingleParentEntity; num: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Child",
                         header: "IGESData_SingleParentEntity.hxx".}
type
  IGESDataSingleParentEntitybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_SingleParentEntity::get_type_name(@)",
                            header: "IGESData_SingleParentEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_SingleParentEntity::get_type_descriptor(@)",
    header: "IGESData_SingleParentEntity.hxx".}
proc dynamicType*(this: IGESDataSingleParentEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESData_SingleParentEntity.hxx".}

