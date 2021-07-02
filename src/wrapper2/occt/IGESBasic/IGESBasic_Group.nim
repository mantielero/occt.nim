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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESBasic_Group"
discard "forward decl of IGESBasic_Group"
type
  HandleIGESBasicGroup* = Handle[IGESBasicGroup]

## ! defines Group, Type <402> Form <1>
## ! in package IGESBasic
## ! The Group Associativity allows a collection of a set
## ! of entities to be maintained as a single, logical
## ! entity
## !
## ! Group, OrderedGroup, GroupWithoutBackP, OrderedGroupWithoutBackP
## ! share the same definition (class Group), form number changes
## !
## ! non Ordered, non WithoutBackP : form  1
## ! non Ordered,     WithoutBackP : form  7
## ! Ordered, non WithoutBackP : form 14
## ! Ordered,     WithoutBackP : form 15

type
  IGESBasicGroup* {.importcpp: "IGESBasic_Group", header: "IGESBasic_Group.hxx",
                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicGroup*(): IGESBasicGroup {.constructor,
    importcpp: "IGESBasic_Group(@)", header: "IGESBasic_Group.hxx".}
proc constructIGESBasicGroup*(nb: StandardInteger): IGESBasicGroup {.constructor,
    importcpp: "IGESBasic_Group(@)", header: "IGESBasic_Group.hxx".}
proc init*(this: var IGESBasicGroup;
          allEntities: Handle[IGESDataHArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESBasic_Group.hxx".}
proc setOrdered*(this: var IGESBasicGroup; mode: StandardBoolean) {.
    importcpp: "SetOrdered", header: "IGESBasic_Group.hxx".}
proc setWithoutBackP*(this: var IGESBasicGroup; mode: StandardBoolean) {.
    importcpp: "SetWithoutBackP", header: "IGESBasic_Group.hxx".}
proc isOrdered*(this: IGESBasicGroup): StandardBoolean {.noSideEffect,
    importcpp: "IsOrdered", header: "IGESBasic_Group.hxx".}
proc isWithoutBackP*(this: IGESBasicGroup): StandardBoolean {.noSideEffect,
    importcpp: "IsWithoutBackP", header: "IGESBasic_Group.hxx".}
proc setUser*(this: var IGESBasicGroup; `type`: StandardInteger; form: StandardInteger) {.
    importcpp: "SetUser", header: "IGESBasic_Group.hxx".}
proc setNb*(this: var IGESBasicGroup; nb: StandardInteger) {.importcpp: "SetNb",
    header: "IGESBasic_Group.hxx".}
proc nbEntities*(this: IGESBasicGroup): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "IGESBasic_Group.hxx".}
proc entity*(this: IGESBasicGroup; index: StandardInteger): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Entity", header: "IGESBasic_Group.hxx".}
proc value*(this: IGESBasicGroup; index: StandardInteger): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Value", header: "IGESBasic_Group.hxx".}
proc setValue*(this: var IGESBasicGroup; index: StandardInteger;
              ent: Handle[IGESDataIGESEntity]) {.importcpp: "SetValue",
    header: "IGESBasic_Group.hxx".}
type
  IGESBasicGroupbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_Group::get_type_name(@)",
                            header: "IGESBasic_Group.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_Group::get_type_descriptor(@)",
    header: "IGESBasic_Group.hxx".}
proc dynamicType*(this: IGESBasicGroup): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_Group.hxx".}

