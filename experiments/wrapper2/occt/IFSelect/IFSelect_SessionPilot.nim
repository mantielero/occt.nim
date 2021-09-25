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

discard "forward decl of IFSelect_WorkSession"
discard "forward decl of Standard_Transient"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_SessionPilot"
type
  HandleIFSelectSessionPilot* = Handle[IFSelectSessionPilot]

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
  IFSelectSessionPilot* {.importcpp: "IFSelect_SessionPilot",
                         header: "IFSelect_SessionPilot.hxx", bycopy.} = object of IFSelectActivator ##
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


proc constructIFSelectSessionPilot*(prompt: StandardCString = ""): IFSelectSessionPilot {.
    constructor, importcpp: "IFSelect_SessionPilot(@)",
    header: "IFSelect_SessionPilot.hxx".}
proc session*(this: IFSelectSessionPilot): Handle[IFSelectWorkSession] {.
    noSideEffect, importcpp: "Session", header: "IFSelect_SessionPilot.hxx".}
proc library*(this: IFSelectSessionPilot): Handle[IFSelectWorkLibrary] {.
    noSideEffect, importcpp: "Library", header: "IFSelect_SessionPilot.hxx".}
proc recordMode*(this: IFSelectSessionPilot): bool {.noSideEffect,
    importcpp: "RecordMode", header: "IFSelect_SessionPilot.hxx".}
proc setSession*(this: var IFSelectSessionPilot; ws: Handle[IFSelectWorkSession]) {.
    importcpp: "SetSession", header: "IFSelect_SessionPilot.hxx".}
proc setLibrary*(this: var IFSelectSessionPilot; wl: Handle[IFSelectWorkLibrary]) {.
    importcpp: "SetLibrary", header: "IFSelect_SessionPilot.hxx".}
proc setRecordMode*(this: var IFSelectSessionPilot; mode: bool) {.
    importcpp: "SetRecordMode", header: "IFSelect_SessionPilot.hxx".}
proc setCommandLine*(this: var IFSelectSessionPilot; command: TCollectionAsciiString) {.
    importcpp: "SetCommandLine", header: "IFSelect_SessionPilot.hxx".}
proc commandLine*(this: IFSelectSessionPilot): TCollectionAsciiString {.
    noSideEffect, importcpp: "CommandLine", header: "IFSelect_SessionPilot.hxx".}
proc commandPart*(this: IFSelectSessionPilot; numarg: int = 0): StandardCString {.
    noSideEffect, importcpp: "CommandPart", header: "IFSelect_SessionPilot.hxx".}
proc nbWords*(this: IFSelectSessionPilot): int {.noSideEffect, importcpp: "NbWords",
    header: "IFSelect_SessionPilot.hxx".}
proc word*(this: IFSelectSessionPilot; num: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "Word", header: "IFSelect_SessionPilot.hxx".}
proc arg*(this: IFSelectSessionPilot; num: int): StandardCString {.noSideEffect,
    importcpp: "Arg", header: "IFSelect_SessionPilot.hxx".}
proc removeWord*(this: var IFSelectSessionPilot; num: int): bool {.
    importcpp: "RemoveWord", header: "IFSelect_SessionPilot.hxx".}
proc nbCommands*(this: IFSelectSessionPilot): int {.noSideEffect,
    importcpp: "NbCommands", header: "IFSelect_SessionPilot.hxx".}
proc command*(this: IFSelectSessionPilot; num: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "Command", header: "IFSelect_SessionPilot.hxx".}
proc recordItem*(this: var IFSelectSessionPilot; item: Handle[StandardTransient]): IFSelectReturnStatus {.
    importcpp: "RecordItem", header: "IFSelect_SessionPilot.hxx".}
proc recordedItem*(this: IFSelectSessionPilot): Handle[StandardTransient] {.
    noSideEffect, importcpp: "RecordedItem", header: "IFSelect_SessionPilot.hxx".}
proc clear*(this: var IFSelectSessionPilot) {.importcpp: "Clear",
    header: "IFSelect_SessionPilot.hxx".}
proc readScript*(this: var IFSelectSessionPilot; file: StandardCString = ""): IFSelectReturnStatus {.
    importcpp: "ReadScript", header: "IFSelect_SessionPilot.hxx".}
proc perform*(this: var IFSelectSessionPilot): IFSelectReturnStatus {.
    importcpp: "Perform", header: "IFSelect_SessionPilot.hxx".}
proc executeAlias*(this: var IFSelectSessionPilot; aliasname: TCollectionAsciiString): IFSelectReturnStatus {.
    importcpp: "ExecuteAlias", header: "IFSelect_SessionPilot.hxx".}
proc execute*(this: var IFSelectSessionPilot; command: TCollectionAsciiString): IFSelectReturnStatus {.
    importcpp: "Execute", header: "IFSelect_SessionPilot.hxx".}
proc executeCounter*(this: var IFSelectSessionPilot;
                    counter: Handle[IFSelectSignCounter]; numword: int;
                    mode: IFSelectPrintCount = iFSelectCountByItem): IFSelectReturnStatus {.
    importcpp: "ExecuteCounter", header: "IFSelect_SessionPilot.hxx".}
proc number*(this: IFSelectSessionPilot; val: StandardCString): int {.noSideEffect,
    importcpp: "Number", header: "IFSelect_SessionPilot.hxx".}
proc `do`*(this: var IFSelectSessionPilot; number: int;
          session: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.
    importcpp: "Do", header: "IFSelect_SessionPilot.hxx".}
proc help*(this: IFSelectSessionPilot; number: int): StandardCString {.noSideEffect,
    importcpp: "Help", header: "IFSelect_SessionPilot.hxx".}
type
  IFSelectSessionPilotbaseType* = IFSelectActivator

proc getTypeName*(): cstring {.importcpp: "IFSelect_SessionPilot::get_type_name(@)",
                            header: "IFSelect_SessionPilot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SessionPilot::get_type_descriptor(@)",
    header: "IFSelect_SessionPilot.hxx".}
proc dynamicType*(this: IFSelectSessionPilot): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SessionPilot.hxx".}
