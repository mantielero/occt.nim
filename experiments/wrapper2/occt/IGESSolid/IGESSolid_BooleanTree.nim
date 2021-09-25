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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_BooleanTree"
discard "forward decl of IGESSolid_BooleanTree"
type
  HandleIGESSolidBooleanTree* = Handle[IGESSolidBooleanTree]

## ! defines BooleanTree, Type <180> Form Number <0>
## ! in package IGESSolid
## ! The Boolean tree describes a binary tree structure
## ! composed of regularized Boolean operations and operands,
## ! in post-order notation.

type
  IGESSolidBooleanTree* {.importcpp: "IGESSolid_BooleanTree",
                         header: "IGESSolid_BooleanTree.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidBooleanTree*(): IGESSolidBooleanTree {.constructor,
    importcpp: "IGESSolid_BooleanTree(@)", header: "IGESSolid_BooleanTree.hxx".}
proc init*(this: var IGESSolidBooleanTree;
          operands: Handle[IGESDataHArray1OfIGESEntity];
          operations: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_BooleanTree.hxx".}
proc length*(this: IGESSolidBooleanTree): int {.noSideEffect, importcpp: "Length",
    header: "IGESSolid_BooleanTree.hxx".}
proc isOperand*(this: IGESSolidBooleanTree; index: int): bool {.noSideEffect,
    importcpp: "IsOperand", header: "IGESSolid_BooleanTree.hxx".}
proc operand*(this: IGESSolidBooleanTree; index: int): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Operand", header: "IGESSolid_BooleanTree.hxx".}
proc operation*(this: IGESSolidBooleanTree; index: int): int {.noSideEffect,
    importcpp: "Operation", header: "IGESSolid_BooleanTree.hxx".}
type
  IGESSolidBooleanTreebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_BooleanTree::get_type_name(@)",
                            header: "IGESSolid_BooleanTree.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_BooleanTree::get_type_descriptor(@)",
    header: "IGESSolid_BooleanTree.hxx".}
proc dynamicType*(this: IGESSolidBooleanTree): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_BooleanTree.hxx".}
