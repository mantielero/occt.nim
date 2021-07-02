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

## ! Auxiliary tool representing adaptor interface for child classes of
## ! IMeshData_ParametersList to be used in tools working on NCollection_Array structure.

type
  IMeshDataParametersListArrayAdaptor*[ParametersListPtrType] {.
      importcpp: "IMeshData_ParametersListArrayAdaptor<\'0>",
      header: "IMeshData_ParametersListArrayAdaptor.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Constructor.
                                                                                          ## Initializes
                                                                                          ## tool
                                                                                          ## by
                                                                                          ## the
                                                                                          ## given
                                                                                          ## parameters.


proc constructIMeshDataParametersListArrayAdaptor*[ParametersListPtrType](
    theParameters: ParametersListPtrType): IMeshDataParametersListArrayAdaptor[
    ParametersListPtrType] {.constructor, importcpp: "IMeshData_ParametersListArrayAdaptor<\'*0>(@)",
                            header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc destroyIMeshDataParametersListArrayAdaptor*[ParametersListPtrType](
    this: var IMeshDataParametersListArrayAdaptor[ParametersListPtrType]) {.
    importcpp: "#.~IMeshData_ParametersListArrayAdaptor()",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc lower*[ParametersListPtrType](this: IMeshDataParametersListArrayAdaptor[
    ParametersListPtrType]): StandardInteger {.noSideEffect, importcpp: "Lower",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc upper*[ParametersListPtrType](this: IMeshDataParametersListArrayAdaptor[
    ParametersListPtrType]): StandardInteger {.noSideEffect, importcpp: "Upper",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc value*[ParametersListPtrType](this: IMeshDataParametersListArrayAdaptor[
    ParametersListPtrType]; theIndex: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Value", header: "IMeshData_ParametersListArrayAdaptor.hxx".}

