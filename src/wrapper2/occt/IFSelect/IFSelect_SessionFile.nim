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

import
  ../NCollection/NCollection_DataMap, ../Standard/Standard,
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_Handle,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_SequenceOfAsciiString, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_CString,
  ../Standard/Standard_Character

discard "forward decl of IFSelect_WorkSession"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
type
  IFSelect_SessionFile* {.importcpp: "IFSelect_SessionFile",
                         header: "IFSelect_SessionFile.hxx", bycopy.} = object ## !
                                                                          ## Creates a
                                                                          ## SessionFile, ready to read Files in order to load
                                                                          ## ! them into a given
                                                                          ## WorkSession.
                                                                          ## ! The
                                                                          ## following Read
                                                                          ## Operations must then be
                                                                          ## called.
                                                                          ## ! It is also
                                                                          ## possible to
                                                                          ## perform a Write, which
                                                                          ## produces a
                                                                          ## !
                                                                          ## complete File of all the
                                                                          ## content of the
                                                                          ## WorkSession.


proc constructIFSelect_SessionFile*(WS: handle[IFSelect_WorkSession]): IFSelect_SessionFile {.
    constructor, importcpp: "IFSelect_SessionFile(@)",
    header: "IFSelect_SessionFile.hxx".}
proc constructIFSelect_SessionFile*(WS: handle[IFSelect_WorkSession];
                                   filename: Standard_CString): IFSelect_SessionFile {.
    constructor, importcpp: "IFSelect_SessionFile(@)",
    header: "IFSelect_SessionFile.hxx".}
proc ClearLines*(this: var IFSelect_SessionFile) {.importcpp: "ClearLines",
    header: "IFSelect_SessionFile.hxx".}
proc NbLines*(this: IFSelect_SessionFile): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IFSelect_SessionFile.hxx".}
proc Line*(this: IFSelect_SessionFile; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Line", header: "IFSelect_SessionFile.hxx".}
proc AddLine*(this: var IFSelect_SessionFile; line: Standard_CString) {.
    importcpp: "AddLine", header: "IFSelect_SessionFile.hxx".}
proc RemoveLastLine*(this: var IFSelect_SessionFile) {.importcpp: "RemoveLastLine",
    header: "IFSelect_SessionFile.hxx".}
proc WriteFile*(this: var IFSelect_SessionFile; name: Standard_CString): Standard_Boolean {.
    importcpp: "WriteFile", header: "IFSelect_SessionFile.hxx".}
proc ReadFile*(this: var IFSelect_SessionFile; name: Standard_CString): Standard_Boolean {.
    importcpp: "ReadFile", header: "IFSelect_SessionFile.hxx".}
proc RecognizeFile*(this: var IFSelect_SessionFile; headerline: Standard_CString): Standard_Boolean {.
    importcpp: "RecognizeFile", header: "IFSelect_SessionFile.hxx".}
proc Write*(this: var IFSelect_SessionFile; filename: Standard_CString): Standard_Integer {.
    importcpp: "Write", header: "IFSelect_SessionFile.hxx".}
proc Read*(this: var IFSelect_SessionFile; filename: Standard_CString): Standard_Integer {.
    importcpp: "Read", header: "IFSelect_SessionFile.hxx".}
proc WriteSession*(this: var IFSelect_SessionFile): Standard_Integer {.
    importcpp: "WriteSession", header: "IFSelect_SessionFile.hxx".}
proc WriteEnd*(this: var IFSelect_SessionFile): Standard_Integer {.
    importcpp: "WriteEnd", header: "IFSelect_SessionFile.hxx".}
proc WriteLine*(this: var IFSelect_SessionFile; line: Standard_CString;
               follow: Standard_Character = 0) {.importcpp: "WriteLine",
    header: "IFSelect_SessionFile.hxx".}
proc WriteOwn*(this: var IFSelect_SessionFile; item: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "WriteOwn", header: "IFSelect_SessionFile.hxx".}
proc ReadSession*(this: var IFSelect_SessionFile): Standard_Integer {.
    importcpp: "ReadSession", header: "IFSelect_SessionFile.hxx".}
proc ReadEnd*(this: var IFSelect_SessionFile): Standard_Integer {.
    importcpp: "ReadEnd", header: "IFSelect_SessionFile.hxx".}
proc ReadLine*(this: var IFSelect_SessionFile): Standard_Boolean {.
    importcpp: "ReadLine", header: "IFSelect_SessionFile.hxx".}
proc SplitLine*(this: var IFSelect_SessionFile; line: Standard_CString) {.
    importcpp: "SplitLine", header: "IFSelect_SessionFile.hxx".}
proc ReadOwn*(this: var IFSelect_SessionFile; item: var handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "ReadOwn", header: "IFSelect_SessionFile.hxx".}
proc AddItem*(this: var IFSelect_SessionFile; item: handle[Standard_Transient];
             active: Standard_Boolean = Standard_True) {.importcpp: "AddItem",
    header: "IFSelect_SessionFile.hxx".}
proc IsDone*(this: IFSelect_SessionFile): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IFSelect_SessionFile.hxx".}
proc WorkSession*(this: IFSelect_SessionFile): handle[IFSelect_WorkSession] {.
    noSideEffect, importcpp: "WorkSession", header: "IFSelect_SessionFile.hxx".}
proc NewItem*(this: var IFSelect_SessionFile; ident: Standard_Integer;
             par: handle[Standard_Transient]) {.importcpp: "NewItem",
    header: "IFSelect_SessionFile.hxx".}
proc SetOwn*(this: var IFSelect_SessionFile; mode: Standard_Boolean) {.
    importcpp: "SetOwn", header: "IFSelect_SessionFile.hxx".}
proc SendVoid*(this: var IFSelect_SessionFile) {.importcpp: "SendVoid",
    header: "IFSelect_SessionFile.hxx".}
proc SendItem*(this: var IFSelect_SessionFile; par: handle[Standard_Transient]) {.
    importcpp: "SendItem", header: "IFSelect_SessionFile.hxx".}
proc SendText*(this: var IFSelect_SessionFile; text: Standard_CString) {.
    importcpp: "SendText", header: "IFSelect_SessionFile.hxx".}
proc SetLastGeneral*(this: var IFSelect_SessionFile; lastgen: Standard_Integer) {.
    importcpp: "SetLastGeneral", header: "IFSelect_SessionFile.hxx".}
proc NbParams*(this: IFSelect_SessionFile): Standard_Integer {.noSideEffect,
    importcpp: "NbParams", header: "IFSelect_SessionFile.hxx".}
proc IsVoid*(this: IFSelect_SessionFile; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsVoid", header: "IFSelect_SessionFile.hxx".}
proc IsText*(this: IFSelect_SessionFile; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsText", header: "IFSelect_SessionFile.hxx".}
proc ParamValue*(this: IFSelect_SessionFile; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "ParamValue", header: "IFSelect_SessionFile.hxx".}
proc TextValue*(this: IFSelect_SessionFile; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "TextValue", header: "IFSelect_SessionFile.hxx".}
proc ItemValue*(this: IFSelect_SessionFile; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "ItemValue",
                         header: "IFSelect_SessionFile.hxx".}
proc Destroy*(this: var IFSelect_SessionFile) {.importcpp: "Destroy",
    header: "IFSelect_SessionFile.hxx".}
proc destroyIFSelect_SessionFile*(this: var IFSelect_SessionFile) {.
    importcpp: "#.~IFSelect_SessionFile()", header: "IFSelect_SessionFile.hxx".}