##  Created on: 2016-06-23
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

## ! Extension interface class providing status functionality.

type
  IMeshDataStatusOwner* {.importcpp: "IMeshData_StatusOwner",
                         header: "IMeshData_StatusOwner.hxx", bycopy.} = object ## !
                                                                           ## Destructor.
                                                                           ## !
                                                                           ## Constructor.
                                                                           ## Initializes
                                                                           ## default
                                                                           ## status.


proc destroyIMeshDataStatusOwner*(this: var IMeshDataStatusOwner) {.
    importcpp: "#.~IMeshData_StatusOwner()", header: "IMeshData_StatusOwner.hxx".}
proc isEqual*(this: IMeshDataStatusOwner; theValue: IMeshDataStatus): bool {.
    noSideEffect, importcpp: "IsEqual", header: "IMeshData_StatusOwner.hxx".}
proc isSet*(this: IMeshDataStatusOwner; theValue: IMeshDataStatus): bool {.
    noSideEffect, importcpp: "IsSet", header: "IMeshData_StatusOwner.hxx".}
proc setStatus*(this: var IMeshDataStatusOwner; theValue: IMeshDataStatus) {.
    importcpp: "SetStatus", header: "IMeshData_StatusOwner.hxx".}
proc unsetStatus*(this: var IMeshDataStatusOwner; theValue: IMeshDataStatus) {.
    importcpp: "UnsetStatus", header: "IMeshData_StatusOwner.hxx".}
proc getStatusMask*(this: IMeshDataStatusOwner): int {.noSideEffect,
    importcpp: "GetStatusMask", header: "IMeshData_StatusOwner.hxx".}
