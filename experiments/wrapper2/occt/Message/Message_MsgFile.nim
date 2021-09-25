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


proc load*(theDirName: StandardCString; theFileName: StandardCString): bool {.
    importcpp: "Message_MsgFile::Load(@)", header: "Message_MsgFile.hxx".}
proc loadFile*(theFName: StandardCString): bool {.
    importcpp: "Message_MsgFile::LoadFile(@)", header: "Message_MsgFile.hxx".}
proc loadFromEnv*(theEnvName: StandardCString; theFileName: StandardCString;
                 theLangExt: StandardCString = ""): bool {.
    importcpp: "Message_MsgFile::LoadFromEnv(@)", header: "Message_MsgFile.hxx".}
proc loadFromString*(theContent: StandardCString; theLength: int = -1): bool {.
    importcpp: "Message_MsgFile::LoadFromString(@)", header: "Message_MsgFile.hxx".}
proc addMsg*(key: TCollectionAsciiString; text: TCollectionExtendedString): bool {.
    importcpp: "Message_MsgFile::AddMsg(@)", header: "Message_MsgFile.hxx".}
proc hasMsg*(key: TCollectionAsciiString): bool {.
    importcpp: "Message_MsgFile::HasMsg(@)", header: "Message_MsgFile.hxx".}
proc msg*(key: StandardCString): TCollectionExtendedString {.
    importcpp: "Message_MsgFile::Msg(@)", header: "Message_MsgFile.hxx".}
proc msg*(key: TCollectionAsciiString): TCollectionExtendedString {.
    importcpp: "Message_MsgFile::Msg(@)", header: "Message_MsgFile.hxx".}
