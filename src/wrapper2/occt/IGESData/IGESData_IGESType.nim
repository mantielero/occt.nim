##  Created on: 1992-04-06
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

## ! taken from directory part of an entity (from file or model),
## ! gives "type" and "form" data, used to recognize entity's type

type
  IGESData_IGESType* {.importcpp: "IGESData_IGESType",
                      header: "IGESData_IGESType.hxx", bycopy.} = object


proc constructIGESData_IGESType*(): IGESData_IGESType {.constructor,
    importcpp: "IGESData_IGESType(@)", header: "IGESData_IGESType.hxx".}
proc constructIGESData_IGESType*(atype: Standard_Integer; aform: Standard_Integer): IGESData_IGESType {.
    constructor, importcpp: "IGESData_IGESType(@)", header: "IGESData_IGESType.hxx".}
proc Type*(this: IGESData_IGESType): Standard_Integer {.noSideEffect,
    importcpp: "Type", header: "IGESData_IGESType.hxx".}
proc Form*(this: IGESData_IGESType): Standard_Integer {.noSideEffect,
    importcpp: "Form", header: "IGESData_IGESType.hxx".}
proc IsEqual*(this: IGESData_IGESType; another: IGESData_IGESType): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "IGESData_IGESType.hxx".}
proc `==`*(this: IGESData_IGESType; another: IGESData_IGESType): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "IGESData_IGESType.hxx".}
proc Nullify*(this: var IGESData_IGESType) {.importcpp: "Nullify",
    header: "IGESData_IGESType.hxx".}