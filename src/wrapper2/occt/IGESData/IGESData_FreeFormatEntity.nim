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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESData_FreeFormatEntity"
discard "forward decl of IGESData_FreeFormatEntity"
type
  HandleIGESDataFreeFormatEntity* = Handle[IGESDataFreeFormatEntity]

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
  IGESDataFreeFormatEntity* {.importcpp: "IGESData_FreeFormatEntity",
                             header: "IGESData_FreeFormatEntity.hxx", bycopy.} = object of IGESDataUndefinedEntity ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## completely
                                                                                                            ## empty
                                                                                                            ## FreeFormatEntity


proc constructIGESDataFreeFormatEntity*(): IGESDataFreeFormatEntity {.constructor,
    importcpp: "IGESData_FreeFormatEntity(@)",
    header: "IGESData_FreeFormatEntity.hxx".}
proc setTypeNumber*(this: var IGESDataFreeFormatEntity; typenum: StandardInteger) {.
    importcpp: "SetTypeNumber", header: "IGESData_FreeFormatEntity.hxx".}
proc setFormNumber*(this: var IGESDataFreeFormatEntity; formnum: StandardInteger) {.
    importcpp: "SetFormNumber", header: "IGESData_FreeFormatEntity.hxx".}
proc nbParams*(this: IGESDataFreeFormatEntity): StandardInteger {.noSideEffect,
    importcpp: "NbParams", header: "IGESData_FreeFormatEntity.hxx".}
proc paramData*(this: IGESDataFreeFormatEntity; num: StandardInteger;
               ptype: var InterfaceParamType; ent: var Handle[IGESDataIGESEntity];
               val: var Handle[TCollectionHAsciiString]): StandardBoolean {.
    noSideEffect, importcpp: "ParamData", header: "IGESData_FreeFormatEntity.hxx".}
proc paramType*(this: IGESDataFreeFormatEntity; num: StandardInteger): InterfaceParamType {.
    noSideEffect, importcpp: "ParamType", header: "IGESData_FreeFormatEntity.hxx".}
proc isParamEntity*(this: IGESDataFreeFormatEntity; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsParamEntity",
    header: "IGESData_FreeFormatEntity.hxx".}
proc paramEntity*(this: IGESDataFreeFormatEntity; num: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "ParamEntity",
                         header: "IGESData_FreeFormatEntity.hxx".}
proc isNegativePointer*(this: IGESDataFreeFormatEntity; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsNegativePointer",
    header: "IGESData_FreeFormatEntity.hxx".}
proc paramValue*(this: IGESDataFreeFormatEntity; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ParamValue",
                              header: "IGESData_FreeFormatEntity.hxx".}
proc negativePointers*(this: IGESDataFreeFormatEntity): Handle[
    TColStdHSequenceOfInteger] {.noSideEffect, importcpp: "NegativePointers",
                                header: "IGESData_FreeFormatEntity.hxx".}
proc addLiteral*(this: var IGESDataFreeFormatEntity; ptype: InterfaceParamType;
                val: Handle[TCollectionHAsciiString]) {.importcpp: "AddLiteral",
    header: "IGESData_FreeFormatEntity.hxx".}
proc addLiteral*(this: var IGESDataFreeFormatEntity; ptype: InterfaceParamType;
                val: StandardCString) {.importcpp: "AddLiteral",
                                      header: "IGESData_FreeFormatEntity.hxx".}
proc addEntity*(this: var IGESDataFreeFormatEntity; ptype: InterfaceParamType;
               ent: Handle[IGESDataIGESEntity];
               negative: StandardBoolean = standardFalse) {.importcpp: "AddEntity",
    header: "IGESData_FreeFormatEntity.hxx".}
proc addEntities*(this: var IGESDataFreeFormatEntity;
                 ents: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "AddEntities", header: "IGESData_FreeFormatEntity.hxx".}
proc addNegativePointers*(this: var IGESDataFreeFormatEntity;
                         list: Handle[TColStdHSequenceOfInteger]) {.
    importcpp: "AddNegativePointers", header: "IGESData_FreeFormatEntity.hxx".}
proc clearNegativePointers*(this: var IGESDataFreeFormatEntity) {.
    importcpp: "ClearNegativePointers", header: "IGESData_FreeFormatEntity.hxx".}
proc writeOwnParams*(this: IGESDataFreeFormatEntity; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESData_FreeFormatEntity.hxx".}
type
  IGESDataFreeFormatEntitybaseType* = IGESDataUndefinedEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_FreeFormatEntity::get_type_name(@)",
                            header: "IGESData_FreeFormatEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_FreeFormatEntity::get_type_descriptor(@)",
    header: "IGESData_FreeFormatEntity.hxx".}
proc dynamicType*(this: IGESDataFreeFormatEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_FreeFormatEntity.hxx".}

