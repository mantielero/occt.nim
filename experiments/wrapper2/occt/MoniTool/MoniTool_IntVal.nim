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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient

discard "forward decl of MoniTool_IntVal"
discard "forward decl of MoniTool_IntVal"
type
  Handle_MoniTool_IntVal* = handle[MoniTool_IntVal]

## ! An Integer through a Handle (i.e. managed as TShared)

type
  MoniTool_IntVal* {.importcpp: "MoniTool_IntVal", header: "MoniTool_IntVal.hxx",
                    bycopy.} = object of Standard_Transient


proc constructMoniTool_IntVal*(val: Standard_Integer = 0): MoniTool_IntVal {.
    constructor, importcpp: "MoniTool_IntVal(@)", header: "MoniTool_IntVal.hxx".}
proc Value*(this: MoniTool_IntVal): Standard_Integer {.noSideEffect,
    importcpp: "Value", header: "MoniTool_IntVal.hxx".}
proc CValue*(this: var MoniTool_IntVal): var Standard_Integer {.importcpp: "CValue",
    header: "MoniTool_IntVal.hxx".}
type
  MoniTool_IntValbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_IntVal::get_type_name(@)",
                              header: "MoniTool_IntVal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_IntVal::get_type_descriptor(@)",
    header: "MoniTool_IntVal.hxx".}
proc DynamicType*(this: MoniTool_IntVal): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_IntVal.hxx".}