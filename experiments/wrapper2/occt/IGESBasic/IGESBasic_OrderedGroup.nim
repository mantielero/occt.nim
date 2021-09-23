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
  ../Standard/Standard, ../Standard/Standard_Type, IGESBasic_Group

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESBasic_OrderedGroup"
discard "forward decl of IGESBasic_OrderedGroup"
type
  Handle_IGESBasic_OrderedGroup* = handle[IGESBasic_OrderedGroup]

## ! defines OrderedGroup, Type <402> Form <14>
## ! in package IGESBasic
## ! this class defines an Ordered Group with back pointers
## ! Allows a collection of a set of entities to be
## ! maintained as a single entity, but the group is
## ! ordered.
## ! It inherits from Group

type
  IGESBasic_OrderedGroup* {.importcpp: "IGESBasic_OrderedGroup",
                           header: "IGESBasic_OrderedGroup.hxx", bycopy.} = object of IGESBasic_Group


proc constructIGESBasic_OrderedGroup*(): IGESBasic_OrderedGroup {.constructor,
    importcpp: "IGESBasic_OrderedGroup(@)", header: "IGESBasic_OrderedGroup.hxx".}
type
  IGESBasic_OrderedGroupbase_type* = IGESBasic_Group

proc get_type_name*(): cstring {.importcpp: "IGESBasic_OrderedGroup::get_type_name(@)",
                              header: "IGESBasic_OrderedGroup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_OrderedGroup::get_type_descriptor(@)",
    header: "IGESBasic_OrderedGroup.hxx".}
proc DynamicType*(this: IGESBasic_OrderedGroup): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_OrderedGroup.hxx".}