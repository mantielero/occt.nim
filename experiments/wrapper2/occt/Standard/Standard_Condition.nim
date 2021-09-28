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

# when not defined windows:
#   discard
## ! This is boolean flag intended for communication between threads.
## ! One thread sets this flag to TRUE to indicate some event happened
## ! and another thread either waits this event or checks periodically its state to perform job.
## !
## ! This class provides interface similar to WinAPI Event objects.

type
  StandardCondition* {.importcpp: "Standard_Condition",
                      header: "Standard_Condition.hxx", bycopy.} = object ## ! Default
                                                                     ## constructor.
                                                                     ## ! @param theIsSet Initial flag state
#     when defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard
#     when not defined windows:
#       discard


proc constructStandardCondition*(theIsSet: bool): StandardCondition {.constructor,
    importcpp: "Standard_Condition(@)", header: "Standard_Condition.hxx".}
proc destroyStandardCondition*(this: var StandardCondition) {.
    importcpp: "#.~Standard_Condition()", header: "Standard_Condition.hxx".}
proc set*(this: var StandardCondition) {.importcpp: "Set",
                                     header: "Standard_Condition.hxx".}
proc reset*(this: var StandardCondition) {.importcpp: "Reset",
                                       header: "Standard_Condition.hxx".}
proc wait*(this: var StandardCondition) {.importcpp: "Wait",
                                      header: "Standard_Condition.hxx".}
proc wait*(this: var StandardCondition; theTimeMilliseconds: cint): bool {.
    importcpp: "Wait", header: "Standard_Condition.hxx".}
proc check*(this: var StandardCondition): bool {.importcpp: "Check",
    header: "Standard_Condition.hxx".}
proc checkReset*(this: var StandardCondition): bool {.importcpp: "CheckReset",
    header: "Standard_Condition.hxx".}
## !!!Ignored construct:  # _WIN32 [NewLine] ! Access native HANDLE to Event object. void * getHandle ( ) const { return myEvent ; } # [NewLine] private : ! This method should not be called (prohibited). Standard_Condition ( const Standard_Condition & theCopy ) ;
## Error: identifier expected, but got: ! Access native HANDLE to Event object.!!!















































