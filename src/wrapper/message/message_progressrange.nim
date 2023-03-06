import message_types

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


proc newMessageProgressRange*(): MessageProgressRange {.cdecl, constructor,
    importcpp: "Message_ProgressRange(@)", header: "Message_ProgressRange.hxx".}
proc newMessageProgressRange*(theOther: MessageProgressRange): MessageProgressRange {.
    cdecl, constructor, importcpp: "Message_ProgressRange(@)", header: "Message_ProgressRange.hxx".}
proc userBreak*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
    importcpp: "UserBreak", header: "Message_ProgressRange.hxx".}
proc more*(this: MessageProgressRange): bool {.noSideEffect, cdecl, importcpp: "More",
    header: "Message_ProgressRange.hxx".}
proc isActive*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
    importcpp: "IsActive", header: "Message_ProgressRange.hxx".}
proc close*(this: var MessageProgressRange) {.cdecl, importcpp: "Close",
    header: "Message_ProgressRange.hxx".}
proc destroyMessageProgressRange*(this: var MessageProgressRange) {.cdecl,
    importcpp: "#.~Message_ProgressRange()", header: "Message_ProgressRange.hxx".}
## =======================================================================
## function : IsActive
## purpose  :
## =======================================================================

#proc isActive*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
#    importcpp: "IsActive", header: "Message_ProgressRange.hxx".}
## =======================================================================
## function : UserBreak
## purpose  :
## =======================================================================

#proc userBreak*(this: MessageProgressRange): bool {.noSideEffect, cdecl,
#    importcpp: "UserBreak", header: "Message_ProgressRange.hxx".}
## =======================================================================
## function : Close
## purpose  :
## =======================================================================

#proc close*(this: var MessageProgressRange) {.cdecl, importcpp: "Close",
#    header: "Message_ProgressRange.hxx".}
