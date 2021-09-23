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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HSequenceOfHAsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, Interface_CheckStatus

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Message_Msg"
discard "forward decl of TCollection_HAsciiString"
when defined(Status):
  discard
discard "forward decl of Interface_Check"
discard "forward decl of Interface_Check"
type
  Handle_Interface_Check* = handle[Interface_Check]

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
  Interface_Check* {.importcpp: "Interface_Check", header: "Interface_Check.hxx",
                    bycopy.} = object of Standard_Transient ## ! Allows definition of a Sequence. Used also for Global Check
                                                       ## ! of an InterfaceModel (which stores global messages for file)


proc constructInterface_Check*(): Interface_Check {.constructor,
    importcpp: "Interface_Check(@)", header: "Interface_Check.hxx".}
proc constructInterface_Check*(anentity: handle[Standard_Transient]): Interface_Check {.
    constructor, importcpp: "Interface_Check(@)", header: "Interface_Check.hxx".}
proc SendFail*(this: var Interface_Check; amsg: Message_Msg) {.importcpp: "SendFail",
    header: "Interface_Check.hxx".}
proc AddFail*(this: var Interface_Check; amess: handle[TCollection_HAsciiString]) {.
    importcpp: "AddFail", header: "Interface_Check.hxx".}
proc AddFail*(this: var Interface_Check; amess: handle[TCollection_HAsciiString];
             orig: handle[TCollection_HAsciiString]) {.importcpp: "AddFail",
    header: "Interface_Check.hxx".}
proc AddFail*(this: var Interface_Check; amess: Standard_CString;
             orig: Standard_CString = "") {.importcpp: "AddFail",
                                        header: "Interface_Check.hxx".}
proc AddFail*(this: var Interface_Check; amsg: Message_Msg) {.importcpp: "AddFail",
    header: "Interface_Check.hxx".}
proc HasFailed*(this: Interface_Check): Standard_Boolean {.noSideEffect,
    importcpp: "HasFailed", header: "Interface_Check.hxx".}
proc NbFails*(this: Interface_Check): Standard_Integer {.noSideEffect,
    importcpp: "NbFails", header: "Interface_Check.hxx".}
proc Fail*(this: Interface_Check; num: Standard_Integer;
          final: Standard_Boolean = Standard_True): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Fail", header: "Interface_Check.hxx".}
proc CFail*(this: Interface_Check; num: Standard_Integer;
           final: Standard_Boolean = Standard_True): Standard_CString {.noSideEffect,
    importcpp: "CFail", header: "Interface_Check.hxx".}
proc Fails*(this: Interface_Check; final: Standard_Boolean = Standard_True): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "Fails",
                                      header: "Interface_Check.hxx".}
proc SendWarning*(this: var Interface_Check; amsg: Message_Msg) {.
    importcpp: "SendWarning", header: "Interface_Check.hxx".}
proc AddWarning*(this: var Interface_Check; amess: handle[TCollection_HAsciiString]) {.
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc AddWarning*(this: var Interface_Check; amess: handle[TCollection_HAsciiString];
                orig: handle[TCollection_HAsciiString]) {.importcpp: "AddWarning",
    header: "Interface_Check.hxx".}
proc AddWarning*(this: var Interface_Check; amess: Standard_CString;
                orig: Standard_CString = "") {.importcpp: "AddWarning",
    header: "Interface_Check.hxx".}
proc AddWarning*(this: var Interface_Check; amsg: Message_Msg) {.
    importcpp: "AddWarning", header: "Interface_Check.hxx".}
proc HasWarnings*(this: Interface_Check): Standard_Boolean {.noSideEffect,
    importcpp: "HasWarnings", header: "Interface_Check.hxx".}
proc NbWarnings*(this: Interface_Check): Standard_Integer {.noSideEffect,
    importcpp: "NbWarnings", header: "Interface_Check.hxx".}
proc Warning*(this: Interface_Check; num: Standard_Integer;
             final: Standard_Boolean = Standard_True): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Warning",
                               header: "Interface_Check.hxx".}
proc CWarning*(this: Interface_Check; num: Standard_Integer;
              final: Standard_Boolean = Standard_True): Standard_CString {.
    noSideEffect, importcpp: "CWarning", header: "Interface_Check.hxx".}
proc Warnings*(this: Interface_Check; final: Standard_Boolean = Standard_True): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "Warnings",
                                      header: "Interface_Check.hxx".}
proc SendMsg*(this: var Interface_Check; amsg: Message_Msg) {.importcpp: "SendMsg",
    header: "Interface_Check.hxx".}
proc NbInfoMsgs*(this: Interface_Check): Standard_Integer {.noSideEffect,
    importcpp: "NbInfoMsgs", header: "Interface_Check.hxx".}
proc InfoMsg*(this: Interface_Check; num: Standard_Integer;
             final: Standard_Boolean = Standard_True): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "InfoMsg",
                               header: "Interface_Check.hxx".}
proc CInfoMsg*(this: Interface_Check; num: Standard_Integer;
              final: Standard_Boolean = Standard_True): Standard_CString {.
    noSideEffect, importcpp: "CInfoMsg", header: "Interface_Check.hxx".}
proc InfoMsgs*(this: Interface_Check; final: Standard_Boolean = Standard_True): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "InfoMsgs",
                                      header: "Interface_Check.hxx".}
proc Status*(this: Interface_Check): Interface_CheckStatus {.noSideEffect,
    importcpp: "Status", header: "Interface_Check.hxx".}
proc Complies*(this: Interface_Check; status: Interface_CheckStatus): Standard_Boolean {.
    noSideEffect, importcpp: "Complies", header: "Interface_Check.hxx".}
proc Complies*(this: Interface_Check; mess: handle[TCollection_HAsciiString];
              incl: Standard_Integer; status: Interface_CheckStatus): Standard_Boolean {.
    noSideEffect, importcpp: "Complies", header: "Interface_Check.hxx".}
proc HasEntity*(this: Interface_Check): Standard_Boolean {.noSideEffect,
    importcpp: "HasEntity", header: "Interface_Check.hxx".}
proc Entity*(this: Interface_Check): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Entity", header: "Interface_Check.hxx".}
proc Clear*(this: var Interface_Check) {.importcpp: "Clear",
                                     header: "Interface_Check.hxx".}
proc ClearFails*(this: var Interface_Check) {.importcpp: "ClearFails",
    header: "Interface_Check.hxx".}
proc ClearWarnings*(this: var Interface_Check) {.importcpp: "ClearWarnings",
    header: "Interface_Check.hxx".}
proc ClearInfoMsgs*(this: var Interface_Check) {.importcpp: "ClearInfoMsgs",
    header: "Interface_Check.hxx".}
proc Remove*(this: var Interface_Check; mess: handle[TCollection_HAsciiString];
            incl: Standard_Integer; status: Interface_CheckStatus): Standard_Boolean {.
    importcpp: "Remove", header: "Interface_Check.hxx".}
proc Mend*(this: var Interface_Check; pref: Standard_CString;
          num: Standard_Integer = 0): Standard_Boolean {.importcpp: "Mend",
    header: "Interface_Check.hxx".}
proc SetEntity*(this: var Interface_Check; anentity: handle[Standard_Transient]) {.
    importcpp: "SetEntity", header: "Interface_Check.hxx".}
proc GetEntity*(this: var Interface_Check; anentity: handle[Standard_Transient]) {.
    importcpp: "GetEntity", header: "Interface_Check.hxx".}
proc GetMessages*(this: var Interface_Check; other: handle[Interface_Check]) {.
    importcpp: "GetMessages", header: "Interface_Check.hxx".}
proc GetAsWarning*(this: var Interface_Check; other: handle[Interface_Check];
                  failsonly: Standard_Boolean) {.importcpp: "GetAsWarning",
    header: "Interface_Check.hxx".}
proc Print*(this: Interface_Check; S: var Standard_OStream; level: Standard_Integer;
           final: Standard_Integer = 1) {.noSideEffect, importcpp: "Print",
                                      header: "Interface_Check.hxx".}
proc Trace*(this: Interface_Check; level: Standard_Integer = -1;
           final: Standard_Integer = 1) {.noSideEffect, importcpp: "Trace",
                                      header: "Interface_Check.hxx".}
type
  Interface_Checkbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_Check::get_type_name(@)",
                              header: "Interface_Check.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_Check::get_type_descriptor(@)",
    header: "Interface_Check.hxx".}
proc DynamicType*(this: Interface_Check): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_Check.hxx".}