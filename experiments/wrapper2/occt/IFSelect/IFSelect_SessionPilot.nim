##  Created on: 1993-07-27
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfAsciiString, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_SequenceOfAsciiString,
  IFSelect_Activator, ../Standard/Standard_CString, IFSelect_ReturnStatus,
  IFSelect_PrintCount

discard "forward decl of IFSelect_WorkSession"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_SessionPilot"
type
  Handle_IFSelect_SessionPilot* = handle[IFSelect_SessionPilot]

## ! A SessionPilot is intended to make easier the use of a
## ! WorkSession. It receives commands, under alphanumeric form,
## ! then calls a library of Activators to interprete and run them.
## !
## ! Then, WorkSession just records data required to work :
## ! Rules for Selection, Dispatch ... ; File Data (InterfaceModel
## ! and results of Evaluations and Transfer as required).
## ! SessionPilot records and works with alphanumeric commands and
## ! their results (under a very simple form). It calls a list of
## ! Activators to perform the actions.
## !
## ! A Command can have several forms :
## ! - classic execution, to list, evaluate, or enrich the session
## ! - command which creates a new item (a Selection for instance)
## ! such a command should not add it to the session, but make it
## ! recorded by the Pilot (method RecordItem). The Pilot will
## ! add the item in the session, with no name
## ! -> such a command may be called :
## ! - directly, it will add an item with no name
## ! - by command xset, in the following form :
## ! xset name command ...  calls the command and adds the item
## ! to the session under the specified name (if not yet known)
## !
## ! Thus, to a specific Norm or way of working, only Activators
## ! change. A specific Initialisation can be done by starting
## ! with a specific set of commands.
## !
## ! In addition, SessionPilot is a sub-type of Activator, to
## ! recognize some built-in commands : exit/x, help/?, control of
## ! command line, and commands xstep xset ... See method Do
## !
## ! At least, empty lines and comment lines (beginning by '#')
## ! are skipped (comment lines are display if read from file)

type
  IFSelect_SessionPilot* {.importcpp: "IFSelect_SessionPilot",
                          header: "IFSelect_SessionPilot.hxx", bycopy.} = object of IFSelect_Activator ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SessionPilot,
                                                                                                ## with
                                                                                                ## a
                                                                                                ## prompt
                                                                                                ## which
                                                                                                ## will
                                                                                                ## be
                                                                                                ##
                                                                                                ## !
                                                                                                ## displayed
                                                                                                ## on
                                                                                                ## querying
                                                                                                ## commands.
                                                                                                ## If
                                                                                                ## not
                                                                                                ## precised
                                                                                                ## (""),
                                                                                                ## this
                                                                                                ##
                                                                                                ## !
                                                                                                ## prompt
                                                                                                ## is
                                                                                                ## set
                                                                                                ## to
                                                                                                ## "Test-XSTEP>"


proc constructIFSelect_SessionPilot*(prompt: Standard_CString = ""): IFSelect_SessionPilot {.
    constructor, importcpp: "IFSelect_SessionPilot(@)",
    header: "IFSelect_SessionPilot.hxx".}
proc Session*(this: IFSelect_SessionPilot): handle[IFSelect_WorkSession] {.
    noSideEffect, importcpp: "Session", header: "IFSelect_SessionPilot.hxx".}
proc Library*(this: IFSelect_SessionPilot): handle[IFSelect_WorkLibrary] {.
    noSideEffect, importcpp: "Library", header: "IFSelect_SessionPilot.hxx".}
proc RecordMode*(this: IFSelect_SessionPilot): Standard_Boolean {.noSideEffect,
    importcpp: "RecordMode", header: "IFSelect_SessionPilot.hxx".}
proc SetSession*(this: var IFSelect_SessionPilot; WS: handle[IFSelect_WorkSession]) {.
    importcpp: "SetSession", header: "IFSelect_SessionPilot.hxx".}
proc SetLibrary*(this: var IFSelect_SessionPilot; WL: handle[IFSelect_WorkLibrary]) {.
    importcpp: "SetLibrary", header: "IFSelect_SessionPilot.hxx".}
proc SetRecordMode*(this: var IFSelect_SessionPilot; mode: Standard_Boolean) {.
    importcpp: "SetRecordMode", header: "IFSelect_SessionPilot.hxx".}
proc SetCommandLine*(this: var IFSelect_SessionPilot;
                    command: TCollection_AsciiString) {.
    importcpp: "SetCommandLine", header: "IFSelect_SessionPilot.hxx".}
proc CommandLine*(this: IFSelect_SessionPilot): TCollection_AsciiString {.
    noSideEffect, importcpp: "CommandLine", header: "IFSelect_SessionPilot.hxx".}
proc CommandPart*(this: IFSelect_SessionPilot; numarg: Standard_Integer = 0): Standard_CString {.
    noSideEffect, importcpp: "CommandPart", header: "IFSelect_SessionPilot.hxx".}
proc NbWords*(this: IFSelect_SessionPilot): Standard_Integer {.noSideEffect,
    importcpp: "NbWords", header: "IFSelect_SessionPilot.hxx".}
proc Word*(this: IFSelect_SessionPilot; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Word", header: "IFSelect_SessionPilot.hxx".}
proc Arg*(this: IFSelect_SessionPilot; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Arg", header: "IFSelect_SessionPilot.hxx".}
proc RemoveWord*(this: var IFSelect_SessionPilot; num: Standard_Integer): Standard_Boolean {.
    importcpp: "RemoveWord", header: "IFSelect_SessionPilot.hxx".}
proc NbCommands*(this: IFSelect_SessionPilot): Standard_Integer {.noSideEffect,
    importcpp: "NbCommands", header: "IFSelect_SessionPilot.hxx".}
proc Command*(this: IFSelect_SessionPilot; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Command", header: "IFSelect_SessionPilot.hxx".}
proc RecordItem*(this: var IFSelect_SessionPilot; item: handle[Standard_Transient]): IFSelect_ReturnStatus {.
    importcpp: "RecordItem", header: "IFSelect_SessionPilot.hxx".}
proc RecordedItem*(this: IFSelect_SessionPilot): handle[Standard_Transient] {.
    noSideEffect, importcpp: "RecordedItem", header: "IFSelect_SessionPilot.hxx".}
proc Clear*(this: var IFSelect_SessionPilot) {.importcpp: "Clear",
    header: "IFSelect_SessionPilot.hxx".}
proc ReadScript*(this: var IFSelect_SessionPilot; file: Standard_CString = ""): IFSelect_ReturnStatus {.
    importcpp: "ReadScript", header: "IFSelect_SessionPilot.hxx".}
proc Perform*(this: var IFSelect_SessionPilot): IFSelect_ReturnStatus {.
    importcpp: "Perform", header: "IFSelect_SessionPilot.hxx".}
proc ExecuteAlias*(this: var IFSelect_SessionPilot;
                  aliasname: TCollection_AsciiString): IFSelect_ReturnStatus {.
    importcpp: "ExecuteAlias", header: "IFSelect_SessionPilot.hxx".}
proc Execute*(this: var IFSelect_SessionPilot; command: TCollection_AsciiString): IFSelect_ReturnStatus {.
    importcpp: "Execute", header: "IFSelect_SessionPilot.hxx".}
proc ExecuteCounter*(this: var IFSelect_SessionPilot;
                    counter: handle[IFSelect_SignCounter];
                    numword: Standard_Integer;
                    mode: IFSelect_PrintCount = IFSelect_CountByItem): IFSelect_ReturnStatus {.
    importcpp: "ExecuteCounter", header: "IFSelect_SessionPilot.hxx".}
proc Number*(this: IFSelect_SessionPilot; val: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Number", header: "IFSelect_SessionPilot.hxx".}
proc Do*(this: var IFSelect_SessionPilot; number: Standard_Integer;
        session: handle[IFSelect_SessionPilot]): IFSelect_ReturnStatus {.
    importcpp: "Do", header: "IFSelect_SessionPilot.hxx".}
proc Help*(this: IFSelect_SessionPilot; number: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Help", header: "IFSelect_SessionPilot.hxx".}
type
  IFSelect_SessionPilotbase_type* = IFSelect_Activator

proc get_type_name*(): cstring {.importcpp: "IFSelect_SessionPilot::get_type_name(@)",
                              header: "IFSelect_SessionPilot.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SessionPilot::get_type_descriptor(@)",
    header: "IFSelect_SessionPilot.hxx".}
proc DynamicType*(this: IFSelect_SessionPilot): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SessionPilot.hxx".}