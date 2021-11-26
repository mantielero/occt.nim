##  Created on: 2006-10-28
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## *
##  Status of read/write or other operation.
##

type
  VrmlDataErrorStatus* {.size: sizeof(cint), importcpp: "VrmlData_ErrorStatus",
                        header: "VrmlData_ErrorStatus.hxx".} = enum
    VrmlDataStatusOK = 0, VrmlDataEmptyData, VrmlDataUnrecoverableError,
    VrmlDataGeneralError, VrmlDataEndOfFile, VrmlDataNotVrmlFile,
    VrmlDataCannotOpenFile, VrmlDataVrmlFormatError, VrmlDataNumericInputError,
    VrmlDataIrrelevantNumber, VrmlDataBooleanInputError, VrmlDataStringInputError,
    VrmlDataNodeNameUnknown, VrmlDataNonPositiveSize, VrmlDataReadUnknownNode,
    VrmlDataNonSupportedFeature, VrmlDataOutputStreamUndefined,
    VrmlDataNotImplemented



























