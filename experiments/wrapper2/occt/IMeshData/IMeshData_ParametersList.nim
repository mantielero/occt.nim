##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../Standard/Standard_Transient, ../Standard/Standard_Type

## ! Interface class representing list of parameters on curve.

type
  IMeshData_ParametersList* {.importcpp: "IMeshData_ParametersList",
                             header: "IMeshData_ParametersList.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Destructor.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Constructor.


proc destroyIMeshData_ParametersList*(this: var IMeshData_ParametersList) {.
    importcpp: "#.~IMeshData_ParametersList()",
    header: "IMeshData_ParametersList.hxx".}
proc GetParameter*(this: var IMeshData_ParametersList; theIndex: Standard_Integer): var Standard_Real {.
    importcpp: "GetParameter", header: "IMeshData_ParametersList.hxx".}
proc ParametersNb*(this: IMeshData_ParametersList): Standard_Integer {.noSideEffect,
    importcpp: "ParametersNb", header: "IMeshData_ParametersList.hxx".}
proc Clear*(this: var IMeshData_ParametersList; isKeepEndPoints: Standard_Boolean) {.
    importcpp: "Clear", header: "IMeshData_ParametersList.hxx".}
type
  IMeshData_ParametersListbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IMeshData_ParametersList::get_type_name(@)",
                              header: "IMeshData_ParametersList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshData_ParametersList::get_type_descriptor(@)",
    header: "IMeshData_ParametersList.hxx".}
proc DynamicType*(this: IMeshData_ParametersList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshData_ParametersList.hxx".}