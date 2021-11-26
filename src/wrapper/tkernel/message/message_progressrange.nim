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


proc newMessageProgressRange*(): MessageProgressRange {.cdecl, constructor,
    importcpp: "Message_ProgressRange(@)", dynlib: tkernel.}
proc newMessageProgressRange*(theOther: MessageProgressRange): MessageProgressRange {.
    cdecl, constructor, importcpp: "Message_ProgressRange(@)", dynlib: tkernel.}
proc userBreak*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
    importcpp: "UserBreak", dynlib: tkernel.}
proc more*(this: MessageProgressRange): bool {.noSideEffect, cdecl, importcpp: "More",
    dynlib: tkernel.}
proc isActive*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
    importcpp: "IsActive", dynlib: tkernel.}
proc close*(this: var MessageProgressRange) {.cdecl, importcpp: "Close",
    dynlib: tkernel.}
proc destroyMessageProgressRange*(this: var MessageProgressRange) {.cdecl,
    importcpp: "#.~Message_ProgressRange()", dynlib: tkernel.}
## =======================================================================
## function : IsActive
## purpose  :
## =======================================================================

#proc isActive*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
#    importcpp: "IsActive", dynlib: tkernel.}
## =======================================================================
## function : UserBreak
## purpose  :
## =======================================================================

#proc userBreak*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
#    importcpp: "UserBreak", dynlib: tkernel.}
## =======================================================================
## function : Close
## purpose  :
## =======================================================================

#proc close*(this: var MessageProgressRange) {.cdecl, importcpp: "Close",
#    dynlib: tkernel.}