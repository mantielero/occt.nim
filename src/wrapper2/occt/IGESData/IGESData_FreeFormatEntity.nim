##  Created on: 1992-12-18
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
  ../TColStd/TColStd_HSequenceOfInteger, IGESData_UndefinedEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Interface/Interface_ParamType, ../Standard/Standard_CString,
  IGESData_HArray1OfIGESEntity

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESData_FreeFormatEntity"
discard "forward decl of IGESData_FreeFormatEntity"
type
  Handle_IGESData_FreeFormatEntity* = handle[IGESData_FreeFormatEntity]

## ! This class allows to create IGES Entities in a literal form :
## ! their definition is free, but they are not recognized as
## ! instances of specific classes.
## !
## ! This is a way to define test files without having to create
## ! and fill specific classes of Entities, or creating an IGES
## ! File ex nihilo, with respect for all format constraints
## ! (such a way is very difficult to run and to master).
## !
## ! This class has the same content as an UndefinedEntity, only
## ! it gives way to act on its content

type
  IGESData_FreeFormatEntity* {.importcpp: "IGESData_FreeFormatEntity",
                              header: "IGESData_FreeFormatEntity.hxx", bycopy.} = object of IGESData_UndefinedEntity ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## a
                                                                                                              ## completely
                                                                                                              ## empty
                                                                                                              ## FreeFormatEntity


proc constructIGESData_FreeFormatEntity*(): IGESData_FreeFormatEntity {.
    constructor, importcpp: "IGESData_FreeFormatEntity(@)",
    header: "IGESData_FreeFormatEntity.hxx".}
proc SetTypeNumber*(this: var IGESData_FreeFormatEntity; typenum: Standard_Integer) {.
    importcpp: "SetTypeNumber", header: "IGESData_FreeFormatEntity.hxx".}
proc SetFormNumber*(this: var IGESData_FreeFormatEntity; formnum: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESData_FreeFormatEntity.hxx".}
proc NbParams*(this: IGESData_FreeFormatEntity): Standard_Integer {.noSideEffect,
    importcpp: "NbParams", header: "IGESData_FreeFormatEntity.hxx".}
proc ParamData*(this: IGESData_FreeFormatEntity; num: Standard_Integer;
               ptype: var Interface_ParamType;
               ent: var handle[IGESData_IGESEntity];
               val: var handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "ParamData", header: "IGESData_FreeFormatEntity.hxx".}
proc ParamType*(this: IGESData_FreeFormatEntity; num: Standard_Integer): Interface_ParamType {.
    noSideEffect, importcpp: "ParamType", header: "IGESData_FreeFormatEntity.hxx".}
proc IsParamEntity*(this: IGESData_FreeFormatEntity; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsParamEntity",
    header: "IGESData_FreeFormatEntity.hxx".}
proc ParamEntity*(this: IGESData_FreeFormatEntity; num: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "ParamEntity",
                          header: "IGESData_FreeFormatEntity.hxx".}
proc IsNegativePointer*(this: IGESData_FreeFormatEntity; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsNegativePointer",
    header: "IGESData_FreeFormatEntity.hxx".}
proc ParamValue*(this: IGESData_FreeFormatEntity; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ParamValue",
                               header: "IGESData_FreeFormatEntity.hxx".}
proc NegativePointers*(this: IGESData_FreeFormatEntity): handle[
    TColStd_HSequenceOfInteger] {.noSideEffect, importcpp: "NegativePointers",
                                 header: "IGESData_FreeFormatEntity.hxx".}
proc AddLiteral*(this: var IGESData_FreeFormatEntity; ptype: Interface_ParamType;
                val: handle[TCollection_HAsciiString]) {.importcpp: "AddLiteral",
    header: "IGESData_FreeFormatEntity.hxx".}
proc AddLiteral*(this: var IGESData_FreeFormatEntity; ptype: Interface_ParamType;
                val: Standard_CString) {.importcpp: "AddLiteral",
                                       header: "IGESData_FreeFormatEntity.hxx".}
proc AddEntity*(this: var IGESData_FreeFormatEntity; ptype: Interface_ParamType;
               ent: handle[IGESData_IGESEntity];
               negative: Standard_Boolean = Standard_False) {.
    importcpp: "AddEntity", header: "IGESData_FreeFormatEntity.hxx".}
proc AddEntities*(this: var IGESData_FreeFormatEntity;
                 ents: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "AddEntities", header: "IGESData_FreeFormatEntity.hxx".}
proc AddNegativePointers*(this: var IGESData_FreeFormatEntity;
                         list: handle[TColStd_HSequenceOfInteger]) {.
    importcpp: "AddNegativePointers", header: "IGESData_FreeFormatEntity.hxx".}
proc ClearNegativePointers*(this: var IGESData_FreeFormatEntity) {.
    importcpp: "ClearNegativePointers", header: "IGESData_FreeFormatEntity.hxx".}
proc WriteOwnParams*(this: IGESData_FreeFormatEntity; IW: var IGESData_IGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESData_FreeFormatEntity.hxx".}
type
  IGESData_FreeFormatEntitybase_type* = IGESData_UndefinedEntity

proc get_type_name*(): cstring {.importcpp: "IGESData_FreeFormatEntity::get_type_name(@)",
                              header: "IGESData_FreeFormatEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_FreeFormatEntity::get_type_descriptor(@)",
    header: "IGESData_FreeFormatEntity.hxx".}
proc DynamicType*(this: IGESData_FreeFormatEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_FreeFormatEntity.hxx".}