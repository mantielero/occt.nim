##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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
  ../IGESData/IGESData_HArray1OfIGESEntity, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_BooleanTree"
discard "forward decl of IGESSolid_BooleanTree"
type
  Handle_IGESSolid_BooleanTree* = handle[IGESSolid_BooleanTree]

## ! defines BooleanTree, Type <180> Form Number <0>
## ! in package IGESSolid
## ! The Boolean tree describes a binary tree structure
## ! composed of regularized Boolean operations and operands,
## ! in post-order notation.

type
  IGESSolid_BooleanTree* {.importcpp: "IGESSolid_BooleanTree",
                          header: "IGESSolid_BooleanTree.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_BooleanTree*(): IGESSolid_BooleanTree {.constructor,
    importcpp: "IGESSolid_BooleanTree(@)", header: "IGESSolid_BooleanTree.hxx".}
proc Init*(this: var IGESSolid_BooleanTree;
          operands: handle[IGESData_HArray1OfIGESEntity];
          operations: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_BooleanTree.hxx".}
proc Length*(this: IGESSolid_BooleanTree): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "IGESSolid_BooleanTree.hxx".}
proc IsOperand*(this: IGESSolid_BooleanTree; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsOperand", header: "IGESSolid_BooleanTree.hxx".}
proc Operand*(this: IGESSolid_BooleanTree; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Operand",
                          header: "IGESSolid_BooleanTree.hxx".}
proc Operation*(this: IGESSolid_BooleanTree; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Operation", header: "IGESSolid_BooleanTree.hxx".}
type
  IGESSolid_BooleanTreebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_BooleanTree::get_type_name(@)",
                              header: "IGESSolid_BooleanTree.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_BooleanTree::get_type_descriptor(@)",
    header: "IGESSolid_BooleanTree.hxx".}
proc DynamicType*(this: IGESSolid_BooleanTree): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_BooleanTree.hxx".}