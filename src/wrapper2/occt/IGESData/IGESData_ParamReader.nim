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
  IGESDataParamReader* {.importcpp: "IGESData_ParamReader",
                        header: "IGESData_ParamReader.hxx", bycopy.} = object ## !
                                                                         ## Prepares a
                                                                         ## ParamReader, stage "Own", current param = 1
                                                                         ## ! It
                                                                         ## considers a part of the list, from <base>
                                                                         ## (excluded) for
                                                                         ## ! <nbpar>
                                                                         ## parameters; <nbpar> = 0
                                                                         ## commands to take list length.
                                                                         ## ! Default is (1 to skip type)


proc constructIGESDataParamReader*(list: Handle[InterfaceParamList];
                                  ach: Handle[InterfaceCheck];
                                  base: StandardInteger = 1;
                                  nbpar: StandardInteger = 0;
                                  num: StandardInteger = 0): IGESDataParamReader {.
    constructor, importcpp: "IGESData_ParamReader(@)",
    header: "IGESData_ParamReader.hxx".}
proc entityNumber*(this: IGESDataParamReader): StandardInteger {.noSideEffect,
    importcpp: "EntityNumber", header: "IGESData_ParamReader.hxx".}
proc clear*(this: var IGESDataParamReader) {.importcpp: "Clear",
    header: "IGESData_ParamReader.hxx".}
proc currentNumber*(this: IGESDataParamReader): StandardInteger {.noSideEffect,
    importcpp: "CurrentNumber", header: "IGESData_ParamReader.hxx".}
proc setCurrentNumber*(this: var IGESDataParamReader; num: StandardInteger) {.
    importcpp: "SetCurrentNumber", header: "IGESData_ParamReader.hxx".}
proc stage*(this: IGESDataParamReader): IGESDataReadStage {.noSideEffect,
    importcpp: "Stage", header: "IGESData_ParamReader.hxx".}
proc nextStage*(this: var IGESDataParamReader) {.importcpp: "NextStage",
    header: "IGESData_ParamReader.hxx".}
proc endAll*(this: var IGESDataParamReader) {.importcpp: "EndAll",
    header: "IGESData_ParamReader.hxx".}
proc nbParams*(this: IGESDataParamReader): StandardInteger {.noSideEffect,
    importcpp: "NbParams", header: "IGESData_ParamReader.hxx".}
proc paramType*(this: IGESDataParamReader; num: StandardInteger): InterfaceParamType {.
    noSideEffect, importcpp: "ParamType", header: "IGESData_ParamReader.hxx".}
proc paramValue*(this: IGESDataParamReader; num: StandardInteger): StandardCString {.
    noSideEffect, importcpp: "ParamValue", header: "IGESData_ParamReader.hxx".}
proc isParamDefined*(this: IGESDataParamReader; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsParamDefined", header: "IGESData_ParamReader.hxx".}
proc isParamEntity*(this: IGESDataParamReader; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsParamEntity", header: "IGESData_ParamReader.hxx".}
proc paramNumber*(this: IGESDataParamReader; num: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "ParamNumber", header: "IGESData_ParamReader.hxx".}
proc paramEntity*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                 num: StandardInteger): Handle[IGESDataIGESEntity] {.
    importcpp: "ParamEntity", header: "IGESData_ParamReader.hxx".}
proc current*(this: IGESDataParamReader): IGESDataParamCursor {.noSideEffect,
    importcpp: "Current", header: "IGESData_ParamReader.hxx".}
proc currentList*(this: IGESDataParamReader; nb: StandardInteger;
                 size: StandardInteger = 1): IGESDataParamCursor {.noSideEffect,
    importcpp: "CurrentList", header: "IGESData_ParamReader.hxx".}
proc definedElseSkip*(this: var IGESDataParamReader): StandardBoolean {.
    importcpp: "DefinedElseSkip", header: "IGESData_ParamReader.hxx".}
proc readInteger*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
                 val: var StandardInteger): StandardBoolean {.
    importcpp: "ReadInteger", header: "IGESData_ParamReader.hxx".}
proc readInteger*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
                 mess: StandardCString; val: var StandardInteger): StandardBoolean {.
    importcpp: "ReadInteger", header: "IGESData_ParamReader.hxx".}
proc readBoolean*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
                 amsg: MessageMsg; val: var StandardBoolean;
                 exact: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "ReadBoolean", header: "IGESData_ParamReader.hxx".}
proc readBoolean*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
                 mess: StandardCString; val: var StandardBoolean;
                 exact: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "ReadBoolean", header: "IGESData_ParamReader.hxx".}
proc readReal*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
              val: var StandardReal): StandardBoolean {.importcpp: "ReadReal",
    header: "IGESData_ParamReader.hxx".}
proc readReal*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
              mess: StandardCString; val: var StandardReal): StandardBoolean {.
    importcpp: "ReadReal", header: "IGESData_ParamReader.hxx".}
proc readXY*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
            amsg: var MessageMsg; val: var GpXY): StandardBoolean {.
    importcpp: "ReadXY", header: "IGESData_ParamReader.hxx".}
proc readXY*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
            mess: StandardCString; val: var GpXY): StandardBoolean {.
    importcpp: "ReadXY", header: "IGESData_ParamReader.hxx".}
proc readXYZ*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
             amsg: var MessageMsg; val: var GpXYZ): StandardBoolean {.
    importcpp: "ReadXYZ", header: "IGESData_ParamReader.hxx".}
proc readXYZ*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
             mess: StandardCString; val: var GpXYZ): StandardBoolean {.
    importcpp: "ReadXYZ", header: "IGESData_ParamReader.hxx".}
proc readText*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
              amsg: MessageMsg; val: var Handle[TCollectionHAsciiString]): StandardBoolean {.
    importcpp: "ReadText", header: "IGESData_ParamReader.hxx".}
proc readText*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
              mess: StandardCString; val: var Handle[TCollectionHAsciiString]): StandardBoolean {.
    importcpp: "ReadText", header: "IGESData_ParamReader.hxx".}
proc readEntity*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                pc: IGESDataParamCursor; aStatus: var IGESDataStatus;
                val: var Handle[IGESDataIGESEntity];
                canbenul: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc readEntity*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                pc: IGESDataParamCursor; mess: StandardCString;
                val: var Handle[IGESDataIGESEntity];
                canbenul: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc readEntity*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                pc: IGESDataParamCursor; aStatus: var IGESDataStatus;
                `type`: Handle[StandardType]; val: var Handle[IGESDataIGESEntity];
                canbenul: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc readEntity*[T](this: var IGESDataParamReader;
                   ir: Handle[IGESDataIGESReaderData]; pc: IGESDataParamCursor;
                   aStatus: var IGESDataStatus; `type`: Handle[StandardType];
                   val: var Handle[T]; canbenul: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc readEntity*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                pc: IGESDataParamCursor; mess: StandardCString;
                `type`: Handle[StandardType]; val: var Handle[IGESDataIGESEntity];
                canbenul: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc readEntity*[T](this: var IGESDataParamReader;
                   ir: Handle[IGESDataIGESReaderData]; pc: IGESDataParamCursor;
                   mess: StandardCString; `type`: Handle[StandardType];
                   val: var Handle[T]; canbenul: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ReadEntity", header: "IGESData_ParamReader.hxx".}
proc readInts*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
              amsg: MessageMsg; val: var Handle[TColStdHArray1OfInteger];
              index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadInts",
    header: "IGESData_ParamReader.hxx".}
proc readInts*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
              mess: StandardCString; val: var Handle[TColStdHArray1OfInteger];
              index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadInts",
    header: "IGESData_ParamReader.hxx".}
proc readReals*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
               amsg: var MessageMsg; val: var Handle[TColStdHArray1OfReal];
               index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadReals",
    header: "IGESData_ParamReader.hxx".}
proc readReals*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
               mess: StandardCString; val: var Handle[TColStdHArray1OfReal];
               index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadReals",
    header: "IGESData_ParamReader.hxx".}
proc readTexts*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
               amsg: MessageMsg; val: var Handle[InterfaceHArray1OfHAsciiString];
               index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadTexts",
    header: "IGESData_ParamReader.hxx".}
proc readTexts*(this: var IGESDataParamReader; pc: IGESDataParamCursor;
               mess: StandardCString;
               val: var Handle[InterfaceHArray1OfHAsciiString];
               index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadTexts",
    header: "IGESData_ParamReader.hxx".}
proc readEnts*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
              pc: IGESDataParamCursor; amsg: MessageMsg;
              val: var Handle[IGESDataHArray1OfIGESEntity];
              index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadEnts",
    header: "IGESData_ParamReader.hxx".}
proc readEnts*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
              pc: IGESDataParamCursor; mess: StandardCString;
              val: var Handle[IGESDataHArray1OfIGESEntity];
              index: StandardInteger = 1): StandardBoolean {.importcpp: "ReadEnts",
    header: "IGESData_ParamReader.hxx".}
proc readEntList*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                 pc: IGESDataParamCursor; amsg: var MessageMsg;
                 val: var InterfaceEntityList; ord: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "ReadEntList", header: "IGESData_ParamReader.hxx".}
proc readEntList*(this: var IGESDataParamReader; ir: Handle[IGESDataIGESReaderData];
                 pc: IGESDataParamCursor; mess: StandardCString;
                 val: var InterfaceEntityList; ord: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "ReadEntList", header: "IGESData_ParamReader.hxx".}
proc readingReal*(this: var IGESDataParamReader; num: StandardInteger;
                 val: var StandardReal): StandardBoolean {.importcpp: "ReadingReal",
    header: "IGESData_ParamReader.hxx".}
proc readingReal*(this: var IGESDataParamReader; num: StandardInteger;
                 mess: StandardCString; val: var StandardReal): StandardBoolean {.
    importcpp: "ReadingReal", header: "IGESData_ParamReader.hxx".}
proc readingEntityNumber*(this: var IGESDataParamReader; num: StandardInteger;
                         val: var StandardInteger): StandardBoolean {.
    importcpp: "ReadingEntityNumber", header: "IGESData_ParamReader.hxx".}
proc readingEntityNumber*(this: var IGESDataParamReader; num: StandardInteger;
                         mess: StandardCString; val: var StandardInteger): StandardBoolean {.
    importcpp: "ReadingEntityNumber", header: "IGESData_ParamReader.hxx".}
proc sendFail*(this: var IGESDataParamReader; amsg: MessageMsg) {.
    importcpp: "SendFail", header: "IGESData_ParamReader.hxx".}
proc sendWarning*(this: var IGESDataParamReader; amsg: MessageMsg) {.
    importcpp: "SendWarning", header: "IGESData_ParamReader.hxx".}
proc addFail*(this: var IGESDataParamReader; afail: StandardCString;
             bfail: StandardCString = "") {.importcpp: "AddFail",
                                        header: "IGESData_ParamReader.hxx".}
proc addFail*(this: var IGESDataParamReader; af: Handle[TCollectionHAsciiString];
             bf: Handle[TCollectionHAsciiString]) {.importcpp: "AddFail",
    header: "IGESData_ParamReader.hxx".}
proc addWarning*(this: var IGESDataParamReader; awarn: StandardCString;
                bwarn: StandardCString = "") {.importcpp: "AddWarning",
    header: "IGESData_ParamReader.hxx".}
proc addWarning*(this: var IGESDataParamReader; aw: Handle[TCollectionHAsciiString];
                bw: Handle[TCollectionHAsciiString]) {.importcpp: "AddWarning",
    header: "IGESData_ParamReader.hxx".}
proc mend*(this: var IGESDataParamReader; pref: StandardCString = "") {.
    importcpp: "Mend", header: "IGESData_ParamReader.hxx".}
proc hasFailed*(this: IGESDataParamReader): StandardBoolean {.noSideEffect,
    importcpp: "HasFailed", header: "IGESData_ParamReader.hxx".}
proc check*(this: IGESDataParamReader): Handle[InterfaceCheck] {.noSideEffect,
    importcpp: "Check", header: "IGESData_ParamReader.hxx".}
proc cCheck*(this: var IGESDataParamReader): var Handle[InterfaceCheck] {.
    importcpp: "CCheck", header: "IGESData_ParamReader.hxx".}
proc isCheckEmpty*(this: IGESDataParamReader): StandardBoolean {.noSideEffect,
    importcpp: "IsCheckEmpty", header: "IGESData_ParamReader.hxx".}

