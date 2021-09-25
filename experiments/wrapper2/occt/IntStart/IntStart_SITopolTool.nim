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

discard "forward decl of gp_Pnt2d"
discard "forward decl of IntStart_SITopolTool"
discard "forward decl of IntStart_SITopolTool"
type
  HandleIntStartSITopolTool* = Handle[IntStartSITopolTool]

## ! template class for a topological tool.
## ! This tool is linked with the surface on which
## ! the classification has to be made.

type
  IntStartSITopolTool* {.importcpp: "IntStart_SITopolTool",
                        header: "IntStart_SITopolTool.hxx", bycopy.} = object of StandardTransient


proc classify*(this: var IntStartSITopolTool; p: Pnt2d; tol: float): TopAbsState {.
    importcpp: "Classify", header: "IntStart_SITopolTool.hxx".}
type
  IntStartSITopolToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IntStart_SITopolTool::get_type_name(@)",
                            header: "IntStart_SITopolTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntStart_SITopolTool::get_type_descriptor(@)",
    header: "IntStart_SITopolTool.hxx".}
proc dynamicType*(this: IntStartSITopolTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntStart_SITopolTool.hxx".}
