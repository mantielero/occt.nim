##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESData/IGESData_SingleParentEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESBasic_SingleParent"
discard "forward decl of IGESBasic_SingleParent"
type
  Handle_IGESBasic_SingleParent* = handle[IGESBasic_SingleParent]

## ! defines SingleParent, Type <402> Form <9>
## ! in package IGESBasic
## ! It defines a logical structure of one independent
## ! (parent) entity and one or more subordinate (children)
## ! entities

type
  IGESBasic_SingleParent* {.importcpp: "IGESBasic_SingleParent",
                           header: "IGESBasic_SingleParent.hxx", bycopy.} = object of IGESData_SingleParentEntity


proc constructIGESBasic_SingleParent*(): IGESBasic_SingleParent {.constructor,
    importcpp: "IGESBasic_SingleParent(@)", header: "IGESBasic_SingleParent.hxx".}
proc Init*(this: var IGESBasic_SingleParent; nbParentEntities: Standard_Integer;
          aParentEntity: handle[IGESData_IGESEntity];
          allChildren: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESBasic_SingleParent.hxx".}
proc NbParentEntities*(this: IGESBasic_SingleParent): Standard_Integer {.
    noSideEffect, importcpp: "NbParentEntities",
    header: "IGESBasic_SingleParent.hxx".}
proc SingleParent*(this: IGESBasic_SingleParent): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "SingleParent", header: "IGESBasic_SingleParent.hxx".}
proc NbChildren*(this: IGESBasic_SingleParent): Standard_Integer {.noSideEffect,
    importcpp: "NbChildren", header: "IGESBasic_SingleParent.hxx".}
proc Child*(this: IGESBasic_SingleParent; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Child",
                          header: "IGESBasic_SingleParent.hxx".}
type
  IGESBasic_SingleParentbase_type* = IGESData_SingleParentEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_SingleParent::get_type_name(@)",
                              header: "IGESBasic_SingleParent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_SingleParent::get_type_descriptor(@)",
    header: "IGESBasic_SingleParent.hxx".}
proc DynamicType*(this: IGESBasic_SingleParent): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_SingleParent.hxx".}