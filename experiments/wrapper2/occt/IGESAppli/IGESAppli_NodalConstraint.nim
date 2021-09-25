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

discard "forward decl of IGESAppli_Node"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_TabularData"
discard "forward decl of IGESAppli_NodalConstraint"
discard "forward decl of IGESAppli_NodalConstraint"
type
  HandleIGESAppliNodalConstraint* = Handle[IGESAppliNodalConstraint]

## ! defines NodalConstraint, Type <418> Form <0>
## ! in package IGESAppli
## ! Relates loads and/or constraints to specific nodes in
## ! the Finite Element Model by creating a relation between
## ! Node entities and Tabular Data Property that contains
## ! the load or constraint data

type
  IGESAppliNodalConstraint* {.importcpp: "IGESAppli_NodalConstraint",
                             header: "IGESAppli_NodalConstraint.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliNodalConstraint*(): IGESAppliNodalConstraint {.constructor,
    importcpp: "IGESAppli_NodalConstraint(@)",
    header: "IGESAppli_NodalConstraint.hxx".}
proc init*(this: var IGESAppliNodalConstraint; aType: int;
          aNode: Handle[IGESAppliNode];
          allTabData: Handle[IGESDefsHArray1OfTabularData]) {.importcpp: "Init",
    header: "IGESAppli_NodalConstraint.hxx".}
proc nbCases*(this: IGESAppliNodalConstraint): int {.noSideEffect,
    importcpp: "NbCases", header: "IGESAppli_NodalConstraint.hxx".}
proc `type`*(this: IGESAppliNodalConstraint): int {.noSideEffect, importcpp: "Type",
    header: "IGESAppli_NodalConstraint.hxx".}
proc nodeEntity*(this: IGESAppliNodalConstraint): Handle[IGESAppliNode] {.
    noSideEffect, importcpp: "NodeEntity", header: "IGESAppli_NodalConstraint.hxx".}
proc tabularData*(this: IGESAppliNodalConstraint; index: int): Handle[
    IGESDefsTabularData] {.noSideEffect, importcpp: "TabularData",
                          header: "IGESAppli_NodalConstraint.hxx".}
type
  IGESAppliNodalConstraintbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_NodalConstraint::get_type_name(@)",
                            header: "IGESAppli_NodalConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_NodalConstraint::get_type_descriptor(@)",
    header: "IGESAppli_NodalConstraint.hxx".}
proc dynamicType*(this: IGESAppliNodalConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_NodalConstraint.hxx".}
