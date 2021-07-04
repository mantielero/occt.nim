##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StdStorage_MapOfTypes,
  ../Storage/Storage_Error, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../StdObjMgt/StdObjMgt_MapOfInstantiators,
  ../TColStd/TColStd_HSequenceOfAsciiString

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of StdStorage_TypeData"
discard "forward decl of StdStorage_TypeData"
type
  Handle_StdStorage_TypeData* = handle[StdStorage_TypeData]

## ! Storage type data section keeps association between
## ! persistent textual types and their numbers

type
  StdStorage_TypeData* {.importcpp: "StdStorage_TypeData",
                        header: "StdStorage_TypeData.hxx", bycopy.} = object of Standard_Transient

  StdStorage_TypeDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StdStorage_TypeData::get_type_name(@)",
                              header: "StdStorage_TypeData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdStorage_TypeData::get_type_descriptor(@)",
    header: "StdStorage_TypeData.hxx".}
proc DynamicType*(this: StdStorage_TypeData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdStorage_TypeData.hxx".}
proc Read*(this: var StdStorage_TypeData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Read", header: "StdStorage_TypeData.hxx".}
proc Write*(this: var StdStorage_TypeData; theDriver: handle[Storage_BaseDriver]): Standard_Boolean {.
    importcpp: "Write", header: "StdStorage_TypeData.hxx".}
proc NumberOfTypes*(this: StdStorage_TypeData): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfTypes", header: "StdStorage_TypeData.hxx".}
proc AddType*(this: var StdStorage_TypeData; aTypeName: TCollection_AsciiString;
             aTypeNum: Standard_Integer) {.importcpp: "AddType",
    header: "StdStorage_TypeData.hxx".}
proc AddType*(this: var StdStorage_TypeData; aPObj: handle[StdObjMgt_Persistent]): Standard_Integer {.
    importcpp: "AddType", header: "StdStorage_TypeData.hxx".}
proc Type*(this: StdStorage_TypeData; aTypeNum: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Type", header: "StdStorage_TypeData.hxx".}
proc Type*(this: StdStorage_TypeData; aTypeName: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "Type", header: "StdStorage_TypeData.hxx".}
proc Instantiator*(this: StdStorage_TypeData; aTypeNum: Standard_Integer): Instantiator {.
    noSideEffect, importcpp: "Instantiator", header: "StdStorage_TypeData.hxx".}
proc IsType*(this: StdStorage_TypeData; aName: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "IsType", header: "StdStorage_TypeData.hxx".}
proc Types*(this: StdStorage_TypeData): handle[TColStd_HSequenceOfAsciiString] {.
    noSideEffect, importcpp: "Types", header: "StdStorage_TypeData.hxx".}
proc ErrorStatus*(this: StdStorage_TypeData): Storage_Error {.noSideEffect,
    importcpp: "ErrorStatus", header: "StdStorage_TypeData.hxx".}
proc ErrorStatusExtension*(this: StdStorage_TypeData): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorStatusExtension",
    header: "StdStorage_TypeData.hxx".}
proc ClearErrorStatus*(this: var StdStorage_TypeData) {.
    importcpp: "ClearErrorStatus", header: "StdStorage_TypeData.hxx".}
proc Clear*(this: var StdStorage_TypeData) {.importcpp: "Clear",
    header: "StdStorage_TypeData.hxx".}