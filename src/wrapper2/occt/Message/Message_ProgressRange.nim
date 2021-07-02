##  Copyright (c) 2020 OPEN CASCADE SAS
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

discard "forward decl of Message_ProgressScope"
type
  MessageProgressRange* {.importcpp: "Message_ProgressRange",
                         header: "Message_ProgressRange.hxx", bycopy.} = object ## !
                                                                           ## Constructor of the empty range
                                                                           ## !
                                                                           ## Constructor is
                                                                           ## private
    ## !< Pointer to parent scope
    ## !< Start point on the global scale
    ## !< Step of incrementation on the global scale
    ## !< Flag indicating that this range
    ## !  was used to create a new scope


proc constructMessageProgressRange*(): MessageProgressRange {.constructor,
    importcpp: "Message_ProgressRange(@)", header: "Message_ProgressRange.hxx".}
proc constructMessageProgressRange*(theOther: MessageProgressRange): MessageProgressRange {.
    constructor, importcpp: "Message_ProgressRange(@)",
    header: "Message_ProgressRange.hxx".}
proc userBreak*(this: MessageProgressRange): StandardBoolean {.noSideEffect,
    importcpp: "UserBreak", header: "Message_ProgressRange.hxx".}
proc more*(this: MessageProgressRange): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "Message_ProgressRange.hxx".}
proc isActive*(this: MessageProgressRange): StandardBoolean {.noSideEffect,
    importcpp: "IsActive", header: "Message_ProgressRange.hxx".}
proc close*(this: var MessageProgressRange) {.importcpp: "Close",
    header: "Message_ProgressRange.hxx".}
proc destroyMessageProgressRange*(this: var MessageProgressRange) {.
    importcpp: "#.~Message_ProgressRange()", header: "Message_ProgressRange.hxx".}
## =======================================================================
## function : IsActive
## purpose  :
## =======================================================================

proc isActive*(this: MessageProgressRange): StandardBoolean {.noSideEffect,
    importcpp: "IsActive", header: "Message_ProgressRange.hxx".}
## =======================================================================
## function : UserBreak
## purpose  :
## =======================================================================

proc userBreak*(this: MessageProgressRange): StandardBoolean {.noSideEffect,
    importcpp: "UserBreak", header: "Message_ProgressRange.hxx".}
## =======================================================================
## function : Close
## purpose  :
## =======================================================================

proc close*(this: var MessageProgressRange) {.importcpp: "Close",
    header: "Message_ProgressRange.hxx".}

