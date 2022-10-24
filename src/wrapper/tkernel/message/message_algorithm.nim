import message_types

##  Created on: 2007-07-06
##  Created by: Pavel TELKOV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of Message_Msg"
discard "forward decl of TColStd_HPackedMapOfInteger"
discard "forward decl of Message_Algorithm"




proc newMessageAlgorithm*(): MessageAlgorithm {.cdecl, constructor,
    importcpp: "Message_Algorithm(@)", header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus) {.cdecl,
    importcpp: "SetStatus", header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus; theInt: cint) {.
    cdecl, importcpp: "SetStatus", header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus; theStr: cstring;
               noRepetitions: bool = true) {.cdecl, importcpp: "SetStatus",
    header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus;
               theStr: TCollectionAsciiString; noRepetitions: bool = true) {.cdecl,
    importcpp: "SetStatus", header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus;
               theStr: Handle[TCollectionHAsciiString]; noRepetitions: bool = true) {.
    cdecl, importcpp: "SetStatus", header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus;
               theStr: TCollectionExtendedString; noRepetitions: bool = true) {.cdecl,
    importcpp: "SetStatus", header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus;
               theStr: Handle[TCollectionHExtendedString];
               noRepetitions: bool = true) {.cdecl, importcpp: "SetStatus",
    header: "Message_Algorithm.hxx".}
proc setStatus*(this: var MessageAlgorithm; theStat: MessageStatus; theMsg: MessageMsg) {.
    cdecl, importcpp: "SetStatus", header: "Message_Algorithm.hxx".}
proc getStatus*(this: MessageAlgorithm): MessageExecStatus {.noSideEffect, cdecl,
    importcpp: "GetStatus", header: "Message_Algorithm.hxx".}
proc changeStatus*(this: var MessageAlgorithm): var MessageExecStatus {.cdecl,
    importcpp: "ChangeStatus", header: "Message_Algorithm.hxx".}
proc clearStatus*(this: var MessageAlgorithm) {.cdecl, importcpp: "ClearStatus",
    header: "Message_Algorithm.hxx".}
proc setMessenger*(this: var MessageAlgorithm; theMsgr: Handle[MessageMessenger]) {.
    cdecl, importcpp: "SetMessenger", header: "Message_Algorithm.hxx".}
proc getMessenger*(this: MessageAlgorithm): Handle[MessageMessenger] {.noSideEffect,
    cdecl, importcpp: "GetMessenger", header: "Message_Algorithm.hxx".}
proc sendStatusMessages*(this: MessageAlgorithm; theFilter: MessageExecStatus;
                        theTraceLevel: MessageGravity = 2.MessageGravity;
                        theMaxCount: cint = 20) {.noSideEffect, cdecl,
    importcpp: "SendStatusMessages", header: "Message_Algorithm.hxx".}
proc sendMessages*(this: MessageAlgorithm;
                  theTraceLevel: MessageGravity = 2.MessageGravity;
                  theMaxCount: cint = 20) {.noSideEffect, cdecl,
                                        importcpp: "SendMessages", header: "Message_Algorithm.hxx".}
proc addStatus*(this: var MessageAlgorithm; theOther: Handle[MessageAlgorithm]) {.
    cdecl, importcpp: "AddStatus", header: "Message_Algorithm.hxx".}
proc addStatus*(this: var MessageAlgorithm; theStatus: MessageExecStatus;
               theOther: Handle[MessageAlgorithm]) {.cdecl, importcpp: "AddStatus",
    header: "Message_Algorithm.hxx".}
proc getMessageNumbers*(this: MessageAlgorithm; theStatus: MessageStatus): Handle[
    TColStdHPackedMapOfInteger] {.noSideEffect, cdecl,
                                 importcpp: "GetMessageNumbers", header: "Message_Algorithm.hxx".}
proc getMessageStrings*(this: MessageAlgorithm; theStatus: MessageStatus): Handle[
    TColStdHSequenceOfHExtendedString] {.noSideEffect, cdecl,
                                        importcpp: "GetMessageStrings",
                                        header: "Message_Algorithm.hxx".}
proc prepareReport*(theError: Handle[TColStdHPackedMapOfInteger]; theMaxCount: cint): TCollectionExtendedString {.
    cdecl, importcpp: "Message_Algorithm::PrepareReport(@)", header: "Message_Algorithm.hxx".}
proc prepareReport*(theReportSeq: TColStdSequenceOfHExtendedString;
                   theMaxCount: cint): TCollectionExtendedString {.cdecl,
    importcpp: "Message_Algorithm::PrepareReport(@)", header: "Message_Algorithm.hxx".}
