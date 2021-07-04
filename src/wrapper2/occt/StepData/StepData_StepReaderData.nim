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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Resource/Resource_FormatType, ../TColStd/TColStd_Array1OfInteger,
  ../Interface/Interface_IndexedMapOfAsciiString,
  ../TColStd/TColStd_DataMapOfIntegerInteger, ../Standard/Standard_Integer,
  ../Interface/Interface_FileReaderData, ../Standard/Standard_CString,
  ../Interface/Interface_ParamType, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_SequenceOfAsciiString, ../Standard/Standard_Real,
  ../Standard/Standard_Type, StepData_Logical

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
  Handle_StepData_StepReaderData* = handle[StepData_StepReaderData]

## ! Specific FileReaderData for Step
## ! Contains litteral description of entities (for each one : type
## ! as a string, ident, parameter list)
## ! provides references evaluation, plus access to litteral data
## ! and specific access methods (Boolean, XY, XYZ)

type
  StepData_StepReaderData* {.importcpp: "StepData_StepReaderData",
                            header: "StepData_StepReaderData.hxx", bycopy.} = object of Interface_FileReaderData ##
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


proc constructStepData_StepReaderData*(nbheader: Standard_Integer;
                                      nbtotal: Standard_Integer;
                                      nbpar: Standard_Integer; theSourceCodePage: Resource_FormatType = Resource_FormatType_UTF8): StepData_StepReaderData {.
    constructor, importcpp: "StepData_StepReaderData(@)",
    header: "StepData_StepReaderData.hxx".}
proc SetRecord*(this: var StepData_StepReaderData; num: Standard_Integer;
               ident: Standard_CString; `type`: Standard_CString;
               nbpar: Standard_Integer) {.importcpp: "SetRecord",
                                        header: "StepData_StepReaderData.hxx".}
proc AddStepParam*(this: var StepData_StepReaderData; num: Standard_Integer;
                  aval: Standard_CString; atype: Interface_ParamType;
                  nument: Standard_Integer = 0) {.importcpp: "AddStepParam",
    header: "StepData_StepReaderData.hxx".}
proc RecordType*(this: StepData_StepReaderData; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "RecordType", header: "StepData_StepReaderData.hxx".}
proc CType*(this: StepData_StepReaderData; num: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "CType", header: "StepData_StepReaderData.hxx".}
proc RecordIdent*(this: StepData_StepReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "RecordIdent", header: "StepData_StepReaderData.hxx".}
proc SubListNumber*(this: StepData_StepReaderData; num: Standard_Integer;
                   nump: Standard_Integer; aslast: Standard_Boolean): Standard_Integer {.
    noSideEffect, importcpp: "SubListNumber", header: "StepData_StepReaderData.hxx".}
proc IsComplex*(this: StepData_StepReaderData; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsComplex", header: "StepData_StepReaderData.hxx".}
proc ComplexType*(this: StepData_StepReaderData; num: Standard_Integer;
                 types: var TColStd_SequenceOfAsciiString) {.noSideEffect,
    importcpp: "ComplexType", header: "StepData_StepReaderData.hxx".}
proc NextForComplex*(this: StepData_StepReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NextForComplex",
    header: "StepData_StepReaderData.hxx".}
proc NamedForComplex*(this: StepData_StepReaderData; name: Standard_CString;
                     num0: Standard_Integer; num: var Standard_Integer;
                     ach: var handle[Interface_Check]): Standard_Boolean {.
    noSideEffect, importcpp: "NamedForComplex",
    header: "StepData_StepReaderData.hxx".}
proc NamedForComplex*(this: StepData_StepReaderData; theName: Standard_CString;
                     theShortName: Standard_CString; num0: Standard_Integer;
                     num: var Standard_Integer; ach: var handle[Interface_Check]): Standard_Boolean {.
    noSideEffect, importcpp: "NamedForComplex",
    header: "StepData_StepReaderData.hxx".}
proc CheckNbParams*(this: StepData_StepReaderData; num: Standard_Integer;
                   nbreq: Standard_Integer; ach: var handle[Interface_Check];
                   mess: Standard_CString = ""): Standard_Boolean {.noSideEffect,
    importcpp: "CheckNbParams", header: "StepData_StepReaderData.hxx".}
proc ReadSubList*(this: StepData_StepReaderData; num: Standard_Integer;
                 nump: Standard_Integer; mess: Standard_CString;
                 ach: var handle[Interface_Check]; numsub: var Standard_Integer;
                 optional: Standard_Boolean = Standard_False;
                 lenmin: Standard_Integer = 0; lenmax: Standard_Integer = 0): Standard_Boolean {.
    noSideEffect, importcpp: "ReadSubList", header: "StepData_StepReaderData.hxx".}
proc ReadSub*(this: StepData_StepReaderData; numsub: Standard_Integer;
             mess: Standard_CString; ach: var handle[Interface_Check];
             descr: handle[StepData_PDescr]; val: var handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "ReadSub", header: "StepData_StepReaderData.hxx".}
proc ReadMember*(this: StepData_StepReaderData; num: Standard_Integer;
                nump: Standard_Integer; mess: Standard_CString;
                ach: var handle[Interface_Check];
                val: var handle[StepData_SelectMember]): Standard_Boolean {.
    noSideEffect, importcpp: "ReadMember", header: "StepData_StepReaderData.hxx".}
proc ReadMember*[T](this: StepData_StepReaderData; num: Standard_Integer;
                   nump: Standard_Integer; mess: Standard_CString;
                   ach: var handle[Interface_Check]; val: var handle[T]): Standard_Boolean {.
    noSideEffect, importcpp: "ReadMember", header: "StepData_StepReaderData.hxx".}
proc ReadField*(this: StepData_StepReaderData; num: Standard_Integer;
               nump: Standard_Integer; mess: Standard_CString;
               ach: var handle[Interface_Check]; descr: handle[StepData_PDescr];
               fild: var StepData_Field): Standard_Boolean {.noSideEffect,
    importcpp: "ReadField", header: "StepData_StepReaderData.hxx".}
proc ReadList*(this: StepData_StepReaderData; num: Standard_Integer;
              ach: var handle[Interface_Check]; descr: handle[StepData_ESDescr];
              list: var StepData_FieldList): Standard_Boolean {.noSideEffect,
    importcpp: "ReadList", header: "StepData_StepReaderData.hxx".}
proc ReadAny*(this: StepData_StepReaderData; num: Standard_Integer;
             nump: Standard_Integer; mess: Standard_CString;
             ach: var handle[Interface_Check]; descr: handle[StepData_PDescr];
             val: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "ReadAny", header: "StepData_StepReaderData.hxx".}
proc ReadXY*(this: StepData_StepReaderData; num: Standard_Integer;
            nump: Standard_Integer; mess: Standard_CString;
            ach: var handle[Interface_Check]; X: var Standard_Real;
            Y: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "ReadXY", header: "StepData_StepReaderData.hxx".}
proc ReadXYZ*(this: StepData_StepReaderData; num: Standard_Integer;
             nump: Standard_Integer; mess: Standard_CString;
             ach: var handle[Interface_Check]; X: var Standard_Real;
             Y: var Standard_Real; Z: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "ReadXYZ", header: "StepData_StepReaderData.hxx".}
proc ReadReal*(this: StepData_StepReaderData; num: Standard_Integer;
              nump: Standard_Integer; mess: Standard_CString;
              ach: var handle[Interface_Check]; val: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "ReadReal", header: "StepData_StepReaderData.hxx".}
proc ReadEntity*(this: StepData_StepReaderData; num: Standard_Integer;
                nump: Standard_Integer; mess: Standard_CString;
                ach: var handle[Interface_Check]; atype: handle[Standard_Type];
                ent: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "ReadEntity", header: "StepData_StepReaderData.hxx".}
proc ReadEntity*[T](this: StepData_StepReaderData; num: Standard_Integer;
                   nump: Standard_Integer; mess: Standard_CString;
                   ach: var handle[Interface_Check]; atype: handle[Standard_Type];
                   ent: var handle[T]): Standard_Boolean {.noSideEffect,
    importcpp: "ReadEntity", header: "StepData_StepReaderData.hxx".}
proc ReadEntity*(this: StepData_StepReaderData; num: Standard_Integer;
                nump: Standard_Integer; mess: Standard_CString;
                ach: var handle[Interface_Check]; sel: var StepData_SelectType): Standard_Boolean {.
    noSideEffect, importcpp: "ReadEntity", header: "StepData_StepReaderData.hxx".}
proc ReadInteger*(this: StepData_StepReaderData; num: Standard_Integer;
                 nump: Standard_Integer; mess: Standard_CString;
                 ach: var handle[Interface_Check]; val: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ReadInteger", header: "StepData_StepReaderData.hxx".}
proc ReadBoolean*(this: StepData_StepReaderData; num: Standard_Integer;
                 nump: Standard_Integer; mess: Standard_CString;
                 ach: var handle[Interface_Check]; flag: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "ReadBoolean", header: "StepData_StepReaderData.hxx".}
proc ReadLogical*(this: StepData_StepReaderData; num: Standard_Integer;
                 nump: Standard_Integer; mess: Standard_CString;
                 ach: var handle[Interface_Check]; flag: var StepData_Logical): Standard_Boolean {.
    noSideEffect, importcpp: "ReadLogical", header: "StepData_StepReaderData.hxx".}
proc ReadString*(this: StepData_StepReaderData; num: Standard_Integer;
                nump: Standard_Integer; mess: Standard_CString;
                ach: var handle[Interface_Check];
                val: var handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "ReadString", header: "StepData_StepReaderData.hxx".}
proc ReadEnumParam*(this: StepData_StepReaderData; num: Standard_Integer;
                   nump: Standard_Integer; mess: Standard_CString;
                   ach: var handle[Interface_Check]; text: var Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "ReadEnumParam", header: "StepData_StepReaderData.hxx".}
proc FailEnumValue*(this: StepData_StepReaderData; num: Standard_Integer;
                   nump: Standard_Integer; mess: Standard_CString;
                   ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "FailEnumValue", header: "StepData_StepReaderData.hxx".}
proc ReadEnum*(this: StepData_StepReaderData; num: Standard_Integer;
              nump: Standard_Integer; mess: Standard_CString;
              ach: var handle[Interface_Check]; enumtool: StepData_EnumTool;
              val: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "ReadEnum", header: "StepData_StepReaderData.hxx".}
proc ReadTypedParam*(this: StepData_StepReaderData; num: Standard_Integer;
                    nump: Standard_Integer; mustbetyped: Standard_Boolean;
                    mess: Standard_CString; ach: var handle[Interface_Check];
                    numr: var Standard_Integer; numrp: var Standard_Integer;
                    typ: var TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "ReadTypedParam",
    header: "StepData_StepReaderData.hxx".}
proc CheckDerived*(this: StepData_StepReaderData; num: Standard_Integer;
                  nump: Standard_Integer; mess: Standard_CString;
                  ach: var handle[Interface_Check];
                  errstat: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "CheckDerived", header: "StepData_StepReaderData.hxx".}
proc NbEntities*(this: StepData_StepReaderData): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "StepData_StepReaderData.hxx".}
proc FindNextRecord*(this: StepData_StepReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FindNextRecord",
    header: "StepData_StepReaderData.hxx".}
proc SetEntityNumbers*(this: var StepData_StepReaderData;
                      withmap: Standard_Boolean = Standard_True) {.
    importcpp: "SetEntityNumbers", header: "StepData_StepReaderData.hxx".}
proc FindNextHeaderRecord*(this: StepData_StepReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FindNextHeaderRecord",
    header: "StepData_StepReaderData.hxx".}
proc PrepareHeader*(this: var StepData_StepReaderData) {.importcpp: "PrepareHeader",
    header: "StepData_StepReaderData.hxx".}
proc GlobalCheck*(this: StepData_StepReaderData): handle[Interface_Check] {.
    noSideEffect, importcpp: "GlobalCheck", header: "StepData_StepReaderData.hxx".}
type
  StepData_StepReaderDatabase_type* = Interface_FileReaderData

proc get_type_name*(): cstring {.importcpp: "StepData_StepReaderData::get_type_name(@)",
                              header: "StepData_StepReaderData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_StepReaderData::get_type_descriptor(@)",
    header: "StepData_StepReaderData.hxx".}
proc DynamicType*(this: StepData_StepReaderData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_StepReaderData.hxx".}