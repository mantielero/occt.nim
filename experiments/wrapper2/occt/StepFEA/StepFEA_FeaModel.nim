##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_FeaModel"
discard "forward decl of StepFEA_FeaModel"
type
  HandleStepFEA_FeaModel* = Handle[StepFEA_FeaModel]

## ! Representation of STEP entity FeaModel

type
  StepFEA_FeaModel* {.importcpp: "StepFEA_FeaModel",
                     header: "StepFEA_FeaModel.hxx", bycopy.} = object of StepReprRepresentation ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructStepFEA_FeaModel*(): StepFEA_FeaModel {.constructor,
    importcpp: "StepFEA_FeaModel(@)", header: "StepFEA_FeaModel.hxx".}
proc init*(this: var StepFEA_FeaModel;
          aRepresentationName: Handle[TCollectionHAsciiString];
          aRepresentationItems: Handle[StepReprHArray1OfRepresentationItem];
          aRepresentationContextOfItems: Handle[StepReprRepresentationContext];
          aCreatingSoftware: Handle[TCollectionHAsciiString];
          aIntendedAnalysisCode: Handle[TColStdHArray1OfAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aAnalysisType: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepFEA_FeaModel.hxx".}
proc creatingSoftware*(this: StepFEA_FeaModel): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "CreatingSoftware", header: "StepFEA_FeaModel.hxx".}
proc setCreatingSoftware*(this: var StepFEA_FeaModel;
                         creatingSoftware: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetCreatingSoftware", header: "StepFEA_FeaModel.hxx".}
proc intendedAnalysisCode*(this: StepFEA_FeaModel): Handle[
    TColStdHArray1OfAsciiString] {.noSideEffect,
                                  importcpp: "IntendedAnalysisCode",
                                  header: "StepFEA_FeaModel.hxx".}
proc setIntendedAnalysisCode*(this: var StepFEA_FeaModel; intendedAnalysisCode: Handle[
    TColStdHArray1OfAsciiString]) {.importcpp: "SetIntendedAnalysisCode",
                                   header: "StepFEA_FeaModel.hxx".}
proc description*(this: StepFEA_FeaModel): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepFEA_FeaModel.hxx".}
proc setDescription*(this: var StepFEA_FeaModel;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepFEA_FeaModel.hxx".}
proc analysisType*(this: StepFEA_FeaModel): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "AnalysisType", header: "StepFEA_FeaModel.hxx".}
proc setAnalysisType*(this: var StepFEA_FeaModel;
                     analysisType: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAnalysisType", header: "StepFEA_FeaModel.hxx".}
type
  StepFEA_FeaModelbaseType* = StepReprRepresentation

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaModel::get_type_name(@)",
                            header: "StepFEA_FeaModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaModel::get_type_descriptor(@)",
    header: "StepFEA_FeaModel.hxx".}
proc dynamicType*(this: StepFEA_FeaModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_FeaModel.hxx".}
