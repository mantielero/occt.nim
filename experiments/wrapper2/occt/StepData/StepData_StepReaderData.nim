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

discard "forward decl of Interface_Check"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of StepData_PDescr"
discard "forward decl of Standard_Transient"
discard "forward decl of StepData_SelectMember"
discard "forward decl of StepData_Field"
discard "forward decl of StepData_ESDescr"
discard "forward decl of StepData_FieldList"
discard "forward decl of StepData_SelectType"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepData_EnumTool"
discard "forward decl of StepData_StepReaderData"
discard "forward decl of StepData_StepReaderData"
type
  HandleStepDataStepReaderData* = Handle[StepDataStepReaderData]

## ! Specific FileReaderData for Step
## ! Contains litteral description of entities (for each one : type
## ! as a string, ident, parameter list)
## ! provides references evaluation, plus access to litteral data
## ! and specific access methods (Boolean, XY, XYZ)

type
  StepDataStepReaderData* {.importcpp: "StepData_StepReaderData",
                           header: "StepData_StepReaderData.hxx", bycopy.} = object of InterfaceFileReaderData ##
                                                                                                        ## !
                                                                                                        ## creates
                                                                                                        ## StepReaderData
                                                                                                        ## correctly
                                                                                                        ## dimensionned
                                                                                                        ## (necessary
                                                                                                        ## at
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## creation
                                                                                                        ## time,
                                                                                                        ## because
                                                                                                        ## it
                                                                                                        ## contains
                                                                                                        ## arrays)
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## nbheader
                                                                                                        ## is
                                                                                                        ## nb
                                                                                                        ## of
                                                                                                        ## records
                                                                                                        ## for
                                                                                                        ## Header,
                                                                                                        ## nbtotal
                                                                                                        ## for
                                                                                                        ## Header+Data
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## and
                                                                                                        ## nbpar
                                                                                                        ## gives
                                                                                                        ## the
                                                                                                        ## total
                                                                                                        ## count
                                                                                                        ## of
                                                                                                        ## parameters
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Searches
                                                                                                        ## for
                                                                                                        ## a
                                                                                                        ## Parameter
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## record
                                                                                                        ## <num>,
                                                                                                        ## which
                                                                                                        ## refers
                                                                                                        ## to
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## the
                                                                                                        ## Ident
                                                                                                        ## <id>
                                                                                                        ## (form
                                                                                                        ## #nnn).
                                                                                                        ## [Used
                                                                                                        ## by
                                                                                                        ## SetEntityNumbers]
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## If
                                                                                                        ## found,
                                                                                                        ## returns
                                                                                                        ## its
                                                                                                        ## EntityNumber,
                                                                                                        ## else
                                                                                                        ## returns
                                                                                                        ## Zero.


proc constructStepDataStepReaderData*(nbheader: int; nbtotal: int; nbpar: int;
    theSourceCodePage: ResourceFormatType = resourceFormatTypeUTF8): StepDataStepReaderData {.
    constructor, importcpp: "StepData_StepReaderData(@)",
    header: "StepData_StepReaderData.hxx".}
proc setRecord*(this: var StepDataStepReaderData; num: int; ident: StandardCString;
               `type`: StandardCString; nbpar: int) {.importcpp: "SetRecord",
    header: "StepData_StepReaderData.hxx".}
proc addStepParam*(this: var StepDataStepReaderData; num: int; aval: StandardCString;
                  atype: InterfaceParamType; nument: int = 0) {.
    importcpp: "AddStepParam", header: "StepData_StepReaderData.hxx".}
proc recordType*(this: StepDataStepReaderData; num: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "RecordType", header: "StepData_StepReaderData.hxx".}
proc cType*(this: StepDataStepReaderData; num: int): StandardCString {.noSideEffect,
    importcpp: "CType", header: "StepData_StepReaderData.hxx".}
proc recordIdent*(this: StepDataStepReaderData; num: int): int {.noSideEffect,
    importcpp: "RecordIdent", header: "StepData_StepReaderData.hxx".}
proc subListNumber*(this: StepDataStepReaderData; num: int; nump: int; aslast: bool): int {.
    noSideEffect, importcpp: "SubListNumber", header: "StepData_StepReaderData.hxx".}
proc isComplex*(this: StepDataStepReaderData; num: int): bool {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_StepReaderData.hxx".}
proc complexType*(this: StepDataStepReaderData; num: int;
                 types: var TColStdSequenceOfAsciiString) {.noSideEffect,
    importcpp: "ComplexType", header: "StepData_StepReaderData.hxx".}
proc nextForComplex*(this: StepDataStepReaderData; num: int): int {.noSideEffect,
    importcpp: "NextForComplex", header: "StepData_StepReaderData.hxx".}
proc namedForComplex*(this: StepDataStepReaderData; name: StandardCString; num0: int;
                     num: var int; ach: var Handle[InterfaceCheck]): bool {.
    noSideEffect, importcpp: "NamedForComplex",
    header: "StepData_StepReaderData.hxx".}
proc namedForComplex*(this: StepDataStepReaderData; theName: StandardCString;
                     theShortName: StandardCString; num0: int; num: var int;
                     ach: var Handle[InterfaceCheck]): bool {.noSideEffect,
    importcpp: "NamedForComplex", header: "StepData_StepReaderData.hxx".}
proc checkNbParams*(this: StepDataStepReaderData; num: int; nbreq: int;
                   ach: var Handle[InterfaceCheck]; mess: StandardCString = ""): bool {.
    noSideEffect, importcpp: "CheckNbParams", header: "StepData_StepReaderData.hxx".}
proc readSubList*(this: StepDataStepReaderData; num: int; nump: int;
                 mess: StandardCString; ach: var Handle[InterfaceCheck];
                 numsub: var int; optional: bool = false; lenmin: int = 0; lenmax: int = 0): bool {.
    noSideEffect, importcpp: "ReadSubList", header: "StepData_StepReaderData.hxx".}
proc readSub*(this: StepDataStepReaderData; numsub: int; mess: StandardCString;
             ach: var Handle[InterfaceCheck]; descr: Handle[StepDataPDescr];
             val: var Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "ReadSub", header: "StepData_StepReaderData.hxx".}
proc readMember*(this: StepDataStepReaderData; num: int; nump: int;
                mess: StandardCString; ach: var Handle[InterfaceCheck];
                val: var Handle[StepDataSelectMember]): bool {.noSideEffect,
    importcpp: "ReadMember", header: "StepData_StepReaderData.hxx".}
proc readMember*[T](this: StepDataStepReaderData; num: int; nump: int;
                   mess: StandardCString; ach: var Handle[InterfaceCheck];
                   val: var Handle[T]): bool {.noSideEffect, importcpp: "ReadMember",
    header: "StepData_StepReaderData.hxx".}
proc readField*(this: StepDataStepReaderData; num: int; nump: int;
               mess: StandardCString; ach: var Handle[InterfaceCheck];
               descr: Handle[StepDataPDescr]; fild: var StepDataField): bool {.
    noSideEffect, importcpp: "ReadField", header: "StepData_StepReaderData.hxx".}
proc readList*(this: StepDataStepReaderData; num: int;
              ach: var Handle[InterfaceCheck]; descr: Handle[StepDataESDescr];
              list: var StepDataFieldList): bool {.noSideEffect,
    importcpp: "ReadList", header: "StepData_StepReaderData.hxx".}
proc readAny*(this: StepDataStepReaderData; num: int; nump: int; mess: StandardCString;
             ach: var Handle[InterfaceCheck]; descr: Handle[StepDataPDescr];
             val: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "ReadAny", header: "StepData_StepReaderData.hxx".}
proc readXY*(this: StepDataStepReaderData; num: int; nump: int; mess: StandardCString;
            ach: var Handle[InterfaceCheck]; x: var float; y: var float): bool {.
    noSideEffect, importcpp: "ReadXY", header: "StepData_StepReaderData.hxx".}
proc readXYZ*(this: StepDataStepReaderData; num: int; nump: int; mess: StandardCString;
             ach: var Handle[InterfaceCheck]; x: var float; y: var float; z: var float): bool {.
    noSideEffect, importcpp: "ReadXYZ", header: "StepData_StepReaderData.hxx".}
proc readReal*(this: StepDataStepReaderData; num: int; nump: int;
              mess: StandardCString; ach: var Handle[InterfaceCheck]; val: var float): bool {.
    noSideEffect, importcpp: "ReadReal", header: "StepData_StepReaderData.hxx".}
proc readEntity*(this: StepDataStepReaderData; num: int; nump: int;
                mess: StandardCString; ach: var Handle[InterfaceCheck];
                atype: Handle[StandardType]; ent: var Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "ReadEntity", header: "StepData_StepReaderData.hxx".}
proc readEntity*[T](this: StepDataStepReaderData; num: int; nump: int;
                   mess: StandardCString; ach: var Handle[InterfaceCheck];
                   atype: Handle[StandardType]; ent: var Handle[T]): bool {.
    noSideEffect, importcpp: "ReadEntity", header: "StepData_StepReaderData.hxx".}
proc readEntity*(this: StepDataStepReaderData; num: int; nump: int;
                mess: StandardCString; ach: var Handle[InterfaceCheck];
                sel: var StepDataSelectType): bool {.noSideEffect,
    importcpp: "ReadEntity", header: "StepData_StepReaderData.hxx".}
proc readInteger*(this: StepDataStepReaderData; num: int; nump: int;
                 mess: StandardCString; ach: var Handle[InterfaceCheck]; val: var int): bool {.
    noSideEffect, importcpp: "ReadInteger", header: "StepData_StepReaderData.hxx".}
proc readBoolean*(this: StepDataStepReaderData; num: int; nump: int;
                 mess: StandardCString; ach: var Handle[InterfaceCheck];
                 flag: var bool): bool {.noSideEffect, importcpp: "ReadBoolean",
                                     header: "StepData_StepReaderData.hxx".}
proc readLogical*(this: StepDataStepReaderData; num: int; nump: int;
                 mess: StandardCString; ach: var Handle[InterfaceCheck];
                 flag: var StepDataLogical): bool {.noSideEffect,
    importcpp: "ReadLogical", header: "StepData_StepReaderData.hxx".}
proc readString*(this: StepDataStepReaderData; num: int; nump: int;
                mess: StandardCString; ach: var Handle[InterfaceCheck];
                val: var Handle[TCollectionHAsciiString]): bool {.noSideEffect,
    importcpp: "ReadString", header: "StepData_StepReaderData.hxx".}
proc readEnumParam*(this: StepDataStepReaderData; num: int; nump: int;
                   mess: StandardCString; ach: var Handle[InterfaceCheck];
                   text: var StandardCString): bool {.noSideEffect,
    importcpp: "ReadEnumParam", header: "StepData_StepReaderData.hxx".}
proc failEnumValue*(this: StepDataStepReaderData; num: int; nump: int;
                   mess: StandardCString; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "FailEnumValue", header: "StepData_StepReaderData.hxx".}
proc readEnum*(this: StepDataStepReaderData; num: int; nump: int;
              mess: StandardCString; ach: var Handle[InterfaceCheck];
              enumtool: StepDataEnumTool; val: var int): bool {.noSideEffect,
    importcpp: "ReadEnum", header: "StepData_StepReaderData.hxx".}
proc readTypedParam*(this: StepDataStepReaderData; num: int; nump: int;
                    mustbetyped: bool; mess: StandardCString;
                    ach: var Handle[InterfaceCheck]; numr: var int; numrp: var int;
                    typ: var TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "ReadTypedParam", header: "StepData_StepReaderData.hxx".}
proc checkDerived*(this: StepDataStepReaderData; num: int; nump: int;
                  mess: StandardCString; ach: var Handle[InterfaceCheck];
                  errstat: bool = false): bool {.noSideEffect,
    importcpp: "CheckDerived", header: "StepData_StepReaderData.hxx".}
proc nbEntities*(this: StepDataStepReaderData): int {.noSideEffect,
    importcpp: "NbEntities", header: "StepData_StepReaderData.hxx".}
proc findNextRecord*(this: StepDataStepReaderData; num: int): int {.noSideEffect,
    importcpp: "FindNextRecord", header: "StepData_StepReaderData.hxx".}
proc setEntityNumbers*(this: var StepDataStepReaderData; withmap: bool = true) {.
    importcpp: "SetEntityNumbers", header: "StepData_StepReaderData.hxx".}
proc findNextHeaderRecord*(this: StepDataStepReaderData; num: int): int {.
    noSideEffect, importcpp: "FindNextHeaderRecord",
    header: "StepData_StepReaderData.hxx".}
proc prepareHeader*(this: var StepDataStepReaderData) {.importcpp: "PrepareHeader",
    header: "StepData_StepReaderData.hxx".}
proc globalCheck*(this: StepDataStepReaderData): Handle[InterfaceCheck] {.
    noSideEffect, importcpp: "GlobalCheck", header: "StepData_StepReaderData.hxx".}
type
  StepDataStepReaderDatabaseType* = InterfaceFileReaderData

proc getTypeName*(): cstring {.importcpp: "StepData_StepReaderData::get_type_name(@)",
                            header: "StepData_StepReaderData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_StepReaderData::get_type_descriptor(@)",
    header: "StepData_StepReaderData.hxx".}
proc dynamicType*(this: StepDataStepReaderData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_StepReaderData.hxx".}
