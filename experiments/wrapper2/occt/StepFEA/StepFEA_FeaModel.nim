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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfAsciiString, ../StepRepr/StepRepr_Representation,
  ../StepRepr/StepRepr_HArray1OfRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_FeaModel"
discard "forward decl of StepFEA_FeaModel"
type
  Handle_StepFEA_FeaModel* = handle[StepFEA_FeaModel]

## ! Representation of STEP entity FeaModel

type
  StepFEA_FeaModel* {.importcpp: "StepFEA_FeaModel",
                     header: "StepFEA_FeaModel.hxx", bycopy.} = object of StepRepr_Representation ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepFEA_FeaModel*(): StepFEA_FeaModel {.constructor,
    importcpp: "StepFEA_FeaModel(@)", header: "StepFEA_FeaModel.hxx".}
proc Init*(this: var StepFEA_FeaModel;
          aRepresentation_Name: handle[TCollection_HAsciiString];
          aRepresentation_Items: handle[StepRepr_HArray1OfRepresentationItem];
    aRepresentation_ContextOfItems: handle[StepRepr_RepresentationContext];
          aCreatingSoftware: handle[TCollection_HAsciiString];
          aIntendedAnalysisCode: handle[TColStd_HArray1OfAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aAnalysisType: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepFEA_FeaModel.hxx".}
proc CreatingSoftware*(this: StepFEA_FeaModel): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "CreatingSoftware", header: "StepFEA_FeaModel.hxx".}
proc SetCreatingSoftware*(this: var StepFEA_FeaModel;
                         CreatingSoftware: handle[TCollection_HAsciiString]) {.
    importcpp: "SetCreatingSoftware", header: "StepFEA_FeaModel.hxx".}
proc IntendedAnalysisCode*(this: StepFEA_FeaModel): handle[
    TColStd_HArray1OfAsciiString] {.noSideEffect,
                                   importcpp: "IntendedAnalysisCode",
                                   header: "StepFEA_FeaModel.hxx".}
proc SetIntendedAnalysisCode*(this: var StepFEA_FeaModel; IntendedAnalysisCode: handle[
    TColStd_HArray1OfAsciiString]) {.importcpp: "SetIntendedAnalysisCode",
                                    header: "StepFEA_FeaModel.hxx".}
proc Description*(this: StepFEA_FeaModel): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepFEA_FeaModel.hxx".}
proc SetDescription*(this: var StepFEA_FeaModel;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepFEA_FeaModel.hxx".}
proc AnalysisType*(this: StepFEA_FeaModel): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "AnalysisType", header: "StepFEA_FeaModel.hxx".}
proc SetAnalysisType*(this: var StepFEA_FeaModel;
                     AnalysisType: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAnalysisType", header: "StepFEA_FeaModel.hxx".}
type
  StepFEA_FeaModelbase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepFEA_FeaModel::get_type_name(@)",
                              header: "StepFEA_FeaModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FeaModel::get_type_descriptor(@)",
    header: "StepFEA_FeaModel.hxx".}
proc DynamicType*(this: StepFEA_FeaModel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_FeaModel.hxx".}