##  Created by: Kirill Gavrilov
##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! This is boolean flag intended for communication between threads.
## ! One thread sets this flag to TRUE to indicate some event happened
## ! and another thread either waits this event or checks periodically its state to perform job.
## !
## ! This class provides interface similar to WinAPI Event objects.

type
  Standard_Condition* {.importcpp: "Standard_Condition",
                       header: "Standard_Condition.hxx", bycopy.} = object ## ! Default
                                                                      ## constructor.
                                                                      ## ! @param theIsSet Initial flag state
                                                                      ## ! This method should not be called
                                                                      ## (prohibited).


proc constructStandard_Condition*(theIsSet: bool): Standard_Condition {.cdecl,
    constructor, importcpp: "Standard_Condition(@)", dynlib: tkernel.}
proc destroyStandard_Condition*(this: var Standard_Condition) {.cdecl,
    importcpp: "#.~Standard_Condition()", dynlib: tkernel.}
proc Set*(this: var Standard_Condition) {.cdecl, importcpp: "Set", dynlib: tkernel.}
proc Reset*(this: var Standard_Condition) {.cdecl, importcpp: "Reset", dynlib: tkernel.}
proc Wait*(this: var Standard_Condition) {.cdecl, importcpp: "Wait", dynlib: tkernel.}
proc Wait*(this: var Standard_Condition; theTimeMilliseconds: cint): bool {.cdecl,
    importcpp: "Wait", dynlib: tkernel.}
proc Check*(this: var Standard_Condition): bool {.cdecl, importcpp: "Check",
    dynlib: tkernel.}
proc CheckReset*(this: var Standard_Condition): bool {.cdecl, importcpp: "CheckReset",
    dynlib: tkernel.}