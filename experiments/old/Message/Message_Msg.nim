##  Created on: 2001-01-18
##  Created by: OCC Team
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
type
  MessageMsg* {.importcpp: "Message_Msg", header: "Message_Msg.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructMessageMsg*(): MessageMsg {.constructor, importcpp: "Message_Msg(@)",
                                       header: "Message_Msg.hxx".}
proc constructMessageMsg*(theMsg: MessageMsg): MessageMsg {.constructor,
    importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc constructMessageMsg*(theKey: StandardCString): MessageMsg {.constructor,
    importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc constructMessageMsg*(theKey: TCollectionExtendedString): MessageMsg {.
    constructor, importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc set*(this: var MessageMsg; theMsg: StandardCString) {.importcpp: "Set",
    header: "Message_Msg.hxx".}
proc set*(this: var MessageMsg; theMsg: TCollectionExtendedString) {.importcpp: "Set",
    header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theString: StandardCString): var MessageMsg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theString: StandardCString): var MessageMsg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theString: TCollectionAsciiString): var MessageMsg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theString: TCollectionAsciiString): var MessageMsg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theString: Handle[TCollectionHAsciiString]): var MessageMsg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theString: Handle[TCollectionHAsciiString]): var MessageMsg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theString: TCollectionExtendedString): var MessageMsg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theString: TCollectionExtendedString): var MessageMsg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theString: Handle[TCollectionHExtendedString]): var MessageMsg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theString: Handle[TCollectionHExtendedString]): var MessageMsg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theInt: cint): var MessageMsg {.importcpp: "Arg",
    header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theInt: cint): var MessageMsg {.importcpp: "(# << #)",
    header: "Message_Msg.hxx".}
proc arg*(this: var MessageMsg; theReal: cfloat): var MessageMsg {.importcpp: "Arg",
    header: "Message_Msg.hxx".}
proc `<<`*(this: var MessageMsg; theReal: cfloat): var MessageMsg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc original*(this: MessageMsg): TCollectionExtendedString {.noSideEffect,
    importcpp: "Original", header: "Message_Msg.hxx".}
proc value*(this: MessageMsg): TCollectionExtendedString {.noSideEffect,
    importcpp: "Value", header: "Message_Msg.hxx".}
proc isEdited*(this: MessageMsg): bool {.noSideEffect, importcpp: "IsEdited",
                                     header: "Message_Msg.hxx".}
proc get*(this: var MessageMsg): TCollectionExtendedString {.importcpp: "Get",
    header: "Message_Msg.hxx".}
converter `constTCollectionExtendedString&`*(this: var MessageMsg): TCollectionExtendedString {.
    importcpp: "Message_Msg::operator constTCollection_ExtendedString&",
    header: "Message_Msg.hxx".}

























