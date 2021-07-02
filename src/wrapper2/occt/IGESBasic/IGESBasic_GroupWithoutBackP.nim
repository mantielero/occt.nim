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
discard "forward decl of IGESBasic_GroupWithoutBackP"
discard "forward decl of IGESBasic_GroupWithoutBackP"
type
  HandleIGESBasicGroupWithoutBackP* = Handle[IGESBasicGroupWithoutBackP]

## ! defines GroupWithoutBackP, Type <402> Form <7>
## ! in package IGESBasic
## ! this class defines a Group without back pointers
## !
## ! It inherits from Group

type
  IGESBasicGroupWithoutBackP* {.importcpp: "IGESBasic_GroupWithoutBackP",
                               header: "IGESBasic_GroupWithoutBackP.hxx", bycopy.} = object of IGESBasicGroup


proc constructIGESBasicGroupWithoutBackP*(): IGESBasicGroupWithoutBackP {.
    constructor, importcpp: "IGESBasic_GroupWithoutBackP(@)",
    header: "IGESBasic_GroupWithoutBackP.hxx".}
type
  IGESBasicGroupWithoutBackPbaseType* = IGESBasicGroup

proc getTypeName*(): cstring {.importcpp: "IGESBasic_GroupWithoutBackP::get_type_name(@)",
                            header: "IGESBasic_GroupWithoutBackP.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_GroupWithoutBackP::get_type_descriptor(@)",
    header: "IGESBasic_GroupWithoutBackP.hxx".}
proc dynamicType*(this: IGESBasicGroupWithoutBackP): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_GroupWithoutBackP.hxx".}

