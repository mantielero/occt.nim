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
discard "forward decl of IGESBasic_GroupWithoutBackP"
discard "forward decl of IGESBasic_GroupWithoutBackP"
type
  Handle_IGESBasic_GroupWithoutBackP* = handle[IGESBasic_GroupWithoutBackP]

## ! defines GroupWithoutBackP, Type <402> Form <7>
## ! in package IGESBasic
## ! this class defines a Group without back pointers
## !
## ! It inherits from Group

type
  IGESBasic_GroupWithoutBackP* {.importcpp: "IGESBasic_GroupWithoutBackP",
                                header: "IGESBasic_GroupWithoutBackP.hxx", bycopy.} = object of IGESBasic_Group


proc constructIGESBasic_GroupWithoutBackP*(): IGESBasic_GroupWithoutBackP {.
    constructor, importcpp: "IGESBasic_GroupWithoutBackP(@)",
    header: "IGESBasic_GroupWithoutBackP.hxx".}
type
  IGESBasic_GroupWithoutBackPbase_type* = IGESBasic_Group

proc get_type_name*(): cstring {.importcpp: "IGESBasic_GroupWithoutBackP::get_type_name(@)",
                              header: "IGESBasic_GroupWithoutBackP.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_GroupWithoutBackP::get_type_descriptor(@)",
    header: "IGESBasic_GroupWithoutBackP.hxx".}
proc DynamicType*(this: IGESBasic_GroupWithoutBackP): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_GroupWithoutBackP.hxx".}