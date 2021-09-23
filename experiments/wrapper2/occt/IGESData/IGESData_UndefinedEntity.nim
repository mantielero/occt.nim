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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  IGESData_IGESEntity, ../Standard/Standard_Boolean, IGESData_DefType,
  IGESData_DefList

discard "forward decl of Interface_UndefinedContent"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_DirPart"
discard "forward decl of Interface_Check"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of IGESData_UndefinedEntity"
discard "forward decl of IGESData_UndefinedEntity"
type
  Handle_IGESData_UndefinedEntity* = handle[IGESData_UndefinedEntity]

## ! undefined (unknown or error) entity specific of IGES
## ! DirPart can be correct or not : if it is not, a flag indicates
## ! it, and each corrupted field has an associated error flag

type
  IGESData_UndefinedEntity* {.importcpp: "IGESData_UndefinedEntity",
                             header: "IGESData_UndefinedEntity.hxx", bycopy.} = object of IGESData_IGESEntity ##
                                                                                                       ## !
                                                                                                       ## creates
                                                                                                       ## an
                                                                                                       ## unknown
                                                                                                       ## entity


proc constructIGESData_UndefinedEntity*(): IGESData_UndefinedEntity {.constructor,
    importcpp: "IGESData_UndefinedEntity(@)",
    header: "IGESData_UndefinedEntity.hxx".}
proc UndefinedContent*(this: IGESData_UndefinedEntity): handle[
    Interface_UndefinedContent] {.noSideEffect, importcpp: "UndefinedContent",
                                 header: "IGESData_UndefinedEntity.hxx".}
proc ChangeableContent*(this: var IGESData_UndefinedEntity): handle[
    Interface_UndefinedContent] {.importcpp: "ChangeableContent",
                                 header: "IGESData_UndefinedEntity.hxx".}
proc SetNewContent*(this: var IGESData_UndefinedEntity;
                   cont: handle[Interface_UndefinedContent]) {.
    importcpp: "SetNewContent", header: "IGESData_UndefinedEntity.hxx".}
proc IsOKDirPart*(this: IGESData_UndefinedEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsOKDirPart", header: "IGESData_UndefinedEntity.hxx".}
proc DirStatus*(this: IGESData_UndefinedEntity): Standard_Integer {.noSideEffect,
    importcpp: "DirStatus", header: "IGESData_UndefinedEntity.hxx".}
proc SetOKDirPart*(this: var IGESData_UndefinedEntity) {.importcpp: "SetOKDirPart",
    header: "IGESData_UndefinedEntity.hxx".}
proc DefLineFont*(this: IGESData_UndefinedEntity): IGESData_DefType {.noSideEffect,
    importcpp: "DefLineFont", header: "IGESData_UndefinedEntity.hxx".}
proc DefLevel*(this: IGESData_UndefinedEntity): IGESData_DefList {.noSideEffect,
    importcpp: "DefLevel", header: "IGESData_UndefinedEntity.hxx".}
proc DefView*(this: IGESData_UndefinedEntity): IGESData_DefList {.noSideEffect,
    importcpp: "DefView", header: "IGESData_UndefinedEntity.hxx".}
proc DefColor*(this: IGESData_UndefinedEntity): IGESData_DefType {.noSideEffect,
    importcpp: "DefColor", header: "IGESData_UndefinedEntity.hxx".}
proc HasSubScriptNumber*(this: IGESData_UndefinedEntity): Standard_Boolean {.
    noSideEffect, importcpp: "HasSubScriptNumber",
    header: "IGESData_UndefinedEntity.hxx".}
proc ReadDir*(this: var IGESData_UndefinedEntity;
             IR: handle[IGESData_IGESReaderData]; DP: var IGESData_DirPart;
             ach: var handle[Interface_Check]): Standard_Boolean {.
    importcpp: "ReadDir", header: "IGESData_UndefinedEntity.hxx".}
proc ReadOwnParams*(this: var IGESData_UndefinedEntity;
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.importcpp: "ReadOwnParams",
    header: "IGESData_UndefinedEntity.hxx".}
proc WriteOwnParams*(this: IGESData_UndefinedEntity; IW: var IGESData_IGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESData_UndefinedEntity.hxx".}
type
  IGESData_UndefinedEntitybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESData_UndefinedEntity::get_type_name(@)",
                              header: "IGESData_UndefinedEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_UndefinedEntity::get_type_descriptor(@)",
    header: "IGESData_UndefinedEntity.hxx".}
proc DynamicType*(this: IGESData_UndefinedEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_UndefinedEntity.hxx".}