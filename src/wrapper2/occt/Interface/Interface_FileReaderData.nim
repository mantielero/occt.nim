##  Created on: 1992-02-10
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfInteger, ../TColStd/TColStd_Array1OfTransient,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  Interface_ParamType, ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Interface_ParamSet"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_FileParameter"
discard "forward decl of Interface_ParamList"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of Interface_FileReaderData"
type
  Handle_Interface_FileReaderData* = handle[Interface_FileReaderData]

## ! This class defines services which permit to access Data issued
## ! from a File, in a form which does not depend of physical
## ! format : thus, each Record has an attached ParamList (to be
## ! managed) and resulting Entity.
## !
## ! Each Interface defines its own FileReaderData : on one hand by
## ! defining deferred methods given here, on the other hand by
## ! describing literal data and their accesses, with the help of
## ! basic classes such as String, Array1OfString, etc...
## !
## ! FileReaderData is used by a FileReaderTool, which is also
## ! specific of each Norm, to read an InterfaceModel of the Norm
## ! FileReaderData inherits TShared to be accessed by Handle :
## ! this allows FileReaderTool to define more easily the specific
## ! methods, and improves memory management.

type
  Interface_FileReaderData* {.importcpp: "Interface_FileReaderData",
                             header: "Interface_FileReaderData.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## the
                                                                                                      ## count
                                                                                                      ## of
                                                                                                      ## registered
                                                                                                      ## records
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## That
                                                                                                      ## is,
                                                                                                      ## value
                                                                                                      ## given
                                                                                                      ## for
                                                                                                      ## Initialization
                                                                                                      ## (can
                                                                                                      ## be
                                                                                                      ## redefined)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## arrays
                                                                                                      ## of
                                                                                                      ## Entities
                                                                                                      ## and
                                                                                                      ## of
                                                                                                      ## ParamLists
                                                                                                      ## attached
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## to
                                                                                                      ## registered
                                                                                                      ## records
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## <nbr>
                                                                                                      ## must
                                                                                                      ## be
                                                                                                      ## the
                                                                                                      ## maximum
                                                                                                      ## number
                                                                                                      ## of
                                                                                                      ## records
                                                                                                      ## to
                                                                                                      ## get
                                                                                                      ## (no
                                                                                                      ## way
                                                                                                      ## to
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## extend
                                                                                                      ## it
                                                                                                      ## at
                                                                                                      ## run-time)
                                                                                                      ## :
                                                                                                      ## count
                                                                                                      ## entities
                                                                                                      ## and
                                                                                                      ## sub-entities
                                                                                                      ## ...
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## <npar>
                                                                                                      ## is
                                                                                                      ## the
                                                                                                      ## total
                                                                                                      ## count
                                                                                                      ## of
                                                                                                      ## parameters
                                                                                                      ## (if
                                                                                                      ## it
                                                                                                      ## is
                                                                                                      ## not
                                                                                                      ## exact,
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## it
                                                                                                      ## will
                                                                                                      ## be
                                                                                                      ## extented
                                                                                                      ## as
                                                                                                      ## necessary)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Hence,
                                                                                                      ## to
                                                                                                      ## each
                                                                                                      ## record
                                                                                                      ## can
                                                                                                      ## be
                                                                                                      ## bound
                                                                                                      ## an
                                                                                                      ## Entity
                                                                                                      ## and
                                                                                                      ## a
                                                                                                      ## list
                                                                                                      ## of
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Parameters.
                                                                                                      ## Each
                                                                                                      ## kind
                                                                                                      ## of
                                                                                                      ## FileReaderData
                                                                                                      ## can
                                                                                                      ## add
                                                                                                      ## other
                                                                                                      ## data,
                                                                                                      ## by
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## having
                                                                                                      ## them
                                                                                                      ## in
                                                                                                      ## parallel
                                                                                                      ## (other
                                                                                                      ## arrays
                                                                                                      ## with
                                                                                                      ## same
                                                                                                      ## sizes)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Else,
                                                                                                      ## it
                                                                                                      ## must
                                                                                                      ## manage
                                                                                                      ## binding
                                                                                                      ## between
                                                                                                      ## items
                                                                                                      ## and
                                                                                                      ## their
                                                                                                      ## data


proc NbRecords*(this: Interface_FileReaderData): Standard_Integer {.noSideEffect,
    importcpp: "NbRecords", header: "Interface_FileReaderData.hxx".}
proc NbEntities*(this: Interface_FileReaderData): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_FileReaderData.hxx".}
proc FindNextRecord*(this: Interface_FileReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FindNextRecord",
    header: "Interface_FileReaderData.hxx".}
proc InitParams*(this: var Interface_FileReaderData; num: Standard_Integer) {.
    importcpp: "InitParams", header: "Interface_FileReaderData.hxx".}
proc AddParam*(this: var Interface_FileReaderData; num: Standard_Integer;
              aval: Standard_CString; atype: Interface_ParamType;
              nument: Standard_Integer = 0) {.importcpp: "AddParam",
    header: "Interface_FileReaderData.hxx".}
proc AddParam*(this: var Interface_FileReaderData; num: Standard_Integer;
              aval: TCollection_AsciiString; atype: Interface_ParamType;
              nument: Standard_Integer = 0) {.importcpp: "AddParam",
    header: "Interface_FileReaderData.hxx".}
proc AddParam*(this: var Interface_FileReaderData; num: Standard_Integer;
              FP: Interface_FileParameter) {.importcpp: "AddParam",
    header: "Interface_FileReaderData.hxx".}
proc SetParam*(this: var Interface_FileReaderData; num: Standard_Integer;
              nump: Standard_Integer; FP: Interface_FileParameter) {.
    importcpp: "SetParam", header: "Interface_FileReaderData.hxx".}
proc NbParams*(this: Interface_FileReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbParams", header: "Interface_FileReaderData.hxx".}
proc Params*(this: Interface_FileReaderData; num: Standard_Integer): handle[
    Interface_ParamList] {.noSideEffect, importcpp: "Params",
                          header: "Interface_FileReaderData.hxx".}
proc Param*(this: Interface_FileReaderData; num: Standard_Integer;
           nump: Standard_Integer): Interface_FileParameter {.noSideEffect,
    importcpp: "Param", header: "Interface_FileReaderData.hxx".}
proc ChangeParam*(this: var Interface_FileReaderData; num: Standard_Integer;
                 nump: Standard_Integer): var Interface_FileParameter {.
    importcpp: "ChangeParam", header: "Interface_FileReaderData.hxx".}
proc ParamType*(this: Interface_FileReaderData; num: Standard_Integer;
               nump: Standard_Integer): Interface_ParamType {.noSideEffect,
    importcpp: "ParamType", header: "Interface_FileReaderData.hxx".}
proc ParamCValue*(this: Interface_FileReaderData; num: Standard_Integer;
                 nump: Standard_Integer): Standard_CString {.noSideEffect,
    importcpp: "ParamCValue", header: "Interface_FileReaderData.hxx".}
proc IsParamDefined*(this: Interface_FileReaderData; num: Standard_Integer;
                    nump: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsParamDefined", header: "Interface_FileReaderData.hxx".}
proc ParamNumber*(this: Interface_FileReaderData; num: Standard_Integer;
                 nump: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "ParamNumber", header: "Interface_FileReaderData.hxx".}
proc ParamEntity*(this: Interface_FileReaderData; num: Standard_Integer;
                 nump: Standard_Integer): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ParamEntity", header: "Interface_FileReaderData.hxx".}
proc ParamFirstRank*(this: Interface_FileReaderData; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ParamFirstRank",
    header: "Interface_FileReaderData.hxx".}
proc BoundEntity*(this: Interface_FileReaderData; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "BoundEntity",
                         header: "Interface_FileReaderData.hxx".}
proc BindEntity*(this: var Interface_FileReaderData; num: Standard_Integer;
                ent: handle[Standard_Transient]) {.importcpp: "BindEntity",
    header: "Interface_FileReaderData.hxx".}
proc SetErrorLoad*(this: var Interface_FileReaderData; val: Standard_Boolean) {.
    importcpp: "SetErrorLoad", header: "Interface_FileReaderData.hxx".}
proc IsErrorLoad*(this: Interface_FileReaderData): Standard_Boolean {.noSideEffect,
    importcpp: "IsErrorLoad", header: "Interface_FileReaderData.hxx".}
proc ResetErrorLoad*(this: var Interface_FileReaderData): Standard_Boolean {.
    importcpp: "ResetErrorLoad", header: "Interface_FileReaderData.hxx".}
proc Destroy*(this: var Interface_FileReaderData) {.importcpp: "Destroy",
    header: "Interface_FileReaderData.hxx".}
proc destroyInterface_FileReaderData*(this: var Interface_FileReaderData) {.
    importcpp: "#.~Interface_FileReaderData()",
    header: "Interface_FileReaderData.hxx".}
proc Fastof*(str: Standard_CString): Standard_Real {.
    importcpp: "Interface_FileReaderData::Fastof(@)",
    header: "Interface_FileReaderData.hxx".}
type
  Interface_FileReaderDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_FileReaderData::get_type_name(@)",
                              header: "Interface_FileReaderData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_FileReaderData::get_type_descriptor(@)",
    header: "Interface_FileReaderData.hxx".}
proc DynamicType*(this: Interface_FileReaderData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_FileReaderData.hxx".}