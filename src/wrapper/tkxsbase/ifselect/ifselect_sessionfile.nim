import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types



##  Created on: 1993-11-03
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



proc newIFSelectSessionFile*(ws: Handle[IFSelectWorkSession]): IFSelectSessionFile {.
    cdecl, constructor, importcpp: "IFSelect_SessionFile(@)", header: "IFSelect_SessionFile.hxx".}
proc newIFSelectSessionFile*(ws: Handle[IFSelectWorkSession]; filename: cstring): IFSelectSessionFile {.
    cdecl, constructor, importcpp: "IFSelect_SessionFile(@)", header: "IFSelect_SessionFile.hxx".}
proc clearLines*(this: var IFSelectSessionFile) {.cdecl, importcpp: "ClearLines",
    header: "IFSelect_SessionFile.hxx".}
proc nbLines*(this: IFSelectSessionFile): cint {.noSideEffect, cdecl,
    importcpp: "NbLines", header: "IFSelect_SessionFile.hxx".}
proc line*(this: IFSelectSessionFile; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Line", header: "IFSelect_SessionFile.hxx".}
proc addLine*(this: var IFSelectSessionFile; line: cstring) {.cdecl,
    importcpp: "AddLine", header: "IFSelect_SessionFile.hxx".}
proc removeLastLine*(this: var IFSelectSessionFile) {.cdecl,
    importcpp: "RemoveLastLine", header: "IFSelect_SessionFile.hxx".}
proc writeFile*(this: var IFSelectSessionFile; name: cstring): bool {.cdecl,
    importcpp: "WriteFile", header: "IFSelect_SessionFile.hxx".}
proc readFile*(this: var IFSelectSessionFile; name: cstring): bool {.cdecl,
    importcpp: "ReadFile", header: "IFSelect_SessionFile.hxx".}
proc recognizeFile*(this: var IFSelectSessionFile; headerline: cstring): bool {.cdecl,
    importcpp: "RecognizeFile", header: "IFSelect_SessionFile.hxx".}
proc write*(this: var IFSelectSessionFile; filename: cstring): cint {.cdecl,
    importcpp: "Write", header: "IFSelect_SessionFile.hxx".}
proc read*(this: var IFSelectSessionFile; filename: cstring): cint {.cdecl,
    importcpp: "Read", header: "IFSelect_SessionFile.hxx".}
proc writeSession*(this: var IFSelectSessionFile): cint {.cdecl,
    importcpp: "WriteSession", header: "IFSelect_SessionFile.hxx".}
proc writeEnd*(this: var IFSelectSessionFile): cint {.cdecl, importcpp: "WriteEnd",
    header: "IFSelect_SessionFile.hxx".}
proc writeLine*(this: var IFSelectSessionFile; line: cstring; follow: cchar = cast[cchar](0)) {.cdecl,
    importcpp: "WriteLine", header: "IFSelect_SessionFile.hxx".}
proc writeOwn*(this: var IFSelectSessionFile; item: Handle[StandardTransient]): bool {.
    cdecl, importcpp: "WriteOwn", header: "IFSelect_SessionFile.hxx".}
proc readSession*(this: var IFSelectSessionFile): cint {.cdecl,
    importcpp: "ReadSession", header: "IFSelect_SessionFile.hxx".}
proc readEnd*(this: var IFSelectSessionFile): cint {.cdecl, importcpp: "ReadEnd",
    header: "IFSelect_SessionFile.hxx".}
proc readLine*(this: var IFSelectSessionFile): bool {.cdecl, importcpp: "ReadLine",
    header: "IFSelect_SessionFile.hxx".}
proc splitLine*(this: var IFSelectSessionFile; line: cstring) {.cdecl,
    importcpp: "SplitLine", header: "IFSelect_SessionFile.hxx".}
proc readOwn*(this: var IFSelectSessionFile; item: var Handle[StandardTransient]): bool {.
    cdecl, importcpp: "ReadOwn", header: "IFSelect_SessionFile.hxx".}
proc addItem*(this: var IFSelectSessionFile; item: Handle[StandardTransient];
             active: bool = true) {.cdecl, importcpp: "AddItem", header: "IFSelect_SessionFile.hxx".}
proc isDone*(this: IFSelectSessionFile): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "IFSelect_SessionFile.hxx".}
proc workSession*(this: IFSelectSessionFile): Handle[IFSelectWorkSession] {.
    noSideEffect, cdecl, importcpp: "WorkSession", header: "IFSelect_SessionFile.hxx".}
proc newItem*(this: var IFSelectSessionFile; ident: cint;
             par: Handle[StandardTransient]) {.cdecl, importcpp: "NewItem",
    header: "IFSelect_SessionFile.hxx".}
proc setOwn*(this: var IFSelectSessionFile; mode: bool) {.cdecl, importcpp: "SetOwn",
    header: "IFSelect_SessionFile.hxx".}
proc sendVoid*(this: var IFSelectSessionFile) {.cdecl, importcpp: "SendVoid",
    header: "IFSelect_SessionFile.hxx".}
proc sendItem*(this: var IFSelectSessionFile; par: Handle[StandardTransient]) {.cdecl,
    importcpp: "SendItem", header: "IFSelect_SessionFile.hxx".}
proc sendText*(this: var IFSelectSessionFile; text: cstring) {.cdecl,
    importcpp: "SendText", header: "IFSelect_SessionFile.hxx".}
proc setLastGeneral*(this: var IFSelectSessionFile; lastgen: cint) {.cdecl,
    importcpp: "SetLastGeneral", header: "IFSelect_SessionFile.hxx".}
proc nbParams*(this: IFSelectSessionFile): cint {.noSideEffect, cdecl,
    importcpp: "NbParams", header: "IFSelect_SessionFile.hxx".}
proc isVoid*(this: IFSelectSessionFile; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsVoid", header: "IFSelect_SessionFile.hxx".}
proc isText*(this: IFSelectSessionFile; num: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsText", header: "IFSelect_SessionFile.hxx".}
proc paramValue*(this: IFSelectSessionFile; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ParamValue", header: "IFSelect_SessionFile.hxx".}
proc textValue*(this: IFSelectSessionFile; num: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "TextValue", header: "IFSelect_SessionFile.hxx".}
proc itemValue*(this: IFSelectSessionFile; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "ItemValue", header: "IFSelect_SessionFile.hxx".}
proc destroy*(this: var IFSelectSessionFile) {.cdecl, importcpp: "Destroy",
    header: "IFSelect_SessionFile.hxx".}
proc destroyIFSelectSessionFile*(this: var IFSelectSessionFile) {.cdecl,
    importcpp: "#.~IFSelect_SessionFile()", header: "IFSelect_SessionFile.hxx".}

