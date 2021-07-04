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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
type
  Message_MsgFile* {.importcpp: "Message_MsgFile", header: "Message_MsgFile.hxx",
                    bycopy.} = object ## ! Load message file <theFileName> from directory <theDirName>
                                   ## ! or its sub-directory


proc Load*(theDirName: Standard_CString; theFileName: Standard_CString): Standard_Boolean {.
    importcpp: "Message_MsgFile::Load(@)", header: "Message_MsgFile.hxx".}
proc LoadFile*(theFName: Standard_CString): Standard_Boolean {.
    importcpp: "Message_MsgFile::LoadFile(@)", header: "Message_MsgFile.hxx".}
proc LoadFromEnv*(theEnvName: Standard_CString; theFileName: Standard_CString;
                 theLangExt: Standard_CString = ""): Standard_Boolean {.
    importcpp: "Message_MsgFile::LoadFromEnv(@)", header: "Message_MsgFile.hxx".}
proc LoadFromString*(theContent: Standard_CString;
                    theLength: Standard_Integer = -1): Standard_Boolean {.
    importcpp: "Message_MsgFile::LoadFromString(@)", header: "Message_MsgFile.hxx".}
proc AddMsg*(key: TCollection_AsciiString; text: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Message_MsgFile::AddMsg(@)", header: "Message_MsgFile.hxx".}
proc HasMsg*(key: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "Message_MsgFile::HasMsg(@)", header: "Message_MsgFile.hxx".}
proc Msg*(key: Standard_CString): TCollection_ExtendedString {.
    importcpp: "Message_MsgFile::Msg(@)", header: "Message_MsgFile.hxx".}
proc Msg*(key: TCollection_AsciiString): TCollection_ExtendedString {.
    importcpp: "Message_MsgFile::Msg(@)", header: "Message_MsgFile.hxx".}