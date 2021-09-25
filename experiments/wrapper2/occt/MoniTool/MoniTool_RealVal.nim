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

discard "forward decl of MoniTool_RealVal"
discard "forward decl of MoniTool_RealVal"
type
  HandleMoniToolRealVal* = Handle[MoniToolRealVal]

## ! A Real through a Handle (i.e. managed as TShared)

type
  MoniToolRealVal* {.importcpp: "MoniTool_RealVal", header: "MoniTool_RealVal.hxx",
                    bycopy.} = object of StandardTransient


proc constructMoniToolRealVal*(val: float = 0.0): MoniToolRealVal {.constructor,
    importcpp: "MoniTool_RealVal(@)", header: "MoniTool_RealVal.hxx".}
proc value*(this: MoniToolRealVal): float {.noSideEffect, importcpp: "Value",
                                        header: "MoniTool_RealVal.hxx".}
proc cValue*(this: var MoniToolRealVal): var float {.importcpp: "CValue",
    header: "MoniTool_RealVal.hxx".}
type
  MoniToolRealValbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MoniTool_RealVal::get_type_name(@)",
                            header: "MoniTool_RealVal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_RealVal::get_type_descriptor(@)",
    header: "MoniTool_RealVal.hxx".}
proc dynamicType*(this: MoniToolRealVal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_RealVal.hxx".}
