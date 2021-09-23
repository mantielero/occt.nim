##  Created on: 1992-04-06
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, IGESData_ReadStage,
  ../Standard/Standard_Boolean, ../Interface/Interface_ParamType,
  ../Standard/Standard_CString, ../Standard/Standard_Real, IGESData_Status,
  ../Standard/Standard_Type, ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_HArray1OfReal, ../Interface/Interface_HArray1OfHAsciiString,
  IGESData_HArray1OfIGESEntity

discard "forward decl of Interface_ParamList"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamCursor"
discard "forward decl of Message_Msg"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_EntityList"
type
  IGESData_ParamReader* {.importcpp: "IGESData_ParamReader",
                         header: "IGESData_ParamReader.hxx", bycopy.} = object ## !
                                                                          ## Prepares a
                                                                          ## ParamReader, stage "Own",
                                                                          ## current param = 1
                                                                          ## ! It
                                                                          ## considers a part of the list, from <base>
                                                                          ## (excluded) for
                                                                          ## !
                                                                          ## <nbpar>
                                                                          ## parameters;
                                                                          ## <nbpar> = 0
                                                                          ## commands to take list
                                                                          ## length.
                                                                          ## !
                                                                          ## Default is (1 to skip type)


proc constructIGESData_ParamReader*(list: handle[Interface_ParamList];
                                   ach: handle[Interface_Check];
                                   base: Standard_Integer = 1;
                                   nbpar: Standard_Integer = 0;
                                   num: Standard_Integer = 0): IGESData_ParamReader {.
    constructor, importcpp: "IGESData_ParamReader(@)",
    header: "IGESData_ParamReader.hxx".}
proc EntityNumber*(this: IGESData_ParamReader): Standard_Integer {.noSideEffect,
    importcpp: "EntityNumber", header: "IGESData_ParamReader.hxx".}
proc Clear*(this: var IGESData_ParamReader) {.importcpp: "Clear",
    header: "IGESData_ParamReader.hxx".}
proc CurrentNumber*(this: IGESData_ParamReader): Standard_Integer {.noSideEffect,
    importcpp: "CurrentNumber", header: "IGESData_ParamReader.hxx".}
proc SetCurrentNumber*(this: var IGESData_ParamReader; num: Standard_Integer) {.
    importcpp: "SetCurrentNumber", header: "IGESData_ParamReader.hxx".}
proc Stage*(this: IGESData_ParamReader): IGESData_ReadStage {.noSideEffect,
    importcpp: "Stage", header: "IGESData_ParamReader.hxx".}
proc NextStage*(this: var IGESData_ParamReader) {.importcpp: "NextStage",
    header: "IGESData_ParamReader.hxx".}
proc EndAll*(this: var IGESData_ParamReader) {.importcpp: "EndAll",
    header: "IGESData_ParamReader.hxx".}
proc NbParams*(this: IGESData_ParamReader): Standard_Integer {.noSideEffect,
    importcpp: "NbParams", header: "IGESData_ParamReader.hxx".}
proc ParamType*(this: IGESData_ParamReader; num: Standard_Integer): Interface_ParamType {.
    noSideEffect, importcpp: "ParamType", header: "IGESData_ParamReader.hxx".}
proc ParamValue*(this: IGESData_ParamReader; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "ParamValue", header: "IGESData_ParamReader.hxx".}
proc IsParamDefined*(this: IGESData_ParamReader; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsParamDefined", header: "IGESData_ParamReader.hxx".}
proc IsParamEntity*(this: IGESData_ParamReader; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsParamEntity", header: "IGESData_ParamReader.hxx".}
proc ParamNumber*(this: IGESData_ParamReader; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ParamNumber", header: "IGESData_ParamReader.hxx".}
proc ParamEntity*(this: var IGESData_ParamReader;
                 IR: handle[IGESData_IGESReaderData]; num: Standard_Integer): handle[
    IGESData_IGESEntity] {.importcpp: "ParamEntity",
                          header: "IGESData_ParamReader.hxx".}
proc Current*(this: IGESData_ParamReader): IGESData_ParamCursor {.noSideEffect,
    importcpp: "Current", header: "IGESData_ParamReader.hxx".}
proc CurrentList*(this: IGESData_ParamReader; nb: Standard_Integer;
                 size: Standard_Integer = 1): IGESData_ParamCursor {.noSideEffect,
    importcpp: "CurrentList", header: "IGESData_ParamReader.hxx".}
proc DefinedElseSkip*(this: var IGESData_ParamReader): Standard_Boolean {.
    importcpp: "DefinedElseSkip", header: "IGESData_ParamReader.hxx".}
proc ReadInteger*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
                 val: var Standard_Integer): Standard_Boolean {.
    importcpp: "ReadInteger", header: "IGESData_ParamReader.hxx".}
proc ReadInteger*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
                 mess: Standard_CString; val: var Standard_Integer): Standard_Boolean {.
    importcpp: "ReadInteger", header: "IGESData_ParamReader.hxx".}
proc ReadBoolean*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
                 amsg: Message_Msg; val: var Standard_Boolean;
                 exact: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ReadBoolean", header: "IGESData_ParamReader.hxx".}
proc ReadBoolean*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
                 mess: Standard_CString; val: var Standard_Boolean;
                 exact: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ReadBoolean", header: "IGESData_ParamReader.hxx".}
proc ReadReal*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
              val: var Standard_Real): Standard_Boolean {.importcpp: "ReadReal",
    header: "IGESData_ParamReader.hxx".}
proc ReadReal*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
              mess: Standard_CString; val: var Standard_Real): Standard_Boolean {.
    importcpp: "ReadReal", header: "IGESData_ParamReader.hxx".}
proc ReadXY*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
            amsg: var Message_Msg; val: var gp_XY): Standard_Boolean {.
    importcpp: "ReadXY", header: "IGESData_ParamReader.hxx".}
proc ReadXY*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
            mess: Standard_CString; val: var gp_XY): Standard_Boolean {.
    importcpp: "ReadXY", header: "IGESData_ParamReader.hxx".}
proc ReadXYZ*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
             amsg: var Message_Msg; val: var gp_XYZ): Standard_Boolean {.
    importcpp: "ReadXYZ", header: "IGESData_ParamReader.hxx".}
proc ReadXYZ*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
             mess: Standard_CString; val: var gp_XYZ): Standard_Boolean {.
    importcpp: "ReadXYZ", header: "IGESData_ParamReader.hxx".}
proc ReadText*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
              amsg: Message_Msg; val: var handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "ReadText", header: "IGESData_ParamReader.hxx".}
proc ReadText*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
              mess: Standard_CString; val: var handle[TCollection_HAsciiString]): Standard_Boolean {.
    importcpp: "ReadText", header: "IGESData_ParamReader.hxx".}
proc ReadEntity*(this: var IGESData_ParamReader;
                IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                aStatus: var IGESData_Status; val: var handle[IGESData_IGESEntity];
                canbenul: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc ReadEntity*(this: var IGESData_ParamReader;
                IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                mess: Standard_CString; val: var handle[IGESData_IGESEntity];
                canbenul: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc ReadEntity*(this: var IGESData_ParamReader;
                IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                aStatus: var IGESData_Status; `type`: handle[Standard_Type];
                val: var handle[IGESData_IGESEntity];
                canbenul: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc ReadEntity*[T](this: var IGESData_ParamReader;
                   IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                   aStatus: var IGESData_Status; `type`: handle[Standard_Type];
                   val: var handle[T]; canbenul: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc ReadEntity*(this: var IGESData_ParamReader;
                IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                mess: Standard_CString; `type`: handle[Standard_Type];
                val: var handle[IGESData_IGESEntity];
                canbenul: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc ReadEntity*[T](this: var IGESData_ParamReader;
                   IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                   mess: Standard_CString; `type`: handle[Standard_Type];
                   val: var handle[T]; canbenul: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc ReadInts*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
              amsg: Message_Msg; val: var handle[TColStd_HArray1OfInteger];
              index: Standard_Integer = 1): Standard_Boolean {.importcpp: "ReadInts",
    header: "IGESData_ParamReader.hxx".}
proc ReadInts*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
              mess: Standard_CString; val: var handle[TColStd_HArray1OfInteger];
              index: Standard_Integer = 1): Standard_Boolean {.importcpp: "ReadInts",
    header: "IGESData_ParamReader.hxx".}
proc ReadReals*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
               amsg: var Message_Msg; val: var handle[TColStd_HArray1OfReal];
               index: Standard_Integer = 1): Standard_Boolean {.
    importcpp: "ReadReals", header: "IGESData_ParamReader.hxx".}
proc ReadReals*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
               mess: Standard_CString; val: var handle[TColStd_HArray1OfReal];
               index: Standard_Integer = 1): Standard_Boolean {.
    importcpp: "ReadReals", header: "IGESData_ParamReader.hxx".}
proc ReadTexts*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
               amsg: Message_Msg;
               val: var handle[Interface_HArray1OfHAsciiString];
               index: Standard_Integer = 1): Standard_Boolean {.
    importcpp: "ReadTexts", header: "IGESData_ParamReader.hxx".}
proc ReadTexts*(this: var IGESData_ParamReader; PC: IGESData_ParamCursor;
               mess: Standard_CString;
               val: var handle[Interface_HArray1OfHAsciiString];
               index: Standard_Integer = 1): Standard_Boolean {.
    importcpp: "ReadTexts", header: "IGESData_ParamReader.hxx".}
proc ReadEnts*(this: var IGESData_ParamReader; IR: handle[IGESData_IGESReaderData];
              PC: IGESData_ParamCursor; amsg: Message_Msg;
              val: var handle[IGESData_HArray1OfIGESEntity];
              index: Standard_Integer = 1): Standard_Boolean {.importcpp: "ReadEnts",
    header: "IGESData_ParamReader.hxx".}
proc ReadEnts*(this: var IGESData_ParamReader; IR: handle[IGESData_IGESReaderData];
              PC: IGESData_ParamCursor; mess: Standard_CString;
              val: var handle[IGESData_HArray1OfIGESEntity];
              index: Standard_Integer = 1): Standard_Boolean {.importcpp: "ReadEnts",
    header: "IGESData_ParamReader.hxx".}
proc ReadEntList*(this: var IGESData_ParamReader;
                 IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                 amsg: var Message_Msg; val: var Interface_EntityList;
                 ord: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ReadEntList", header: "IGESData_ParamReader.hxx".}
proc ReadEntList*(this: var IGESData_ParamReader;
                 IR: handle[IGESData_IGESReaderData]; PC: IGESData_ParamCursor;
                 mess: Standard_CString; val: var Interface_EntityList;
                 ord: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "ReadEntList", header: "IGESData_ParamReader.hxx".}
proc ReadingReal*(this: var IGESData_ParamReader; num: Standard_Integer;
                 val: var Standard_Real): Standard_Boolean {.
    importcpp: "ReadingReal", header: "IGESData_ParamReader.hxx".}
proc ReadingReal*(this: var IGESData_ParamReader; num: Standard_Integer;
                 mess: Standard_CString; val: var Standard_Real): Standard_Boolean {.
    importcpp: "ReadingReal", header: "IGESData_ParamReader.hxx".}
proc ReadingEntityNumber*(this: var IGESData_ParamReader; num: Standard_Integer;
                         val: var Standard_Integer): Standard_Boolean {.
    importcpp: "ReadingEntityNumber", header: "IGESData_ParamReader.hxx".}
proc ReadingEntityNumber*(this: var IGESData_ParamReader; num: Standard_Integer;
                         mess: Standard_CString; val: var Standard_Integer): Standard_Boolean {.
    importcpp: "ReadingEntityNumber", header: "IGESData_ParamReader.hxx".}
proc SendFail*(this: var IGESData_ParamReader; amsg: Message_Msg) {.
    importcpp: "SendFail", header: "IGESData_ParamReader.hxx".}
proc SendWarning*(this: var IGESData_ParamReader; amsg: Message_Msg) {.
    importcpp: "SendWarning", header: "IGESData_ParamReader.hxx".}
proc AddFail*(this: var IGESData_ParamReader; afail: Standard_CString;
             bfail: Standard_CString = "") {.importcpp: "AddFail",
    header: "IGESData_ParamReader.hxx".}
proc AddFail*(this: var IGESData_ParamReader; af: handle[TCollection_HAsciiString];
             bf: handle[TCollection_HAsciiString]) {.importcpp: "AddFail",
    header: "IGESData_ParamReader.hxx".}
proc AddWarning*(this: var IGESData_ParamReader; awarn: Standard_CString;
                bwarn: Standard_CString = "") {.importcpp: "AddWarning",
    header: "IGESData_ParamReader.hxx".}
proc AddWarning*(this: var IGESData_ParamReader;
                aw: handle[TCollection_HAsciiString];
                bw: handle[TCollection_HAsciiString]) {.importcpp: "AddWarning",
    header: "IGESData_ParamReader.hxx".}
proc Mend*(this: var IGESData_ParamReader; pref: Standard_CString = "") {.
    importcpp: "Mend", header: "IGESData_ParamReader.hxx".}
proc HasFailed*(this: IGESData_ParamReader): Standard_Boolean {.noSideEffect,
    importcpp: "HasFailed", header: "IGESData_ParamReader.hxx".}
proc Check*(this: IGESData_ParamReader): handle[Interface_Check] {.noSideEffect,
    importcpp: "Check", header: "IGESData_ParamReader.hxx".}
proc CCheck*(this: var IGESData_ParamReader): var handle[Interface_Check] {.
    importcpp: "CCheck", header: "IGESData_ParamReader.hxx".}
proc IsCheckEmpty*(this: IGESData_ParamReader): Standard_Boolean {.noSideEffect,
    importcpp: "IsCheckEmpty", header: "IGESData_ParamReader.hxx".}