##  Created on: 1994-03-30
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../TopAbs/TopAbs_State, ../Standard/Standard_Real

discard "forward decl of gp_Pnt2d"
discard "forward decl of IntStart_SITopolTool"
discard "forward decl of IntStart_SITopolTool"
type
  Handle_IntStart_SITopolTool* = handle[IntStart_SITopolTool]

## ! template class for a topological tool.
## ! This tool is linked with the surface on which
## ! the classification has to be made.

type
  IntStart_SITopolTool* {.importcpp: "IntStart_SITopolTool",
                         header: "IntStart_SITopolTool.hxx", bycopy.} = object of Standard_Transient


proc Classify*(this: var IntStart_SITopolTool; P: gp_Pnt2d; Tol: Standard_Real): TopAbs_State {.
    importcpp: "Classify", header: "IntStart_SITopolTool.hxx".}
type
  IntStart_SITopolToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IntStart_SITopolTool::get_type_name(@)",
                              header: "IntStart_SITopolTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntStart_SITopolTool::get_type_descriptor(@)",
    header: "IntStart_SITopolTool.hxx".}
proc DynamicType*(this: IntStart_SITopolTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntStart_SITopolTool.hxx".}