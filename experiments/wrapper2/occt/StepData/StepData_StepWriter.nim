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
  StepDataStepWriter* {.importcpp: "StepData_StepWriter",
                       header: "StepData_StepWriter.hxx", bycopy.} = object ## ! Creates an empty
                                                                       ## StepWriter from a
                                                                       ## StepModel. The StepModel
                                                                       ## ! provides the Number of Entities, as
                                                                       ## identifiers for File
                                                                       ## ! adds a string to current line; first flushes it if full
                                                                       ## ! (72 char); more allows to ask a reserve at end of line : flush
                                                                       ## ! is done if remaining length (to 72) is less than <more>


proc constructStepDataStepWriter*(amodel: Handle[StepDataStepModel]): StepDataStepWriter {.
    constructor, importcpp: "StepData_StepWriter(@)",
    header: "StepData_StepWriter.hxx".}
proc labelMode*(this: var StepDataStepWriter): var int {.importcpp: "LabelMode",
    header: "StepData_StepWriter.hxx".}
proc typeMode*(this: var StepDataStepWriter): var int {.importcpp: "TypeMode",
    header: "StepData_StepWriter.hxx".}
proc floatWriter*(this: var StepDataStepWriter): var InterfaceFloatWriter {.
    importcpp: "FloatWriter", header: "StepData_StepWriter.hxx".}
proc setScope*(this: var StepDataStepWriter; numscope: int; numin: int) {.
    importcpp: "SetScope", header: "StepData_StepWriter.hxx".}
proc isInScope*(this: StepDataStepWriter; num: int): bool {.noSideEffect,
    importcpp: "IsInScope", header: "StepData_StepWriter.hxx".}
proc sendModel*(this: var StepDataStepWriter; protocol: Handle[StepDataProtocol];
               headeronly: bool = false) {.importcpp: "SendModel",
                                       header: "StepData_StepWriter.hxx".}
proc sendHeader*(this: var StepDataStepWriter) {.importcpp: "SendHeader",
    header: "StepData_StepWriter.hxx".}
proc sendData*(this: var StepDataStepWriter) {.importcpp: "SendData",
    header: "StepData_StepWriter.hxx".}
proc sendEntity*(this: var StepDataStepWriter; nument: int; lib: StepDataWriterLib) {.
    importcpp: "SendEntity", header: "StepData_StepWriter.hxx".}
proc endSec*(this: var StepDataStepWriter) {.importcpp: "EndSec",
    header: "StepData_StepWriter.hxx".}
proc endFile*(this: var StepDataStepWriter) {.importcpp: "EndFile",
    header: "StepData_StepWriter.hxx".}
proc newLine*(this: var StepDataStepWriter; evenempty: bool) {.importcpp: "NewLine",
    header: "StepData_StepWriter.hxx".}
proc joinLast*(this: var StepDataStepWriter; newline: bool) {.importcpp: "JoinLast",
    header: "StepData_StepWriter.hxx".}
proc indent*(this: var StepDataStepWriter; onent: bool) {.importcpp: "Indent",
    header: "StepData_StepWriter.hxx".}
proc sendIdent*(this: var StepDataStepWriter; ident: int) {.importcpp: "SendIdent",
    header: "StepData_StepWriter.hxx".}
proc sendScope*(this: var StepDataStepWriter) {.importcpp: "SendScope",
    header: "StepData_StepWriter.hxx".}
proc sendEndscope*(this: var StepDataStepWriter) {.importcpp: "SendEndscope",
    header: "StepData_StepWriter.hxx".}
proc comment*(this: var StepDataStepWriter; mode: bool) {.importcpp: "Comment",
    header: "StepData_StepWriter.hxx".}
proc sendComment*(this: var StepDataStepWriter;
                 text: Handle[TCollectionHAsciiString]) {.
    importcpp: "SendComment", header: "StepData_StepWriter.hxx".}
proc sendComment*(this: var StepDataStepWriter; text: StandardCString) {.
    importcpp: "SendComment", header: "StepData_StepWriter.hxx".}
proc startEntity*(this: var StepDataStepWriter; atype: TCollectionAsciiString) {.
    importcpp: "StartEntity", header: "StepData_StepWriter.hxx".}
proc startComplex*(this: var StepDataStepWriter) {.importcpp: "StartComplex",
    header: "StepData_StepWriter.hxx".}
proc endComplex*(this: var StepDataStepWriter) {.importcpp: "EndComplex",
    header: "StepData_StepWriter.hxx".}
proc sendField*(this: var StepDataStepWriter; fild: StepDataField;
               descr: Handle[StepDataPDescr]) {.importcpp: "SendField",
    header: "StepData_StepWriter.hxx".}
proc sendSelect*(this: var StepDataStepWriter; sm: Handle[StepDataSelectMember];
                descr: Handle[StepDataPDescr]) {.importcpp: "SendSelect",
    header: "StepData_StepWriter.hxx".}
proc sendList*(this: var StepDataStepWriter; list: StepDataFieldList;
              descr: Handle[StepDataESDescr]) {.importcpp: "SendList",
    header: "StepData_StepWriter.hxx".}
proc openSub*(this: var StepDataStepWriter) {.importcpp: "OpenSub",
    header: "StepData_StepWriter.hxx".}
proc openTypedSub*(this: var StepDataStepWriter; subtype: StandardCString) {.
    importcpp: "OpenTypedSub", header: "StepData_StepWriter.hxx".}
proc closeSub*(this: var StepDataStepWriter) {.importcpp: "CloseSub",
    header: "StepData_StepWriter.hxx".}
proc addParam*(this: var StepDataStepWriter) {.importcpp: "AddParam",
    header: "StepData_StepWriter.hxx".}
proc send*(this: var StepDataStepWriter; val: int) {.importcpp: "Send",
    header: "StepData_StepWriter.hxx".}
proc send*(this: var StepDataStepWriter; val: float) {.importcpp: "Send",
    header: "StepData_StepWriter.hxx".}
proc send*(this: var StepDataStepWriter; val: TCollectionAsciiString) {.
    importcpp: "Send", header: "StepData_StepWriter.hxx".}
proc send*(this: var StepDataStepWriter; val: Handle[StandardTransient]) {.
    importcpp: "Send", header: "StepData_StepWriter.hxx".}
proc sendBoolean*(this: var StepDataStepWriter; val: bool) {.importcpp: "SendBoolean",
    header: "StepData_StepWriter.hxx".}
proc sendLogical*(this: var StepDataStepWriter; val: StepDataLogical) {.
    importcpp: "SendLogical", header: "StepData_StepWriter.hxx".}
proc sendString*(this: var StepDataStepWriter; val: TCollectionAsciiString) {.
    importcpp: "SendString", header: "StepData_StepWriter.hxx".}
proc sendString*(this: var StepDataStepWriter; val: StandardCString) {.
    importcpp: "SendString", header: "StepData_StepWriter.hxx".}
proc sendEnum*(this: var StepDataStepWriter; val: TCollectionAsciiString) {.
    importcpp: "SendEnum", header: "StepData_StepWriter.hxx".}
proc sendEnum*(this: var StepDataStepWriter; val: StandardCString) {.
    importcpp: "SendEnum", header: "StepData_StepWriter.hxx".}
proc sendArrReal*(this: var StepDataStepWriter; anArr: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SendArrReal", header: "StepData_StepWriter.hxx".}
proc sendUndef*(this: var StepDataStepWriter) {.importcpp: "SendUndef",
    header: "StepData_StepWriter.hxx".}
proc sendDerived*(this: var StepDataStepWriter) {.importcpp: "SendDerived",
    header: "StepData_StepWriter.hxx".}
proc endEntity*(this: var StepDataStepWriter) {.importcpp: "EndEntity",
    header: "StepData_StepWriter.hxx".}
proc checkList*(this: StepDataStepWriter): InterfaceCheckIterator {.noSideEffect,
    importcpp: "CheckList", header: "StepData_StepWriter.hxx".}
proc nbLines*(this: StepDataStepWriter): int {.noSideEffect, importcpp: "NbLines",
    header: "StepData_StepWriter.hxx".}
proc line*(this: StepDataStepWriter; num: int): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Line", header: "StepData_StepWriter.hxx".}
proc print*(this: var StepDataStepWriter; s: var StandardOStream): bool {.
    importcpp: "Print", header: "StepData_StepWriter.hxx".}
