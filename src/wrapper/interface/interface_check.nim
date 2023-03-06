import interface_types
import ../tcollection/tcollection_types
import ../standard/standard_types
import ../message/message_types
import ../tcolstd/tcolstd_types







##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

when defined(Status):
  discard




proc newInterfaceCheck*(): InterfaceCheck {.cdecl, constructor,
    importcpp: "Interface_Check(@)", header: "Interface_Check.hxx".}
proc newInterfaceCheck*(anentity: Handle[StandardTransient]): InterfaceCheck {.
    cdecl, constructor, importcpp: "Interface_Check(@)", header: "Interface_Check.hxx".}
proc sendFail*(this: var InterfaceCheck; amsg: MessageMsg) {.cdecl,
    importcpp: "SendFail", header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "AddFail", header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString];
             orig: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "AddFail",
    header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amess: cstring; orig: cstring = "") {.cdecl,
    importcpp: "AddFail", header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amsg: MessageMsg) {.cdecl,
    importcpp: "AddFail", header: "Interface_Check.hxx".}
proc hasFailed*(this: InterfaceCheck): bool {.noSideEffect, cdecl,
    importcpp: "HasFailed", header: "Interface_Check.hxx".}
proc nbFails*(this: InterfaceCheck): cint {.noSideEffect, cdecl, importcpp: "NbFails",
                                        header: "Interface_Check.hxx".}
proc fail*(this: InterfaceCheck; num: cint; final: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Fail",
                              header: "Interface_Check.hxx".}
proc cFail*(this: InterfaceCheck; num: cint; final: bool = true): cstring {.noSideEffect,
    cdecl, importcpp: "CFail", header: "Interface_Check.hxx".}
proc fails*(this: InterfaceCheck; final: bool = true): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "Fails",
                                     header: "Interface_Check.hxx".}
proc sendWarning*(this: var InterfaceCheck; amsg: MessageMsg) {.cdecl,
    importcpp: "SendWarning", header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString];
                orig: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amess: cstring; orig: cstring = "") {.cdecl,
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amsg: MessageMsg) {.cdecl,
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc hasWarnings*(this: InterfaceCheck): bool {.noSideEffect, cdecl,
    importcpp: "HasWarnings", header: "Interface_Check.hxx".}
proc nbWarnings*(this: InterfaceCheck): cint {.noSideEffect, cdecl,
    importcpp: "NbWarnings", header: "Interface_Check.hxx".}
proc warning*(this: InterfaceCheck; num: cint; final: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "Warning",
                              header: "Interface_Check.hxx".}
proc cWarning*(this: InterfaceCheck; num: cint; final: bool = true): cstring {.
    noSideEffect, cdecl, importcpp: "CWarning", header: "Interface_Check.hxx".}
proc warnings*(this: InterfaceCheck; final: bool = true): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "Warnings",
                                     header: "Interface_Check.hxx".}
proc sendMsg*(this: var InterfaceCheck; amsg: MessageMsg) {.cdecl,
    importcpp: "SendMsg", header: "Interface_Check.hxx".}
proc nbInfoMsgs*(this: InterfaceCheck): cint {.noSideEffect, cdecl,
    importcpp: "NbInfoMsgs", header: "Interface_Check.hxx".}
proc infoMsg*(this: InterfaceCheck; num: cint; final: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "InfoMsg",
                              header: "Interface_Check.hxx".}
proc cInfoMsg*(this: InterfaceCheck; num: cint; final: bool = true): cstring {.
    noSideEffect, cdecl, importcpp: "CInfoMsg", header: "Interface_Check.hxx".}
proc infoMsgs*(this: InterfaceCheck; final: bool = true): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, cdecl, importcpp: "InfoMsgs",
                                     header: "Interface_Check.hxx".}
proc status*(this: InterfaceCheck): InterfaceCheckStatus {.noSideEffect, cdecl,
    importcpp: "Status", header: "Interface_Check.hxx".}
proc complies*(this: InterfaceCheck; status: InterfaceCheckStatus): bool {.
    noSideEffect, cdecl, importcpp: "Complies", header: "Interface_Check.hxx".}
proc complies*(this: InterfaceCheck; mess: Handle[TCollectionHAsciiString];
              incl: cint; status: InterfaceCheckStatus): bool {.noSideEffect, cdecl,
    importcpp: "Complies", header: "Interface_Check.hxx".}
proc hasEntity*(this: InterfaceCheck): bool {.noSideEffect, cdecl,
    importcpp: "HasEntity", header: "Interface_Check.hxx".}
proc entity*(this: InterfaceCheck): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "Entity", header: "Interface_Check.hxx".}
proc clear*(this: var InterfaceCheck) {.cdecl, importcpp: "Clear", header: "Interface_Check.hxx".}
proc clearFails*(this: var InterfaceCheck) {.cdecl, importcpp: "ClearFails",
    header: "Interface_Check.hxx".}
proc clearWarnings*(this: var InterfaceCheck) {.cdecl, importcpp: "ClearWarnings",
    header: "Interface_Check.hxx".}
proc clearInfoMsgs*(this: var InterfaceCheck) {.cdecl, importcpp: "ClearInfoMsgs",
    header: "Interface_Check.hxx".}
proc remove*(this: var InterfaceCheck; mess: Handle[TCollectionHAsciiString];
            incl: cint; status: InterfaceCheckStatus): bool {.cdecl,
    importcpp: "Remove", header: "Interface_Check.hxx".}
proc mend*(this: var InterfaceCheck; pref: cstring; num: cint = 0): bool {.cdecl,
    importcpp: "Mend", header: "Interface_Check.hxx".}
proc setEntity*(this: var InterfaceCheck; anentity: Handle[StandardTransient]) {.
    cdecl, importcpp: "SetEntity", header: "Interface_Check.hxx".}
proc getEntity*(this: var InterfaceCheck; anentity: Handle[StandardTransient]) {.
    cdecl, importcpp: "GetEntity", header: "Interface_Check.hxx".}
proc getMessages*(this: var InterfaceCheck; other: Handle[InterfaceCheck]) {.cdecl,
    importcpp: "GetMessages", header: "Interface_Check.hxx".}
proc getAsWarning*(this: var InterfaceCheck; other: Handle[InterfaceCheck];
                  failsonly: bool) {.cdecl, importcpp: "GetAsWarning",
                                   header: "Interface_Check.hxx".}
proc print*(this: InterfaceCheck; s: var StandardOStream; level: cint; final: cint = 1) {.
    noSideEffect, cdecl, importcpp: "Print", header: "Interface_Check.hxx".}
proc trace*(this: InterfaceCheck; level: cint = -1; final: cint = 1) {.noSideEffect, cdecl,
    importcpp: "Trace", header: "Interface_Check.hxx".}



