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

discard "forward decl of Interface_ParamSet"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_FileParameter"
discard "forward decl of Interface_ParamList"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of Interface_FileReaderData"
type
  HandleInterfaceFileReaderData* = Handle[InterfaceFileReaderData]

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
  InterfaceFileReaderData* {.importcpp: "Interface_FileReaderData",
                            header: "Interface_FileReaderData.hxx", bycopy.} = object of StandardTransient ##
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


proc nbRecords*(this: InterfaceFileReaderData): int {.noSideEffect,
    importcpp: "NbRecords", header: "Interface_FileReaderData.hxx".}
proc nbEntities*(this: InterfaceFileReaderData): int {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_FileReaderData.hxx".}
proc findNextRecord*(this: InterfaceFileReaderData; num: int): int {.noSideEffect,
    importcpp: "FindNextRecord", header: "Interface_FileReaderData.hxx".}
proc initParams*(this: var InterfaceFileReaderData; num: int) {.
    importcpp: "InitParams", header: "Interface_FileReaderData.hxx".}
proc addParam*(this: var InterfaceFileReaderData; num: int; aval: StandardCString;
              atype: InterfaceParamType; nument: int = 0) {.importcpp: "AddParam",
    header: "Interface_FileReaderData.hxx".}
proc addParam*(this: var InterfaceFileReaderData; num: int;
              aval: TCollectionAsciiString; atype: InterfaceParamType;
              nument: int = 0) {.importcpp: "AddParam",
                             header: "Interface_FileReaderData.hxx".}
proc addParam*(this: var InterfaceFileReaderData; num: int; fp: InterfaceFileParameter) {.
    importcpp: "AddParam", header: "Interface_FileReaderData.hxx".}
proc setParam*(this: var InterfaceFileReaderData; num: int; nump: int;
              fp: InterfaceFileParameter) {.importcpp: "SetParam",
    header: "Interface_FileReaderData.hxx".}
proc nbParams*(this: InterfaceFileReaderData; num: int): int {.noSideEffect,
    importcpp: "NbParams", header: "Interface_FileReaderData.hxx".}
proc params*(this: InterfaceFileReaderData; num: int): Handle[InterfaceParamList] {.
    noSideEffect, importcpp: "Params", header: "Interface_FileReaderData.hxx".}
proc param*(this: InterfaceFileReaderData; num: int; nump: int): InterfaceFileParameter {.
    noSideEffect, importcpp: "Param", header: "Interface_FileReaderData.hxx".}
proc changeParam*(this: var InterfaceFileReaderData; num: int; nump: int): var InterfaceFileParameter {.
    importcpp: "ChangeParam", header: "Interface_FileReaderData.hxx".}
proc paramType*(this: InterfaceFileReaderData; num: int; nump: int): InterfaceParamType {.
    noSideEffect, importcpp: "ParamType", header: "Interface_FileReaderData.hxx".}
proc paramCValue*(this: InterfaceFileReaderData; num: int; nump: int): StandardCString {.
    noSideEffect, importcpp: "ParamCValue", header: "Interface_FileReaderData.hxx".}
proc isParamDefined*(this: InterfaceFileReaderData; num: int; nump: int): bool {.
    noSideEffect, importcpp: "IsParamDefined",
    header: "Interface_FileReaderData.hxx".}
proc paramNumber*(this: InterfaceFileReaderData; num: int; nump: int): int {.
    noSideEffect, importcpp: "ParamNumber", header: "Interface_FileReaderData.hxx".}
proc paramEntity*(this: InterfaceFileReaderData; num: int; nump: int): Handle[
    StandardTransient] {.noSideEffect, importcpp: "ParamEntity",
                        header: "Interface_FileReaderData.hxx".}
proc paramFirstRank*(this: InterfaceFileReaderData; num: int): int {.noSideEffect,
    importcpp: "ParamFirstRank", header: "Interface_FileReaderData.hxx".}
proc boundEntity*(this: InterfaceFileReaderData; num: int): Handle[StandardTransient] {.
    noSideEffect, importcpp: "BoundEntity", header: "Interface_FileReaderData.hxx".}
proc bindEntity*(this: var InterfaceFileReaderData; num: int;
                ent: Handle[StandardTransient]) {.importcpp: "BindEntity",
    header: "Interface_FileReaderData.hxx".}
proc setErrorLoad*(this: var InterfaceFileReaderData; val: bool) {.
    importcpp: "SetErrorLoad", header: "Interface_FileReaderData.hxx".}
proc isErrorLoad*(this: InterfaceFileReaderData): bool {.noSideEffect,
    importcpp: "IsErrorLoad", header: "Interface_FileReaderData.hxx".}
proc resetErrorLoad*(this: var InterfaceFileReaderData): bool {.
    importcpp: "ResetErrorLoad", header: "Interface_FileReaderData.hxx".}
proc destroy*(this: var InterfaceFileReaderData) {.importcpp: "Destroy",
    header: "Interface_FileReaderData.hxx".}
proc destroyInterfaceFileReaderData*(this: var InterfaceFileReaderData) {.
    importcpp: "#.~Interface_FileReaderData()",
    header: "Interface_FileReaderData.hxx".}
proc fastof*(str: StandardCString): float {.importcpp: "Interface_FileReaderData::Fastof(@)",
                                        header: "Interface_FileReaderData.hxx".}
type
  InterfaceFileReaderDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_FileReaderData::get_type_name(@)",
                            header: "Interface_FileReaderData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_FileReaderData::get_type_descriptor(@)",
    header: "Interface_FileReaderData.hxx".}
proc dynamicType*(this: InterfaceFileReaderData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_FileReaderData.hxx".}
