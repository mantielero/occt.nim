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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Message_Msg"
discard "forward decl of TCollection_HAsciiString"
# when defined(Status):
#   discard
discard "forward decl of Interface_Check"
discard "forward decl of Interface_Check"
type
  HandleC1C1* = Handle[InterfaceCheck]

## ! Defines a Check, as a list of Fail or Warning Messages under
## ! a literal form, which can be empty. A Check can also bring an
## ! Entity, which is the Entity to which the messages apply
## ! (this Entity may be any Transient Object).
## !
## ! Messages can be stored in two forms : the definitive form
## ! (the only one by default), and another form, the original
## ! form, which can be different if it contains values to be
## ! inserted (integers, reals, strings)
## ! The original form can be more suitable for some operations
## ! such as counting messages

type
  InterfaceCheck* {.importcpp: "Interface_Check", header: "Interface_Check.hxx",
                   bycopy.} = object of StandardTransient ## ! Allows definition of a Sequence. Used also for Global Check
                                                     ## ! of an InterfaceModel (which stores global messages for file)


proc constructInterfaceCheck*(): InterfaceCheck {.constructor,
    importcpp: "Interface_Check(@)", header: "Interface_Check.hxx".}
proc constructInterfaceCheck*(anentity: Handle[StandardTransient]): InterfaceCheck {.
    constructor, importcpp: "Interface_Check(@)", header: "Interface_Check.hxx".}
proc sendFail*(this: var InterfaceCheck; amsg: MessageMsg) {.importcpp: "SendFail",
    header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString]) {.
    importcpp: "AddFail", header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString];
             orig: Handle[TCollectionHAsciiString]) {.importcpp: "AddFail",
    header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amess: StandardCString;
             orig: StandardCString = "") {.importcpp: "AddFail",
                                       header: "Interface_Check.hxx".}
proc addFail*(this: var InterfaceCheck; amsg: MessageMsg) {.importcpp: "AddFail",
    header: "Interface_Check.hxx".}
proc hasFailed*(this: InterfaceCheck): bool {.noSideEffect, importcpp: "HasFailed",
    header: "Interface_Check.hxx".}
proc nbFails*(this: InterfaceCheck): cint {.noSideEffect, importcpp: "NbFails",
                                        header: "Interface_Check.hxx".}
proc fail*(this: InterfaceCheck; num: cint; final: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Fail",
                              header: "Interface_Check.hxx".}
proc cFail*(this: InterfaceCheck; num: cint; final: bool = true): StandardCString {.
    noSideEffect, importcpp: "CFail", header: "Interface_Check.hxx".}
proc fails*(this: InterfaceCheck; final: bool = true): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "Fails",
                                     header: "Interface_Check.hxx".}
proc sendWarning*(this: var InterfaceCheck; amsg: MessageMsg) {.
    importcpp: "SendWarning", header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString]) {.
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amess: Handle[TCollectionHAsciiString];
                orig: Handle[TCollectionHAsciiString]) {.importcpp: "AddWarning",
    header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amess: StandardCString;
                orig: StandardCString = "") {.importcpp: "AddWarning",
    header: "Interface_Check.hxx".}
proc addWarning*(this: var InterfaceCheck; amsg: MessageMsg) {.
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc hasWarnings*(this: InterfaceCheck): bool {.noSideEffect,
    importcpp: "HasWarnings", header: "Interface_Check.hxx".}
proc nbWarnings*(this: InterfaceCheck): cint {.noSideEffect, importcpp: "NbWarnings",
    header: "Interface_Check.hxx".}
proc warning*(this: InterfaceCheck; num: cint; final: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Warning",
                              header: "Interface_Check.hxx".}
proc cWarning*(this: InterfaceCheck; num: cint; final: bool = true): StandardCString {.
    noSideEffect, importcpp: "CWarning", header: "Interface_Check.hxx".}
proc warnings*(this: InterfaceCheck; final: bool = true): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "Warnings",
                                     header: "Interface_Check.hxx".}
proc sendMsg*(this: var InterfaceCheck; amsg: MessageMsg) {.importcpp: "SendMsg",
    header: "Interface_Check.hxx".}
proc nbInfoMsgs*(this: InterfaceCheck): cint {.noSideEffect, importcpp: "NbInfoMsgs",
    header: "Interface_Check.hxx".}
proc infoMsg*(this: InterfaceCheck; num: cint; final: bool = true): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "InfoMsg",
                              header: "Interface_Check.hxx".}
proc cInfoMsg*(this: InterfaceCheck; num: cint; final: bool = true): StandardCString {.
    noSideEffect, importcpp: "CInfoMsg", header: "Interface_Check.hxx".}
proc infoMsgs*(this: InterfaceCheck; final: bool = true): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "InfoMsgs",
                                     header: "Interface_Check.hxx".}
proc status*(this: InterfaceCheck): InterfaceCheckStatus {.noSideEffect,
    importcpp: "Status", header: "Interface_Check.hxx".}
proc complies*(this: InterfaceCheck; status: InterfaceCheckStatus): bool {.
    noSideEffect, importcpp: "Complies", header: "Interface_Check.hxx".}
proc complies*(this: InterfaceCheck; mess: Handle[TCollectionHAsciiString];
              incl: cint; status: InterfaceCheckStatus): bool {.noSideEffect,
    importcpp: "Complies", header: "Interface_Check.hxx".}
proc hasEntity*(this: InterfaceCheck): bool {.noSideEffect, importcpp: "HasEntity",
    header: "Interface_Check.hxx".}
proc entity*(this: InterfaceCheck): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Entity", header: "Interface_Check.hxx".}
proc clear*(this: var InterfaceCheck) {.importcpp: "Clear",
                                    header: "Interface_Check.hxx".}
proc clearFails*(this: var InterfaceCheck) {.importcpp: "ClearFails",
    header: "Interface_Check.hxx".}
proc clearWarnings*(this: var InterfaceCheck) {.importcpp: "ClearWarnings",
    header: "Interface_Check.hxx".}
proc clearInfoMsgs*(this: var InterfaceCheck) {.importcpp: "ClearInfoMsgs",
    header: "Interface_Check.hxx".}
proc remove*(this: var InterfaceCheck; mess: Handle[TCollectionHAsciiString];
            incl: cint; status: InterfaceCheckStatus): bool {.importcpp: "Remove",
    header: "Interface_Check.hxx".}
proc mend*(this: var InterfaceCheck; pref: StandardCString; num: cint = 0): bool {.
    importcpp: "Mend", header: "Interface_Check.hxx".}
proc setEntity*(this: var InterfaceCheck; anentity: Handle[StandardTransient]) {.
    importcpp: "SetEntity", header: "Interface_Check.hxx".}
proc getEntity*(this: var InterfaceCheck; anentity: Handle[StandardTransient]) {.
    importcpp: "GetEntity", header: "Interface_Check.hxx".}
proc getMessages*(this: var InterfaceCheck; other: Handle[InterfaceCheck]) {.
    importcpp: "GetMessages", header: "Interface_Check.hxx".}
proc getAsWarning*(this: var InterfaceCheck; other: Handle[InterfaceCheck];
                  failsonly: bool) {.importcpp: "GetAsWarning",
                                   header: "Interface_Check.hxx".}
proc print*(this: InterfaceCheck; s: var StandardOStream; level: cint; final: cint = 1) {.
    noSideEffect, importcpp: "Print", header: "Interface_Check.hxx".}
proc trace*(this: InterfaceCheck; level: cint = -1; final: cint = 1) {.noSideEffect,
    importcpp: "Trace", header: "Interface_Check.hxx".}
type
  InterfaceCheckbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_Check::get_type_name(@)",
                            header: "Interface_Check.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_Check::get_type_descriptor(@)",
    header: "Interface_Check.hxx".}
proc dynamicType*(this: InterfaceCheck): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_Check.hxx".}

























