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


proc newMessageMsg*(): MessageMsg {.cdecl, constructor, importcpp: "Message_Msg(@)",
                                 dynlib: tkernel.}
proc newMessageMsg*(theMsg: MessageMsg): MessageMsg {.cdecl, constructor,
    importcpp: "Message_Msg(@)", dynlib: tkernel.}
proc newMessageMsg*(theKey: cstring): MessageMsg {.cdecl, constructor,
    importcpp: "Message_Msg(@)", dynlib: tkernel.}
proc newMessageMsg*(theKey: TCollectionExtendedString): MessageMsg {.cdecl,
    constructor, importcpp: "Message_Msg(@)", dynlib: tkernel.}
proc set*(this: var MessageMsg; theMsg: cstring) {.cdecl, importcpp: "Set",
    dynlib: tkernel.}
proc set*(this: var MessageMsg; theMsg: TCollectionExtendedString) {.cdecl,
    importcpp: "Set", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theString: cstring): var MessageMsg {.cdecl,
    importcpp: "Arg", dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theString: cstring): var MessageMsg {.cdecl,
    importcpp: "(# << #)", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theString: TCollectionAsciiString): var MessageMsg {.
    cdecl, importcpp: "Arg", dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theString: TCollectionAsciiString): var MessageMsg {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theString: Handle[TCollectionHAsciiString]): var MessageMsg {.
    cdecl, importcpp: "Arg", dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theString: Handle[TCollectionHAsciiString]): var MessageMsg {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theString: TCollectionExtendedString): var MessageMsg {.
    cdecl, importcpp: "Arg", dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theString: TCollectionExtendedString): var MessageMsg {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theString: Handle[TCollectionHExtendedString]): var MessageMsg {.
    cdecl, importcpp: "Arg", dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theString: Handle[TCollectionHExtendedString]): var MessageMsg {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theInt: cint): var MessageMsg {.cdecl, importcpp: "Arg",
    dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theInt: cint): var MessageMsg {.cdecl,
    importcpp: "(# << #)", dynlib: tkernel.}
proc arg*(this: var MessageMsg; theReal: cfloat): var MessageMsg {.cdecl,
    importcpp: "Arg", dynlib: tkernel.}
proc `<<`*(this: var MessageMsg; theReal: cfloat): var MessageMsg {.cdecl,
    importcpp: "(# << #)", dynlib: tkernel.}
proc original*(this: MessageMsg): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Original", dynlib: tkernel.}
proc value*(this: MessageMsg): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkernel.}
proc isEdited*(this: MessageMsg): bool {.noSideEffect, cdecl, importcpp: "IsEdited",
                                     dynlib: tkernel.}
proc get*(this: var MessageMsg): TCollectionExtendedString {.cdecl, importcpp: "Get",
    dynlib: tkernel.}
converter `constTCollectionExtendedString&`*(this: var MessageMsg): TCollectionExtendedString {.
    cdecl, importcpp: "Message_Msg::operator constTCollection_ExtendedString&",
    dynlib: tkernel.}