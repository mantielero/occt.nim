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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESBasic_Group"
discard "forward decl of IGESBasic_Group"
type
  Handle_IGESBasic_Group* = handle[IGESBasic_Group]

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
  IGESBasic_Group* {.importcpp: "IGESBasic_Group", header: "IGESBasic_Group.hxx",
                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_Group*(): IGESBasic_Group {.constructor,
    importcpp: "IGESBasic_Group(@)", header: "IGESBasic_Group.hxx".}
proc constructIGESBasic_Group*(nb: Standard_Integer): IGESBasic_Group {.constructor,
    importcpp: "IGESBasic_Group(@)", header: "IGESBasic_Group.hxx".}
proc Init*(this: var IGESBasic_Group;
          allEntities: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESBasic_Group.hxx".}
proc SetOrdered*(this: var IGESBasic_Group; mode: Standard_Boolean) {.
    importcpp: "SetOrdered", header: "IGESBasic_Group.hxx".}
proc SetWithoutBackP*(this: var IGESBasic_Group; mode: Standard_Boolean) {.
    importcpp: "SetWithoutBackP", header: "IGESBasic_Group.hxx".}
proc IsOrdered*(this: IGESBasic_Group): Standard_Boolean {.noSideEffect,
    importcpp: "IsOrdered", header: "IGESBasic_Group.hxx".}
proc IsWithoutBackP*(this: IGESBasic_Group): Standard_Boolean {.noSideEffect,
    importcpp: "IsWithoutBackP", header: "IGESBasic_Group.hxx".}
proc SetUser*(this: var IGESBasic_Group; `type`: Standard_Integer;
             form: Standard_Integer) {.importcpp: "SetUser",
                                     header: "IGESBasic_Group.hxx".}
proc SetNb*(this: var IGESBasic_Group; nb: Standard_Integer) {.importcpp: "SetNb",
    header: "IGESBasic_Group.hxx".}
proc NbEntities*(this: IGESBasic_Group): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "IGESBasic_Group.hxx".}
proc Entity*(this: IGESBasic_Group; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Entity",
                          header: "IGESBasic_Group.hxx".}
proc Value*(this: IGESBasic_Group; Index: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Value",
                         header: "IGESBasic_Group.hxx".}
proc SetValue*(this: var IGESBasic_Group; Index: Standard_Integer;
              ent: handle[IGESData_IGESEntity]) {.importcpp: "SetValue",
    header: "IGESBasic_Group.hxx".}
type
  IGESBasic_Groupbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_Group::get_type_name(@)",
                              header: "IGESBasic_Group.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_Group::get_type_descriptor(@)",
    header: "IGESBasic_Group.hxx".}
proc DynamicType*(this: IGESBasic_Group): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESBasic_Group.hxx".}