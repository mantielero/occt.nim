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

## ! taken from directory part of an entity (from file or model),
## ! gives "type" and "form" data, used to recognize entity's type

type
  IGESDataIGESType* {.importcpp: "IGESData_IGESType",
                     header: "IGESData_IGESType.hxx", bycopy.} = object


proc constructIGESDataIGESType*(): IGESDataIGESType {.constructor,
    importcpp: "IGESData_IGESType(@)", header: "IGESData_IGESType.hxx".}
proc constructIGESDataIGESType*(atype: cint; aform: cint): IGESDataIGESType {.
    constructor, importcpp: "IGESData_IGESType(@)", header: "IGESData_IGESType.hxx".}
proc `type`*(this: IGESDataIGESType): cint {.noSideEffect, importcpp: "Type",
    header: "IGESData_IGESType.hxx".}
proc form*(this: IGESDataIGESType): cint {.noSideEffect, importcpp: "Form",
                                       header: "IGESData_IGESType.hxx".}
proc isEqual*(this: IGESDataIGESType; another: IGESDataIGESType): bool {.noSideEffect,
    importcpp: "IsEqual", header: "IGESData_IGESType.hxx".}
proc `==`*(this: IGESDataIGESType; another: IGESDataIGESType): bool {.noSideEffect,
    importcpp: "(# == #)", header: "IGESData_IGESType.hxx".}
proc nullify*(this: var IGESDataIGESType) {.importcpp: "Nullify",
                                        header: "IGESData_IGESType.hxx".}

























