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

discard "forward decl of MoniTool_IntVal"
discard "forward decl of MoniTool_IntVal"
type
  HandleC1C1* = Handle[MoniToolIntVal]

## ! An Integer through a Handle (i.e. managed as TShared)

type
  MoniToolIntVal* {.importcpp: "MoniTool_IntVal", header: "MoniTool_IntVal.hxx",
                   bycopy.} = object of StandardTransient


proc constructMoniToolIntVal*(val: cint = 0): MoniToolIntVal {.constructor,
    importcpp: "MoniTool_IntVal(@)", header: "MoniTool_IntVal.hxx".}
proc value*(this: MoniToolIntVal): cint {.noSideEffect, importcpp: "Value",
                                      header: "MoniTool_IntVal.hxx".}
proc cValue*(this: var MoniToolIntVal): var cint {.importcpp: "CValue",
    header: "MoniTool_IntVal.hxx".}
type
  MoniToolIntValbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_IntVal::get_type_name(@)",
                            header: "MoniTool_IntVal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_IntVal::get_type_descriptor(@)",
    header: "MoniTool_IntVal.hxx".}
proc dynamicType*(this: MoniToolIntVal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_IntVal.hxx".}

























