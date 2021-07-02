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

discard "forward decl of IFSelect_WorkSession"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
type
  IFSelectSessionFile* {.importcpp: "IFSelect_SessionFile",
                        header: "IFSelect_SessionFile.hxx", bycopy.} = object ## ! Creates a
                                                                         ## SessionFile, ready to read Files in order to load
                                                                         ## ! them into a given
                                                                         ## WorkSession.
                                                                         ## ! The
                                                                         ## following Read
                                                                         ## Operations must then be called.
                                                                         ## ! It is also
                                                                         ## possible to perform a Write, which
                                                                         ## produces a
                                                                         ## !
                                                                         ## complete File of all the content of the
                                                                         ## WorkSession.


proc constructIFSelectSessionFile*(ws: Handle[IFSelectWorkSession]): IFSelectSessionFile {.
    constructor, importcpp: "IFSelect_SessionFile(@)",
    header: "IFSelect_SessionFile.hxx".}
proc constructIFSelectSessionFile*(ws: Handle[IFSelectWorkSession];
                                  filename: StandardCString): IFSelectSessionFile {.
    constructor, importcpp: "IFSelect_SessionFile(@)",
    header: "IFSelect_SessionFile.hxx".}
proc clearLines*(this: var IFSelectSessionFile) {.importcpp: "ClearLines",
    header: "IFSelect_SessionFile.hxx".}
proc nbLines*(this: IFSelectSessionFile): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "IFSelect_SessionFile.hxx".}
proc line*(this: IFSelectSessionFile; num: StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "Line", header: "IFSelect_SessionFile.hxx".}
proc addLine*(this: var IFSelectSessionFile; line: StandardCString) {.
    importcpp: "AddLine", header: "IFSelect_SessionFile.hxx".}
proc removeLastLine*(this: var IFSelectSessionFile) {.importcpp: "RemoveLastLine",
    header: "IFSelect_SessionFile.hxx".}
proc writeFile*(this: var IFSelectSessionFile; name: StandardCString): StandardBoolean {.
    importcpp: "WriteFile", header: "IFSelect_SessionFile.hxx".}
proc readFile*(this: var IFSelectSessionFile; name: StandardCString): StandardBoolean {.
    importcpp: "ReadFile", header: "IFSelect_SessionFile.hxx".}
proc recognizeFile*(this: var IFSelectSessionFile; headerline: StandardCString): StandardBoolean {.
    importcpp: "RecognizeFile", header: "IFSelect_SessionFile.hxx".}
proc write*(this: var IFSelectSessionFile; filename: StandardCString): StandardInteger {.
    importcpp: "Write", header: "IFSelect_SessionFile.hxx".}
proc read*(this: var IFSelectSessionFile; filename: StandardCString): StandardInteger {.
    importcpp: "Read", header: "IFSelect_SessionFile.hxx".}
proc writeSession*(this: var IFSelectSessionFile): StandardInteger {.
    importcpp: "WriteSession", header: "IFSelect_SessionFile.hxx".}
proc writeEnd*(this: var IFSelectSessionFile): StandardInteger {.
    importcpp: "WriteEnd", header: "IFSelect_SessionFile.hxx".}
proc writeLine*(this: var IFSelectSessionFile; line: StandardCString;
               follow: StandardCharacter = 0) {.importcpp: "WriteLine",
    header: "IFSelect_SessionFile.hxx".}
proc writeOwn*(this: var IFSelectSessionFile; item: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "WriteOwn", header: "IFSelect_SessionFile.hxx".}
proc readSession*(this: var IFSelectSessionFile): StandardInteger {.
    importcpp: "ReadSession", header: "IFSelect_SessionFile.hxx".}
proc readEnd*(this: var IFSelectSessionFile): StandardInteger {.importcpp: "ReadEnd",
    header: "IFSelect_SessionFile.hxx".}
proc readLine*(this: var IFSelectSessionFile): StandardBoolean {.
    importcpp: "ReadLine", header: "IFSelect_SessionFile.hxx".}
proc splitLine*(this: var IFSelectSessionFile; line: StandardCString) {.
    importcpp: "SplitLine", header: "IFSelect_SessionFile.hxx".}
proc readOwn*(this: var IFSelectSessionFile; item: var Handle[StandardTransient]): StandardBoolean {.
    importcpp: "ReadOwn", header: "IFSelect_SessionFile.hxx".}
proc addItem*(this: var IFSelectSessionFile; item: Handle[StandardTransient];
             active: StandardBoolean = standardTrue) {.importcpp: "AddItem",
    header: "IFSelect_SessionFile.hxx".}
proc isDone*(this: IFSelectSessionFile): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IFSelect_SessionFile.hxx".}
proc workSession*(this: IFSelectSessionFile): Handle[IFSelectWorkSession] {.
    noSideEffect, importcpp: "WorkSession", header: "IFSelect_SessionFile.hxx".}
proc newItem*(this: var IFSelectSessionFile; ident: StandardInteger;
             par: Handle[StandardTransient]) {.importcpp: "NewItem",
    header: "IFSelect_SessionFile.hxx".}
proc setOwn*(this: var IFSelectSessionFile; mode: StandardBoolean) {.
    importcpp: "SetOwn", header: "IFSelect_SessionFile.hxx".}
proc sendVoid*(this: var IFSelectSessionFile) {.importcpp: "SendVoid",
    header: "IFSelect_SessionFile.hxx".}
proc sendItem*(this: var IFSelectSessionFile; par: Handle[StandardTransient]) {.
    importcpp: "SendItem", header: "IFSelect_SessionFile.hxx".}
proc sendText*(this: var IFSelectSessionFile; text: StandardCString) {.
    importcpp: "SendText", header: "IFSelect_SessionFile.hxx".}
proc setLastGeneral*(this: var IFSelectSessionFile; lastgen: StandardInteger) {.
    importcpp: "SetLastGeneral", header: "IFSelect_SessionFile.hxx".}
proc nbParams*(this: IFSelectSessionFile): StandardInteger {.noSideEffect,
    importcpp: "NbParams", header: "IFSelect_SessionFile.hxx".}
proc isVoid*(this: IFSelectSessionFile; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsVoid", header: "IFSelect_SessionFile.hxx".}
proc isText*(this: IFSelectSessionFile; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsText", header: "IFSelect_SessionFile.hxx".}
proc paramValue*(this: IFSelectSessionFile; num: StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "ParamValue", header: "IFSelect_SessionFile.hxx".}
proc textValue*(this: IFSelectSessionFile; num: StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "TextValue", header: "IFSelect_SessionFile.hxx".}
proc itemValue*(this: IFSelectSessionFile; num: StandardInteger): Handle[
    StandardTransient] {.noSideEffect, importcpp: "ItemValue",
                        header: "IFSelect_SessionFile.hxx".}
proc destroy*(this: var IFSelectSessionFile) {.importcpp: "Destroy",
    header: "IFSelect_SessionFile.hxx".}
proc destroyIFSelectSessionFile*(this: var IFSelectSessionFile) {.
    importcpp: "#.~IFSelect_SessionFile()", header: "IFSelect_SessionFile.hxx".}

