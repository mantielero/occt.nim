##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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
  ../IGESDefs/IGESDefs_HArray1OfTabularData, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESAppli_Node"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_TabularData"
discard "forward decl of IGESAppli_NodalConstraint"
discard "forward decl of IGESAppli_NodalConstraint"
type
  Handle_IGESAppli_NodalConstraint* = handle[IGESAppli_NodalConstraint]

## ! defines NodalConstraint, Type <418> Form <0>
## ! in package IGESAppli
## ! Relates loads and/or constraints to specific nodes in
## ! the Finite Element Model by creating a relation between
## ! Node entities and Tabular Data Property that contains
## ! the load or constraint data

type
  IGESAppli_NodalConstraint* {.importcpp: "IGESAppli_NodalConstraint",
                              header: "IGESAppli_NodalConstraint.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_NodalConstraint*(): IGESAppli_NodalConstraint {.
    constructor, importcpp: "IGESAppli_NodalConstraint(@)",
    header: "IGESAppli_NodalConstraint.hxx".}
proc Init*(this: var IGESAppli_NodalConstraint; aType: Standard_Integer;
          aNode: handle[IGESAppli_Node];
          allTabData: handle[IGESDefs_HArray1OfTabularData]) {.importcpp: "Init",
    header: "IGESAppli_NodalConstraint.hxx".}
proc NbCases*(this: IGESAppli_NodalConstraint): Standard_Integer {.noSideEffect,
    importcpp: "NbCases", header: "IGESAppli_NodalConstraint.hxx".}
proc Type*(this: IGESAppli_NodalConstraint): Standard_Integer {.noSideEffect,
    importcpp: "Type", header: "IGESAppli_NodalConstraint.hxx".}
proc NodeEntity*(this: IGESAppli_NodalConstraint): handle[IGESAppli_Node] {.
    noSideEffect, importcpp: "NodeEntity", header: "IGESAppli_NodalConstraint.hxx".}
proc TabularData*(this: IGESAppli_NodalConstraint; Index: Standard_Integer): handle[
    IGESDefs_TabularData] {.noSideEffect, importcpp: "TabularData",
                           header: "IGESAppli_NodalConstraint.hxx".}
type
  IGESAppli_NodalConstraintbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_NodalConstraint::get_type_name(@)",
                              header: "IGESAppli_NodalConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_NodalConstraint::get_type_descriptor(@)",
    header: "IGESAppli_NodalConstraint.hxx".}
proc DynamicType*(this: IGESAppli_NodalConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_NodalConstraint.hxx".}