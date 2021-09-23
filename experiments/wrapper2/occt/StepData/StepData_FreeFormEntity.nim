##  Created on: 1997-01-03
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../TCollection/TCollection_AsciiString, StepData_HArray1OfField,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HSequenceOfAsciiString,
  ../Standard/Standard_Integer

discard "forward decl of StepData_Field"
discard "forward decl of StepData_FreeFormEntity"
discard "forward decl of StepData_FreeFormEntity"
type
  Handle_StepData_FreeFormEntity* = handle[StepData_FreeFormEntity]

## ! A Free Form Entity allows to record any kind of STEP
## ! parameters, in any way of typing
## ! It is implemented with an array of fields
## ! A Complex entity can be defined, as a chain of FreeFormEntity
## ! (see Next and As)

type
  StepData_FreeFormEntity* {.importcpp: "StepData_FreeFormEntity",
                            header: "StepData_FreeFormEntity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## FreeFormEntity,
                                                                                                    ## with
                                                                                                    ## no
                                                                                                    ## field,
                                                                                                    ## no
                                                                                                    ## type


proc constructStepData_FreeFormEntity*(): StepData_FreeFormEntity {.constructor,
    importcpp: "StepData_FreeFormEntity(@)", header: "StepData_FreeFormEntity.hxx".}
proc SetStepType*(this: var StepData_FreeFormEntity; typenam: Standard_CString) {.
    importcpp: "SetStepType", header: "StepData_FreeFormEntity.hxx".}
proc StepType*(this: StepData_FreeFormEntity): Standard_CString {.noSideEffect,
    importcpp: "StepType", header: "StepData_FreeFormEntity.hxx".}
proc SetNext*(this: var StepData_FreeFormEntity;
             next: handle[StepData_FreeFormEntity];
             last: Standard_Boolean = Standard_True) {.importcpp: "SetNext",
    header: "StepData_FreeFormEntity.hxx".}
proc Next*(this: StepData_FreeFormEntity): handle[StepData_FreeFormEntity] {.
    noSideEffect, importcpp: "Next", header: "StepData_FreeFormEntity.hxx".}
proc IsComplex*(this: StepData_FreeFormEntity): Standard_Boolean {.noSideEffect,
    importcpp: "IsComplex", header: "StepData_FreeFormEntity.hxx".}
proc Typed*(this: StepData_FreeFormEntity; typenam: Standard_CString): handle[
    StepData_FreeFormEntity] {.noSideEffect, importcpp: "Typed",
                              header: "StepData_FreeFormEntity.hxx".}
proc TypeList*(this: StepData_FreeFormEntity): handle[
    TColStd_HSequenceOfAsciiString] {.noSideEffect, importcpp: "TypeList",
                                     header: "StepData_FreeFormEntity.hxx".}
proc Reorder*(ent: var handle[StepData_FreeFormEntity]): Standard_Boolean {.
    importcpp: "StepData_FreeFormEntity::Reorder(@)",
    header: "StepData_FreeFormEntity.hxx".}
proc SetNbFields*(this: var StepData_FreeFormEntity; nb: Standard_Integer) {.
    importcpp: "SetNbFields", header: "StepData_FreeFormEntity.hxx".}
proc NbFields*(this: StepData_FreeFormEntity): Standard_Integer {.noSideEffect,
    importcpp: "NbFields", header: "StepData_FreeFormEntity.hxx".}
proc Field*(this: StepData_FreeFormEntity; num: Standard_Integer): StepData_Field {.
    noSideEffect, importcpp: "Field", header: "StepData_FreeFormEntity.hxx".}
proc CField*(this: var StepData_FreeFormEntity; num: Standard_Integer): var StepData_Field {.
    importcpp: "CField", header: "StepData_FreeFormEntity.hxx".}
type
  StepData_FreeFormEntitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepData_FreeFormEntity::get_type_name(@)",
                              header: "StepData_FreeFormEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_FreeFormEntity::get_type_descriptor(@)",
    header: "StepData_FreeFormEntity.hxx".}
proc DynamicType*(this: StepData_FreeFormEntity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_FreeFormEntity.hxx".}