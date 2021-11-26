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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESBasic_SingleParent"
discard "forward decl of IGESBasic_SingleParent"
type
  HandleC1C1* = Handle[IGESBasicSingleParent]

## ! defines SingleParent, Type <402> Form <9>
## ! in package IGESBasic
## ! It defines a logical structure of one independent
## ! (parent) entity and one or more subordinate (children)
## ! entities

type
  IGESBasicSingleParent* {.importcpp: "IGESBasic_SingleParent",
                          header: "IGESBasic_SingleParent.hxx", bycopy.} = object of IGESDataSingleParentEntity


proc constructIGESBasicSingleParent*(): IGESBasicSingleParent {.constructor,
    importcpp: "IGESBasic_SingleParent(@)", header: "IGESBasic_SingleParent.hxx".}
proc init*(this: var IGESBasicSingleParent; nbParentEntities: cint;
          aParentEntity: Handle[IGESDataIGESEntity];
          allChildren: Handle[IGESDataHArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESBasic_SingleParent.hxx".}
proc nbParentEntities*(this: IGESBasicSingleParent): cint {.noSideEffect,
    importcpp: "NbParentEntities", header: "IGESBasic_SingleParent.hxx".}
proc singleParent*(this: IGESBasicSingleParent): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "SingleParent", header: "IGESBasic_SingleParent.hxx".}
proc nbChildren*(this: IGESBasicSingleParent): cint {.noSideEffect,
    importcpp: "NbChildren", header: "IGESBasic_SingleParent.hxx".}
proc child*(this: IGESBasicSingleParent; index: cint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Child", header: "IGESBasic_SingleParent.hxx".}
type
  IGESBasicSingleParentbaseType* = IGESDataSingleParentEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_SingleParent::get_type_name(@)",
                            header: "IGESBasic_SingleParent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_SingleParent::get_type_descriptor(@)",
    header: "IGESBasic_SingleParent.hxx".}
proc dynamicType*(this: IGESBasicSingleParent): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_SingleParent.hxx".}

























