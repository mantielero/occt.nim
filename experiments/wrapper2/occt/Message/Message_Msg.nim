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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TCollection/TCollection_HAsciiString,
  ../TCollection/TCollection_HExtendedString,
  ../TColStd/TColStd_SequenceOfInteger

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
type
  Message_Msg* {.importcpp: "Message_Msg", header: "Message_Msg.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructMessage_Msg*(): Message_Msg {.constructor,
    importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc constructMessage_Msg*(theMsg: Message_Msg): Message_Msg {.constructor,
    importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc constructMessage_Msg*(theKey: Standard_CString): Message_Msg {.constructor,
    importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc constructMessage_Msg*(theKey: TCollection_ExtendedString): Message_Msg {.
    constructor, importcpp: "Message_Msg(@)", header: "Message_Msg.hxx".}
proc Set*(this: var Message_Msg; theMsg: Standard_CString) {.importcpp: "Set",
    header: "Message_Msg.hxx".}
proc Set*(this: var Message_Msg; theMsg: TCollection_ExtendedString) {.
    importcpp: "Set", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theString: Standard_CString): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theString: Standard_CString): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theString: TCollection_AsciiString): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theString: TCollection_AsciiString): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theString: handle[TCollection_HAsciiString]): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theString: handle[TCollection_HAsciiString]): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theString: TCollection_ExtendedString): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theString: TCollection_ExtendedString): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theString: handle[TCollection_HExtendedString]): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theString: handle[TCollection_HExtendedString]): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theInt: Standard_Integer): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theInt: Standard_Integer): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Arg*(this: var Message_Msg; theReal: Standard_Real): var Message_Msg {.
    importcpp: "Arg", header: "Message_Msg.hxx".}
proc `<<`*(this: var Message_Msg; theReal: Standard_Real): var Message_Msg {.
    importcpp: "(# << #)", header: "Message_Msg.hxx".}
proc Original*(this: Message_Msg): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Original", header: "Message_Msg.hxx".}
proc Value*(this: Message_Msg): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Value", header: "Message_Msg.hxx".}
proc IsEdited*(this: Message_Msg): Standard_Boolean {.noSideEffect,
    importcpp: "IsEdited", header: "Message_Msg.hxx".}
proc Get*(this: var Message_Msg): TCollection_ExtendedString {.importcpp: "Get",
    header: "Message_Msg.hxx".}
converter `constTCollection_ExtendedString&`*(this: var Message_Msg): TCollection_ExtendedString {.
    importcpp: "Message_Msg::operator constTCollection_ExtendedString&",
    header: "Message_Msg.hxx".}