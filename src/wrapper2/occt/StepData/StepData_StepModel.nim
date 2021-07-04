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
  ../Interface/Interface_EntityList, ../TColStd/TColStd_HArray1OfInteger,
  ../Interface/Interface_InterfaceModel, ../Resource/Resource_FormatType

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Check"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepData_StepModel"
discard "forward decl of StepData_StepModel"
type
  Handle_StepData_StepModel* = handle[StepData_StepModel]

## ! Gives access to
## ! - entities in a STEP file,
## ! - the STEP file header.

type
  StepData_StepModel* {.importcpp: "StepData_StepModel",
                       header: "StepData_StepModel.hxx", bycopy.} = object of Interface_InterfaceModel ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## STEP
                                                                                                ## model
                                                                                                ## with
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## header.


proc constructStepData_StepModel*(): StepData_StepModel {.constructor,
    importcpp: "StepData_StepModel(@)", header: "StepData_StepModel.hxx".}
proc Entity*(this: StepData_StepModel; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Entity",
                         header: "StepData_StepModel.hxx".}
proc GetFromAnother*(this: var StepData_StepModel;
                    other: handle[Interface_InterfaceModel]) {.
    importcpp: "GetFromAnother", header: "StepData_StepModel.hxx".}
proc NewEmptyModel*(this: StepData_StepModel): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewEmptyModel", header: "StepData_StepModel.hxx".}
proc Header*(this: StepData_StepModel): Interface_EntityIterator {.noSideEffect,
    importcpp: "Header", header: "StepData_StepModel.hxx".}
proc HasHeaderEntity*(this: StepData_StepModel; atype: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "HasHeaderEntity", header: "StepData_StepModel.hxx".}
proc HeaderEntity*(this: StepData_StepModel; atype: handle[Standard_Type]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "HeaderEntity",
                         header: "StepData_StepModel.hxx".}
proc ClearHeader*(this: var StepData_StepModel) {.importcpp: "ClearHeader",
    header: "StepData_StepModel.hxx".}
proc AddHeaderEntity*(this: var StepData_StepModel; ent: handle[Standard_Transient]) {.
    importcpp: "AddHeaderEntity", header: "StepData_StepModel.hxx".}
proc VerifyCheck*(this: StepData_StepModel; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "VerifyCheck", header: "StepData_StepModel.hxx".}
proc DumpHeader*(this: StepData_StepModel; S: var Standard_OStream;
                level: Standard_Integer = 0) {.noSideEffect, importcpp: "DumpHeader",
    header: "StepData_StepModel.hxx".}
proc ClearLabels*(this: var StepData_StepModel) {.importcpp: "ClearLabels",
    header: "StepData_StepModel.hxx".}
proc SetIdentLabel*(this: var StepData_StepModel; ent: handle[Standard_Transient];
                   ident: Standard_Integer) {.importcpp: "SetIdentLabel",
    header: "StepData_StepModel.hxx".}
proc IdentLabel*(this: StepData_StepModel; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "IdentLabel", header: "StepData_StepModel.hxx".}
proc PrintLabel*(this: StepData_StepModel; ent: handle[Standard_Transient];
                S: var Standard_OStream) {.noSideEffect, importcpp: "PrintLabel",
                                        header: "StepData_StepModel.hxx".}
proc StringLabel*(this: StepData_StepModel; ent: handle[Standard_Transient]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "StringLabel",
                               header: "StepData_StepModel.hxx".}
proc SourceCodePage*(this: StepData_StepModel): Resource_FormatType {.noSideEffect,
    importcpp: "SourceCodePage", header: "StepData_StepModel.hxx".}
proc SetSourceCodePage*(this: var StepData_StepModel; theCode: Resource_FormatType) {.
    importcpp: "SetSourceCodePage", header: "StepData_StepModel.hxx".}
type
  StepData_StepModelbase_type* = Interface_InterfaceModel

proc get_type_name*(): cstring {.importcpp: "StepData_StepModel::get_type_name(@)",
                              header: "StepData_StepModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_StepModel::get_type_descriptor(@)",
    header: "StepData_StepModel.hxx".}
proc DynamicType*(this: StepData_StepModel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_StepModel.hxx".}