##  Created on: 1997-09-03
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Interface_IntVal"
discard "forward decl of Interface_IntVal"
type
  HandleInterfaceIntVal* = Handle[InterfaceIntVal]

## ! An Integer through a Handle (i.e. managed as TShared)

type
  InterfaceIntVal* {.importcpp: "Interface_IntVal", header: "Interface_IntVal.hxx",
                    bycopy.} = object of StandardTransient


proc constructInterfaceIntVal*(): InterfaceIntVal {.constructor,
    importcpp: "Interface_IntVal(@)", header: "Interface_IntVal.hxx".}
proc value*(this: InterfaceIntVal): int {.noSideEffect, importcpp: "Value",
                                      header: "Interface_IntVal.hxx".}
proc cValue*(this: var InterfaceIntVal): var int {.importcpp: "CValue",
    header: "Interface_IntVal.hxx".}
type
  InterfaceIntValbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_IntVal::get_type_name(@)",
                            header: "Interface_IntVal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_IntVal::get_type_descriptor(@)",
    header: "Interface_IntVal.hxx".}
proc dynamicType*(this: InterfaceIntVal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_IntVal.hxx".}
