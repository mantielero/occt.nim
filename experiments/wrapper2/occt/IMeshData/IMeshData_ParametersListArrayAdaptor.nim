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
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  IMeshData_ParametersList

## ! Auxiliary tool representing adaptor interface for child classes of
## ! IMeshData_ParametersList to be used in tools working on NCollection_Array structure.

type
  IMeshData_ParametersListArrayAdaptor*[ParametersListPtrType] {.
      importcpp: "IMeshData_ParametersListArrayAdaptor<\'0>",
      header: "IMeshData_ParametersListArrayAdaptor.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Constructor.
                                                                                           ## Initializes
                                                                                           ## tool
                                                                                           ## by
                                                                                           ## the
                                                                                           ## given
                                                                                           ## parameters.


proc constructIMeshData_ParametersListArrayAdaptor*[ParametersListPtrType](
    theParameters: ParametersListPtrType): IMeshData_ParametersListArrayAdaptor[
    ParametersListPtrType] {.constructor, importcpp: "IMeshData_ParametersListArrayAdaptor<\'*0>(@)",
                            header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc destroyIMeshData_ParametersListArrayAdaptor*[ParametersListPtrType](
    this: var IMeshData_ParametersListArrayAdaptor[ParametersListPtrType]) {.
    importcpp: "#.~IMeshData_ParametersListArrayAdaptor()",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc Lower*[ParametersListPtrType](this: IMeshData_ParametersListArrayAdaptor[
    ParametersListPtrType]): Standard_Integer {.noSideEffect, importcpp: "Lower",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc Upper*[ParametersListPtrType](this: IMeshData_ParametersListArrayAdaptor[
    ParametersListPtrType]): Standard_Integer {.noSideEffect, importcpp: "Upper",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}
proc Value*[ParametersListPtrType](this: IMeshData_ParametersListArrayAdaptor[
    ParametersListPtrType]; theIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Value",
    header: "IMeshData_ParametersListArrayAdaptor.hxx".}