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

import
  Standard

when not defined(_WIN32):
  discard
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
    when defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard
    when not defined(_WIN32):
      discard


proc constructStandard_Condition*(theIsSet: bool): Standard_Condition {.constructor,
    importcpp: "Standard_Condition(@)", header: "Standard_Condition.hxx".}
proc destroyStandard_Condition*(this: var Standard_Condition) {.
    importcpp: "#.~Standard_Condition()", header: "Standard_Condition.hxx".}
proc Set*(this: var Standard_Condition) {.importcpp: "Set",
                                      header: "Standard_Condition.hxx".}
proc Reset*(this: var Standard_Condition) {.importcpp: "Reset",
                                        header: "Standard_Condition.hxx".}
proc Wait*(this: var Standard_Condition) {.importcpp: "Wait",
                                       header: "Standard_Condition.hxx".}
proc Wait*(this: var Standard_Condition; theTimeMilliseconds: cint): bool {.
    importcpp: "Wait", header: "Standard_Condition.hxx".}
proc Check*(this: var Standard_Condition): bool {.importcpp: "Check",
    header: "Standard_Condition.hxx".}
proc CheckReset*(this: var Standard_Condition): bool {.importcpp: "CheckReset",
    header: "Standard_Condition.hxx".}
## !!!Ignored construct:  # _WIN32 [NewLine] ! Access native HANDLE to Event object. void * getHandle ( ) const { return myEvent ; } # [NewLine] private : ! This method should not be called (prohibited). Standard_Condition ( const Standard_Condition & theCopy ) ;
## Error: identifier expected, but got: ! Access native HANDLE to Event object.!!!
