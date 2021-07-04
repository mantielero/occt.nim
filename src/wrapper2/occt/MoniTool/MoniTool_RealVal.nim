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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of MoniTool_RealVal"
discard "forward decl of MoniTool_RealVal"
type
  Handle_MoniTool_RealVal* = handle[MoniTool_RealVal]

## ! A Real through a Handle (i.e. managed as TShared)

type
  MoniTool_RealVal* {.importcpp: "MoniTool_RealVal",
                     header: "MoniTool_RealVal.hxx", bycopy.} = object of Standard_Transient


proc constructMoniTool_RealVal*(val: Standard_Real = 0.0): MoniTool_RealVal {.
    constructor, importcpp: "MoniTool_RealVal(@)", header: "MoniTool_RealVal.hxx".}
proc Value*(this: MoniTool_RealVal): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "MoniTool_RealVal.hxx".}
proc CValue*(this: var MoniTool_RealVal): var Standard_Real {.importcpp: "CValue",
    header: "MoniTool_RealVal.hxx".}
type
  MoniTool_RealValbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MoniTool_RealVal::get_type_name(@)",
                              header: "MoniTool_RealVal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_RealVal::get_type_descriptor(@)",
    header: "MoniTool_RealVal.hxx".}
proc DynamicType*(this: MoniTool_RealVal): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_RealVal.hxx".}