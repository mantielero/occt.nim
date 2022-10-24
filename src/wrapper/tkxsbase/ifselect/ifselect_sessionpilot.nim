import ifselect_types

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




proc newIFSelectSessionPilot*(prompt: cstring = ""): IFSelectSessionPilot {.cdecl,
    constructor, importcpp: "IFSelect_SessionPilot(@)", header: "IFSelect_SessionPilot.hxx".}
proc session*(this: IFSelectSessionPilot): Handle[IFSelectWorkSession] {.
    noSideEffect, cdecl, importcpp: "Session", header: "IFSelect_SessionPilot.hxx".}
proc library*(this: IFSelectSessionPilot): Handle[IFSelectWorkLibrary] {.
    noSideEffect, cdecl, importcpp: "Library", header: "IFSelect_SessionPilot.hxx".}
proc recordMode*(this: IFSelectSessionPilot): bool {.noSideEffect, cdecl,
    importcpp: "RecordMode", header: "IFSelect_SessionPilot.hxx".}
proc setSession*(this: var IFSelectSessionPilot; ws: Handle[IFSelectWorkSession]) {.
    cdecl, importcpp: "SetSession", header: "IFSelect_SessionPilot.hxx".}
proc setLibrary*(this: var IFSelectSessionPilot; wl: Handle[IFSelectWorkLibrary]) {.
    cdecl, importcpp: "SetLibrary", header: "IFSelect_SessionPilot.hxx".}
proc setRecordMode*(this: var IFSelectSessionPilot; mode: bool) {.cdecl,
    importcpp: "SetRecordMode", header: "IFSelect_SessionPilot.hxx".}
proc setCommandLine*(this: var IFSelectSessionPilot; command: TCollectionAsciiString) {.
    cdecl, importcpp: "SetCommandLine", header: "IFSelect_SessionPilot.hxx".}
proc commandLine*(this: IFSelectSessionPilot): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "CommandLine", header: "IFSelect_SessionPilot.hxx".}
proc commandPart*(this: IFSelectSessionPilot; numarg: cint = 0): cstring {.noSideEffect,
    cdecl, importcpp: "CommandPart", header: "IFSelect_SessionPilot.hxx".}
proc nbWords*(this: IFSelectSessionPilot): cint {.noSideEffect, cdecl,
    importcpp: "NbWords", header: "IFSelect_SessionPilot.hxx".}
proc word*(this: IFSelectSessionPilot; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Word", header: "IFSelect_SessionPilot.hxx".}
proc arg*(this: IFSelectSessionPilot; num: cint): cstring {.noSideEffect, cdecl,
    importcpp: "Arg", header: "IFSelect_SessionPilot.hxx".}
proc removeWord*(this: var IFSelectSessionPilot; num: cint): bool {.cdecl,
    importcpp: "RemoveWord", header: "IFSelect_SessionPilot.hxx".}
proc nbCommands*(this: IFSelectSessionPilot): cint {.noSideEffect, cdecl,
    importcpp: "NbCommands", header: "IFSelect_SessionPilot.hxx".}
proc command*(this: IFSelectSessionPilot; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Command", header: "IFSelect_SessionPilot.hxx".}
proc recordItem*(this: var IFSelectSessionPilot; item: Handle[StandardTransient]): IFSelectReturnStatus {.
    cdecl, importcpp: "RecordItem", header: "IFSelect_SessionPilot.hxx".}
proc recordedItem*(this: IFSelectSessionPilot): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "RecordedItem", header: "IFSelect_SessionPilot.hxx".}
proc clear*(this: var IFSelectSessionPilot) {.cdecl, importcpp: "Clear",
    header: "IFSelect_SessionPilot.hxx".}
proc readScript*(this: var IFSelectSessionPilot; file: cstring = ""): IFSelectReturnStatus {.
    cdecl, importcpp: "ReadScript", header: "IFSelect_SessionPilot.hxx".}
proc perform*(this: var IFSelectSessionPilot): IFSelectReturnStatus {.cdecl,
    importcpp: "Perform", header: "IFSelect_SessionPilot.hxx".}
proc executeAlias*(this: var IFSelectSessionPilot; aliasname: TCollectionAsciiString): IFSelectReturnStatus {.
    cdecl, importcpp: "ExecuteAlias", header: "IFSelect_SessionPilot.hxx".}
proc execute*(this: var IFSelectSessionPilot; command: TCollectionAsciiString): IFSelectReturnStatus {.
    cdecl, importcpp: "Execute", header: "IFSelect_SessionPilot.hxx".}
proc executeCounter*(this: var IFSelectSessionPilot;
                    counter: Handle[IFSelectSignCounter]; numword: cint;
                    mode: IFSelectPrintCount = iFSelectCountByItem): IFSelectReturnStatus {.
    cdecl, importcpp: "ExecuteCounter", header: "IFSelect_SessionPilot.hxx".}
proc number*(this: IFSelectSessionPilot; val: cstring): cint {.noSideEffect, cdecl,
    importcpp: "Number", header: "IFSelect_SessionPilot.hxx".}
proc `do`*(this: var IFSelectSessionPilot; number: cint;
          session: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.cdecl,
    importcpp: "Do", header: "IFSelect_SessionPilot.hxx".}
proc help*(this: IFSelectSessionPilot; number: cint): cstring {.noSideEffect, cdecl,
    importcpp: "Help", header: "IFSelect_SessionPilot.hxx".}
