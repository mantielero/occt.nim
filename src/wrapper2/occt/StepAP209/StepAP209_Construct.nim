##  Created on: 2002-12-06
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../STEPConstruct/STEPConstruct_Tool,
  ../Standard/Standard_Boolean,
  ../StepElement/StepElement_HSequenceOfElementMaterial,
  ../StepFEA/StepFEA_HSequenceOfElementGeometricRelationship,
  ../StepFEA/StepFEA_HSequenceOfElementRepresentation, ../Standard/Standard_Type,
  ../StepElement/StepElement_HSequenceOfCurveElementSectionDefinition

discard "forward decl of XSControl_WorkSession"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepFEA_FeaModel"
discard "forward decl of StepBasic_Product"
discard "forward decl of StepFEA_FeaAxis2Placement3d"
discard "forward decl of StepShape_ShapeRepresentation"
discard "forward decl of StepFEA_Curve3dElementRepresentation"
discard "forward decl of StepFEA_ElementRepresentation"
discard "forward decl of StepBasic_ProductDefinition"
discard "forward decl of StepData_StepModel"
discard "forward decl of StepRepr_ProductDefinitionShape"
type
  StepAP209_Construct* {.importcpp: "StepAP209_Construct",
                        header: "StepAP209_Construct.hxx", bycopy.} = object of STEPConstruct_Tool ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## tool


proc constructStepAP209_Construct*(): StepAP209_Construct {.constructor,
    importcpp: "StepAP209_Construct(@)", header: "StepAP209_Construct.hxx".}
proc constructStepAP209_Construct*(WS: handle[XSControl_WorkSession]): StepAP209_Construct {.
    constructor, importcpp: "StepAP209_Construct(@)",
    header: "StepAP209_Construct.hxx".}
proc Init*(this: var StepAP209_Construct; WS: handle[XSControl_WorkSession]): Standard_Boolean {.
    importcpp: "Init", header: "StepAP209_Construct.hxx".}
proc IsDesing*(this: StepAP209_Construct;
              PD: handle[StepBasic_ProductDefinitionFormation]): Standard_Boolean {.
    noSideEffect, importcpp: "IsDesing", header: "StepAP209_Construct.hxx".}
proc IsAnalys*(this: StepAP209_Construct;
              PD: handle[StepBasic_ProductDefinitionFormation]): Standard_Boolean {.
    noSideEffect, importcpp: "IsAnalys", header: "StepAP209_Construct.hxx".}
proc FeaModel*(this: StepAP209_Construct; Prod: handle[StepBasic_Product]): handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc FeaModel*(this: StepAP209_Construct;
              PDF: handle[StepBasic_ProductDefinitionFormation]): handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc GetFeaAxis2Placement3d*(this: StepAP209_Construct;
                            theFeaModel: handle[StepFEA_FeaModel]): handle[
    StepFEA_FeaAxis2Placement3d] {.noSideEffect,
                                  importcpp: "GetFeaAxis2Placement3d",
                                  header: "StepAP209_Construct.hxx".}
proc IdealShape*(this: StepAP209_Construct; Prod: handle[StepBasic_Product]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                    header: "StepAP209_Construct.hxx".}
proc IdealShape*(this: StepAP209_Construct;
                PDF: handle[StepBasic_ProductDefinitionFormation]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                    header: "StepAP209_Construct.hxx".}
proc NominShape*(this: StepAP209_Construct; Prod: handle[StepBasic_Product]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "NominShape",
                                    header: "StepAP209_Construct.hxx".}
proc NominShape*(this: StepAP209_Construct;
                PDF: handle[StepBasic_ProductDefinitionFormation]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "NominShape",
                                    header: "StepAP209_Construct.hxx".}
proc GetElementMaterial*(this: StepAP209_Construct): handle[
    StepElement_HSequenceOfElementMaterial] {.noSideEffect,
    importcpp: "GetElementMaterial", header: "StepAP209_Construct.hxx".}
proc GetElemGeomRelat*(this: StepAP209_Construct): handle[
    StepFEA_HSequenceOfElementGeometricRelationship] {.noSideEffect,
    importcpp: "GetElemGeomRelat", header: "StepAP209_Construct.hxx".}
proc GetElements1D*(this: StepAP209_Construct;
                   theFeaModel: handle[StepFEA_FeaModel]): handle[
    StepFEA_HSequenceOfElementRepresentation] {.noSideEffect,
    importcpp: "GetElements1D", header: "StepAP209_Construct.hxx".}
proc GetElements2D*(this: StepAP209_Construct;
                   theFEAModel: handle[StepFEA_FeaModel]): handle[
    StepFEA_HSequenceOfElementRepresentation] {.noSideEffect,
    importcpp: "GetElements2D", header: "StepAP209_Construct.hxx".}
proc GetElements3D*(this: StepAP209_Construct;
                   theFEAModel: handle[StepFEA_FeaModel]): handle[
    StepFEA_HSequenceOfElementRepresentation] {.noSideEffect,
    importcpp: "GetElements3D", header: "StepAP209_Construct.hxx".}
proc GetCurElemSection*(this: StepAP209_Construct;
                       ElemRepr: handle[StepFEA_Curve3dElementRepresentation]): handle[
    StepElement_HSequenceOfCurveElementSectionDefinition] {.noSideEffect,
    importcpp: "GetCurElemSection", header: "StepAP209_Construct.hxx".}
proc GetShReprForElem*(this: StepAP209_Construct;
                      ElemRepr: handle[StepFEA_ElementRepresentation]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "GetShReprForElem",
                                    header: "StepAP209_Construct.hxx".}
proc CreateAnalysStructure*(this: StepAP209_Construct;
                           Prod: handle[StepBasic_Product]): Standard_Boolean {.
    noSideEffect, importcpp: "CreateAnalysStructure",
    header: "StepAP209_Construct.hxx".}
proc CreateFeaStructure*(this: StepAP209_Construct; Prod: handle[StepBasic_Product]): Standard_Boolean {.
    noSideEffect, importcpp: "CreateFeaStructure",
    header: "StepAP209_Construct.hxx".}
proc ReplaceCcDesingToApplied*(this: StepAP209_Construct): Standard_Boolean {.
    noSideEffect, importcpp: "ReplaceCcDesingToApplied",
    header: "StepAP209_Construct.hxx".}
proc CreateAddingEntities*(this: StepAP209_Construct;
                          AnaPD: handle[StepBasic_ProductDefinition]): Standard_Boolean {.
    noSideEffect, importcpp: "CreateAddingEntities",
    header: "StepAP209_Construct.hxx".}
proc CreateAP203Structure*(this: StepAP209_Construct): handle[StepData_StepModel] {.
    noSideEffect, importcpp: "CreateAP203Structure",
    header: "StepAP209_Construct.hxx".}
proc CreateAdding203Entities*(this: StepAP209_Construct;
                             PD: handle[StepBasic_ProductDefinition];
                             aModel: var handle[StepData_StepModel]): Standard_Boolean {.
    noSideEffect, importcpp: "CreateAdding203Entities",
    header: "StepAP209_Construct.hxx".}
proc FeaModel*(this: StepAP209_Construct;
              PDS: handle[StepRepr_ProductDefinitionShape]): handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc FeaModel*(this: StepAP209_Construct; PD: handle[StepBasic_ProductDefinition]): handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc IdealShape*(this: StepAP209_Construct; PD: handle[StepBasic_ProductDefinition]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                    header: "StepAP209_Construct.hxx".}
proc IdealShape*(this: StepAP209_Construct;
                PDS: handle[StepRepr_ProductDefinitionShape]): handle[
    StepShape_ShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                    header: "StepAP209_Construct.hxx".}