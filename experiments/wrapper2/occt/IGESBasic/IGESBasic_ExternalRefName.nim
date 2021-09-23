##  Created on: 1993-01-09
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
  ../Standard/Standard, ../Standard/Standard_Type, ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_ExternalRefName"
discard "forward decl of IGESBasic_ExternalRefName"
type
  Handle_IGESBasic_ExternalRefName* = handle[IGESBasic_ExternalRefName]

## ! defines ExternalRefName, Type <416> Form <3>
## ! in package IGESBasic
## ! Used when it is assumed that a copy of the subfigure
## ! exists in native form on the receiving system

type
  IGESBasic_ExternalRefName* {.importcpp: "IGESBasic_ExternalRefName",
                              header: "IGESBasic_ExternalRefName.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_ExternalRefName*(): IGESBasic_ExternalRefName {.
    constructor, importcpp: "IGESBasic_ExternalRefName(@)",
    header: "IGESBasic_ExternalRefName.hxx".}
proc Init*(this: var IGESBasic_ExternalRefName;
          anExtName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefName.hxx".}
proc ReferenceName*(this: IGESBasic_ExternalRefName): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ReferenceName",
                               header: "IGESBasic_ExternalRefName.hxx".}
type
  IGESBasic_ExternalRefNamebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_ExternalRefName::get_type_name(@)",
                              header: "IGESBasic_ExternalRefName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_ExternalRefName::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefName.hxx".}
proc DynamicType*(this: IGESBasic_ExternalRefName): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_ExternalRefName.hxx".}