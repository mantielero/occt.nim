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

## ! Interface class representing list of parameters on curve.

type
  IMeshDataParametersList* {.importcpp: "IMeshData_ParametersList",
                            header: "IMeshData_ParametersList.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Destructor.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Constructor.


proc destroyIMeshDataParametersList*(this: var IMeshDataParametersList) {.
    importcpp: "#.~IMeshData_ParametersList()",
    header: "IMeshData_ParametersList.hxx".}
proc getParameter*(this: var IMeshDataParametersList; theIndex: cint): var cfloat {.
    importcpp: "GetParameter", header: "IMeshData_ParametersList.hxx".}
proc parametersNb*(this: IMeshDataParametersList): cint {.noSideEffect,
    importcpp: "ParametersNb", header: "IMeshData_ParametersList.hxx".}
proc clear*(this: var IMeshDataParametersList; isKeepEndPoints: bool) {.
    importcpp: "Clear", header: "IMeshData_ParametersList.hxx".}
type
  IMeshDataParametersListbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IMeshData_ParametersList::get_type_name(@)",
                            header: "IMeshData_ParametersList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshData_ParametersList::get_type_descriptor(@)",
    header: "IMeshData_ParametersList.hxx".}
proc dynamicType*(this: IMeshDataParametersList): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshData_ParametersList.hxx".}

























