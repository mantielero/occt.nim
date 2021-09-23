##  Created on: 1992-02-11
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../Interface/Interface_LineBuffer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Interface/Interface_FloatWriter,
  ../Interface/Interface_CheckIterator, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_CString, ../Standard/Standard_Real, StepData_Logical,
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_OStream

discard "forward decl of StepData_StepModel"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of Interface_FloatWriter"
discard "forward decl of StepData_Protocol"
discard "forward decl of StepData_WriterLib"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepData_Field"
discard "forward decl of StepData_PDescr"
discard "forward decl of StepData_SelectMember"
discard "forward decl of StepData_FieldList"
discard "forward decl of StepData_ESDescr"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CheckIterator"
type
  StepData_StepWriter* {.importcpp: "StepData_StepWriter",
                        header: "StepData_StepWriter.hxx", bycopy.} = object ## ! Creates an empty
                                                                        ## StepWriter from a
                                                                        ## StepModel. The
                                                                        ## StepModel
                                                                        ## ! provides the Number of
                                                                        ## Entities, as
                                                                        ## identifiers for File
                                                                        ## ! adds a string to current line; first flushes it if full
                                                                        ## ! (72 char); more allows to ask a reserve at end of line : flush
                                                                        ## ! is done if
                                                                        ## remaining length (to 72) is less than <more>


proc constructStepData_StepWriter*(amodel: handle[StepData_StepModel]): StepData_StepWriter {.
    constructor, importcpp: "StepData_StepWriter(@)",
    header: "StepData_StepWriter.hxx".}
proc LabelMode*(this: var StepData_StepWriter): var Standard_Integer {.
    importcpp: "LabelMode", header: "StepData_StepWriter.hxx".}
proc TypeMode*(this: var StepData_StepWriter): var Standard_Integer {.
    importcpp: "TypeMode", header: "StepData_StepWriter.hxx".}
proc FloatWriter*(this: var StepData_StepWriter): var Interface_FloatWriter {.
    importcpp: "FloatWriter", header: "StepData_StepWriter.hxx".}
proc SetScope*(this: var StepData_StepWriter; numscope: Standard_Integer;
              numin: Standard_Integer) {.importcpp: "SetScope",
                                       header: "StepData_StepWriter.hxx".}
proc IsInScope*(this: StepData_StepWriter; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsInScope", header: "StepData_StepWriter.hxx".}
proc SendModel*(this: var StepData_StepWriter; protocol: handle[StepData_Protocol];
               headeronly: Standard_Boolean = Standard_False) {.
    importcpp: "SendModel", header: "StepData_StepWriter.hxx".}
proc SendHeader*(this: var StepData_StepWriter) {.importcpp: "SendHeader",
    header: "StepData_StepWriter.hxx".}
proc SendData*(this: var StepData_StepWriter) {.importcpp: "SendData",
    header: "StepData_StepWriter.hxx".}
proc SendEntity*(this: var StepData_StepWriter; nument: Standard_Integer;
                lib: StepData_WriterLib) {.importcpp: "SendEntity",
    header: "StepData_StepWriter.hxx".}
proc EndSec*(this: var StepData_StepWriter) {.importcpp: "EndSec",
    header: "StepData_StepWriter.hxx".}
proc EndFile*(this: var StepData_StepWriter) {.importcpp: "EndFile",
    header: "StepData_StepWriter.hxx".}
proc NewLine*(this: var StepData_StepWriter; evenempty: Standard_Boolean) {.
    importcpp: "NewLine", header: "StepData_StepWriter.hxx".}
proc JoinLast*(this: var StepData_StepWriter; newline: Standard_Boolean) {.
    importcpp: "JoinLast", header: "StepData_StepWriter.hxx".}
proc Indent*(this: var StepData_StepWriter; onent: Standard_Boolean) {.
    importcpp: "Indent", header: "StepData_StepWriter.hxx".}
proc SendIdent*(this: var StepData_StepWriter; ident: Standard_Integer) {.
    importcpp: "SendIdent", header: "StepData_StepWriter.hxx".}
proc SendScope*(this: var StepData_StepWriter) {.importcpp: "SendScope",
    header: "StepData_StepWriter.hxx".}
proc SendEndscope*(this: var StepData_StepWriter) {.importcpp: "SendEndscope",
    header: "StepData_StepWriter.hxx".}
proc Comment*(this: var StepData_StepWriter; mode: Standard_Boolean) {.
    importcpp: "Comment", header: "StepData_StepWriter.hxx".}
proc SendComment*(this: var StepData_StepWriter;
                 text: handle[TCollection_HAsciiString]) {.
    importcpp: "SendComment", header: "StepData_StepWriter.hxx".}
proc SendComment*(this: var StepData_StepWriter; text: Standard_CString) {.
    importcpp: "SendComment", header: "StepData_StepWriter.hxx".}
proc StartEntity*(this: var StepData_StepWriter; atype: TCollection_AsciiString) {.
    importcpp: "StartEntity", header: "StepData_StepWriter.hxx".}
proc StartComplex*(this: var StepData_StepWriter) {.importcpp: "StartComplex",
    header: "StepData_StepWriter.hxx".}
proc EndComplex*(this: var StepData_StepWriter) {.importcpp: "EndComplex",
    header: "StepData_StepWriter.hxx".}
proc SendField*(this: var StepData_StepWriter; fild: StepData_Field;
               descr: handle[StepData_PDescr]) {.importcpp: "SendField",
    header: "StepData_StepWriter.hxx".}
proc SendSelect*(this: var StepData_StepWriter; sm: handle[StepData_SelectMember];
                descr: handle[StepData_PDescr]) {.importcpp: "SendSelect",
    header: "StepData_StepWriter.hxx".}
proc SendList*(this: var StepData_StepWriter; list: StepData_FieldList;
              descr: handle[StepData_ESDescr]) {.importcpp: "SendList",
    header: "StepData_StepWriter.hxx".}
proc OpenSub*(this: var StepData_StepWriter) {.importcpp: "OpenSub",
    header: "StepData_StepWriter.hxx".}
proc OpenTypedSub*(this: var StepData_StepWriter; subtype: Standard_CString) {.
    importcpp: "OpenTypedSub", header: "StepData_StepWriter.hxx".}
proc CloseSub*(this: var StepData_StepWriter) {.importcpp: "CloseSub",
    header: "StepData_StepWriter.hxx".}
proc AddParam*(this: var StepData_StepWriter) {.importcpp: "AddParam",
    header: "StepData_StepWriter.hxx".}
proc Send*(this: var StepData_StepWriter; val: Standard_Integer) {.importcpp: "Send",
    header: "StepData_StepWriter.hxx".}
proc Send*(this: var StepData_StepWriter; val: Standard_Real) {.importcpp: "Send",
    header: "StepData_StepWriter.hxx".}
proc Send*(this: var StepData_StepWriter; val: TCollection_AsciiString) {.
    importcpp: "Send", header: "StepData_StepWriter.hxx".}
proc Send*(this: var StepData_StepWriter; val: handle[Standard_Transient]) {.
    importcpp: "Send", header: "StepData_StepWriter.hxx".}
proc SendBoolean*(this: var StepData_StepWriter; val: Standard_Boolean) {.
    importcpp: "SendBoolean", header: "StepData_StepWriter.hxx".}
proc SendLogical*(this: var StepData_StepWriter; val: StepData_Logical) {.
    importcpp: "SendLogical", header: "StepData_StepWriter.hxx".}
proc SendString*(this: var StepData_StepWriter; val: TCollection_AsciiString) {.
    importcpp: "SendString", header: "StepData_StepWriter.hxx".}
proc SendString*(this: var StepData_StepWriter; val: Standard_CString) {.
    importcpp: "SendString", header: "StepData_StepWriter.hxx".}
proc SendEnum*(this: var StepData_StepWriter; val: TCollection_AsciiString) {.
    importcpp: "SendEnum", header: "StepData_StepWriter.hxx".}
proc SendEnum*(this: var StepData_StepWriter; val: Standard_CString) {.
    importcpp: "SendEnum", header: "StepData_StepWriter.hxx".}
proc SendArrReal*(this: var StepData_StepWriter;
                 anArr: handle[TColStd_HArray1OfReal]) {.importcpp: "SendArrReal",
    header: "StepData_StepWriter.hxx".}
proc SendUndef*(this: var StepData_StepWriter) {.importcpp: "SendUndef",
    header: "StepData_StepWriter.hxx".}
proc SendDerived*(this: var StepData_StepWriter) {.importcpp: "SendDerived",
    header: "StepData_StepWriter.hxx".}
proc EndEntity*(this: var StepData_StepWriter) {.importcpp: "EndEntity",
    header: "StepData_StepWriter.hxx".}
proc CheckList*(this: StepData_StepWriter): Interface_CheckIterator {.noSideEffect,
    importcpp: "CheckList", header: "StepData_StepWriter.hxx".}
proc NbLines*(this: StepData_StepWriter): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "StepData_StepWriter.hxx".}
proc Line*(this: StepData_StepWriter; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Line",
                               header: "StepData_StepWriter.hxx".}
proc Print*(this: var StepData_StepWriter; S: var Standard_OStream): Standard_Boolean {.
    importcpp: "Print", header: "StepData_StepWriter.hxx".}