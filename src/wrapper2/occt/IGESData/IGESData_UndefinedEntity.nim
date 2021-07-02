##  Created on: 1992-04-07
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

discard "forward decl of Interface_UndefinedContent"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_DirPart"
discard "forward decl of Interface_Check"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESData_UndefinedEntity"
discard "forward decl of IGESData_UndefinedEntity"
type
  HandleIGESDataUndefinedEntity* = Handle[IGESDataUndefinedEntity]

## ! undefined (unknown or error) entity specific of IGES
## ! DirPart can be correct or not : if it is not, a flag indicates
## ! it, and each corrupted field has an associated error flag

type
  IGESDataUndefinedEntity* {.importcpp: "IGESData_UndefinedEntity",
                            header: "IGESData_UndefinedEntity.hxx", bycopy.} = object of IGESDataIGESEntity ##
                                                                                                     ## !
                                                                                                     ## creates
                                                                                                     ## an
                                                                                                     ## unknown
                                                                                                     ## entity


proc constructIGESDataUndefinedEntity*(): IGESDataUndefinedEntity {.constructor,
    importcpp: "IGESData_UndefinedEntity(@)",
    header: "IGESData_UndefinedEntity.hxx".}
proc undefinedContent*(this: IGESDataUndefinedEntity): Handle[
    InterfaceUndefinedContent] {.noSideEffect, importcpp: "UndefinedContent",
                                header: "IGESData_UndefinedEntity.hxx".}
proc changeableContent*(this: var IGESDataUndefinedEntity): Handle[
    InterfaceUndefinedContent] {.importcpp: "ChangeableContent",
                                header: "IGESData_UndefinedEntity.hxx".}
proc setNewContent*(this: var IGESDataUndefinedEntity;
                   cont: Handle[InterfaceUndefinedContent]) {.
    importcpp: "SetNewContent", header: "IGESData_UndefinedEntity.hxx".}
proc isOKDirPart*(this: IGESDataUndefinedEntity): StandardBoolean {.noSideEffect,
    importcpp: "IsOKDirPart", header: "IGESData_UndefinedEntity.hxx".}
proc dirStatus*(this: IGESDataUndefinedEntity): StandardInteger {.noSideEffect,
    importcpp: "DirStatus", header: "IGESData_UndefinedEntity.hxx".}
proc setOKDirPart*(this: var IGESDataUndefinedEntity) {.importcpp: "SetOKDirPart",
    header: "IGESData_UndefinedEntity.hxx".}
proc defLineFont*(this: IGESDataUndefinedEntity): IGESDataDefType {.noSideEffect,
    importcpp: "DefLineFont", header: "IGESData_UndefinedEntity.hxx".}
proc defLevel*(this: IGESDataUndefinedEntity): IGESDataDefList {.noSideEffect,
    importcpp: "DefLevel", header: "IGESData_UndefinedEntity.hxx".}
proc defView*(this: IGESDataUndefinedEntity): IGESDataDefList {.noSideEffect,
    importcpp: "DefView", header: "IGESData_UndefinedEntity.hxx".}
proc defColor*(this: IGESDataUndefinedEntity): IGESDataDefType {.noSideEffect,
    importcpp: "DefColor", header: "IGESData_UndefinedEntity.hxx".}
proc hasSubScriptNumber*(this: IGESDataUndefinedEntity): StandardBoolean {.
    noSideEffect, importcpp: "HasSubScriptNumber",
    header: "IGESData_UndefinedEntity.hxx".}
proc readDir*(this: var IGESDataUndefinedEntity; ir: Handle[IGESDataIGESReaderData];
             dp: var IGESDataDirPart; ach: var Handle[InterfaceCheck]): StandardBoolean {.
    importcpp: "ReadDir", header: "IGESData_UndefinedEntity.hxx".}
proc readOwnParams*(this: var IGESDataUndefinedEntity;
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    importcpp: "ReadOwnParams", header: "IGESData_UndefinedEntity.hxx".}
proc writeOwnParams*(this: IGESDataUndefinedEntity; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESData_UndefinedEntity.hxx".}
type
  IGESDataUndefinedEntitybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_UndefinedEntity::get_type_name(@)",
                            header: "IGESData_UndefinedEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_UndefinedEntity::get_type_descriptor(@)",
    header: "IGESData_UndefinedEntity.hxx".}
proc dynamicType*(this: IGESDataUndefinedEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_UndefinedEntity.hxx".}

