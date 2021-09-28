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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Check"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepData_StepModel"
discard "forward decl of StepData_StepModel"
type
  HandleC1C1* = Handle[StepDataStepModel]

## ! Gives access to
## ! - entities in a STEP file,
## ! - the STEP file header.

type
  StepDataStepModel* {.importcpp: "StepData_StepModel",
                      header: "StepData_StepModel.hxx", bycopy.} = object of InterfaceInterfaceModel ##
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


proc constructStepDataStepModel*(): StepDataStepModel {.constructor,
    importcpp: "StepData_StepModel(@)", header: "StepData_StepModel.hxx".}
proc entity*(this: StepDataStepModel; num: cint): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Entity", header: "StepData_StepModel.hxx".}
proc getFromAnother*(this: var StepDataStepModel;
                    other: Handle[InterfaceInterfaceModel]) {.
    importcpp: "GetFromAnother", header: "StepData_StepModel.hxx".}
proc newEmptyModel*(this: StepDataStepModel): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewEmptyModel", header: "StepData_StepModel.hxx".}
proc header*(this: StepDataStepModel): InterfaceEntityIterator {.noSideEffect,
    importcpp: "Header", header: "StepData_StepModel.hxx".}
proc hasHeaderEntity*(this: StepDataStepModel; atype: Handle[StandardType]): bool {.
    noSideEffect, importcpp: "HasHeaderEntity", header: "StepData_StepModel.hxx".}
proc headerEntity*(this: StepDataStepModel; atype: Handle[StandardType]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "HeaderEntity",
                        header: "StepData_StepModel.hxx".}
proc clearHeader*(this: var StepDataStepModel) {.importcpp: "ClearHeader",
    header: "StepData_StepModel.hxx".}
proc addHeaderEntity*(this: var StepDataStepModel; ent: Handle[StandardTransient]) {.
    importcpp: "AddHeaderEntity", header: "StepData_StepModel.hxx".}
proc verifyCheck*(this: StepDataStepModel; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "VerifyCheck", header: "StepData_StepModel.hxx".}
proc dumpHeader*(this: StepDataStepModel; s: var StandardOStream; level: cint = 0) {.
    noSideEffect, importcpp: "DumpHeader", header: "StepData_StepModel.hxx".}
proc clearLabels*(this: var StepDataStepModel) {.importcpp: "ClearLabels",
    header: "StepData_StepModel.hxx".}
proc setIdentLabel*(this: var StepDataStepModel; ent: Handle[StandardTransient];
                   ident: cint) {.importcpp: "SetIdentLabel",
                                header: "StepData_StepModel.hxx".}
proc identLabel*(this: StepDataStepModel; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "IdentLabel", header: "StepData_StepModel.hxx".}
proc printLabel*(this: StepDataStepModel; ent: Handle[StandardTransient];
                s: var StandardOStream) {.noSideEffect, importcpp: "PrintLabel",
                                       header: "StepData_StepModel.hxx".}
proc stringLabel*(this: StepDataStepModel; ent: Handle[StandardTransient]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "StringLabel",
                              header: "StepData_StepModel.hxx".}
proc sourceCodePage*(this: StepDataStepModel): ResourceFormatType {.noSideEffect,
    importcpp: "SourceCodePage", header: "StepData_StepModel.hxx".}
proc setSourceCodePage*(this: var StepDataStepModel; theCode: ResourceFormatType) {.
    importcpp: "SetSourceCodePage", header: "StepData_StepModel.hxx".}
type
  StepDataStepModelbaseType* = InterfaceInterfaceModel

proc getTypeName*(): cstring {.importcpp: "StepData_StepModel::get_type_name(@)",
                            header: "StepData_StepModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_StepModel::get_type_descriptor(@)",
    header: "StepData_StepModel.hxx".}
proc dynamicType*(this: StepDataStepModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_StepModel.hxx".}

























