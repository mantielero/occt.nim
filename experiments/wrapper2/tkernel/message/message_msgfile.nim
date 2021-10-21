##  Created on: 2001-04-26
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  MessageMsgFile* {.importcpp: "Message_MsgFile", header: "Message_MsgFile.hxx",
                   bycopy.} = object ## ! Load message file <theFileName> from directory <theDirName>
                                  ## ! or its sub-directory


proc load*(theDirName: cstring; theFileName: cstring): bool {.cdecl,
    importcpp: "Message_MsgFile::Load(@)", dynlib: tkernel.}
proc loadFile*(theFName: cstring): bool {.cdecl, importcpp: "Message_MsgFile::LoadFile(@)",
                                      dynlib: tkernel.}
proc loadFromEnv*(theEnvName: cstring; theFileName: cstring; theLangExt: cstring = ""): bool {.
    cdecl, importcpp: "Message_MsgFile::LoadFromEnv(@)", dynlib: tkernel.}
proc loadFromString*(theContent: cstring; theLength: cint = -1): bool {.cdecl,
    importcpp: "Message_MsgFile::LoadFromString(@)", dynlib: tkernel.}
proc addMsg*(key: TCollectionAsciiString; text: TCollectionExtendedString): bool {.
    cdecl, importcpp: "Message_MsgFile::AddMsg(@)", dynlib: tkernel.}
proc hasMsg*(key: TCollectionAsciiString): bool {.cdecl,
    importcpp: "Message_MsgFile::HasMsg(@)", dynlib: tkernel.}
proc msg*(key: cstring): TCollectionExtendedString {.cdecl,
    importcpp: "Message_MsgFile::Msg(@)", dynlib: tkernel.}
proc msg*(key: TCollectionAsciiString): TCollectionExtendedString {.cdecl,
    importcpp: "Message_MsgFile::Msg(@)", dynlib: tkernel.}