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
  StepAP209Construct* {.importcpp: "StepAP209_Construct",
                       header: "StepAP209_Construct.hxx", bycopy.} = object of STEPConstructTool ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## tool


proc constructStepAP209Construct*(): StepAP209Construct {.constructor,
    importcpp: "StepAP209_Construct(@)", header: "StepAP209_Construct.hxx".}
proc constructStepAP209Construct*(ws: Handle[XSControlWorkSession]): StepAP209Construct {.
    constructor, importcpp: "StepAP209_Construct(@)",
    header: "StepAP209_Construct.hxx".}
proc init*(this: var StepAP209Construct; ws: Handle[XSControlWorkSession]): bool {.
    importcpp: "Init", header: "StepAP209_Construct.hxx".}
proc isDesing*(this: StepAP209Construct;
              pd: Handle[StepBasicProductDefinitionFormation]): bool {.
    noSideEffect, importcpp: "IsDesing", header: "StepAP209_Construct.hxx".}
proc isAnalys*(this: StepAP209Construct;
              pd: Handle[StepBasicProductDefinitionFormation]): bool {.
    noSideEffect, importcpp: "IsAnalys", header: "StepAP209_Construct.hxx".}
proc feaModel*(this: StepAP209Construct; prod: Handle[StepBasicProduct]): Handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc feaModel*(this: StepAP209Construct;
              pdf: Handle[StepBasicProductDefinitionFormation]): Handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc getFeaAxis2Placement3d*(this: StepAP209Construct;
                            theFeaModel: Handle[StepFEA_FeaModel]): Handle[
    StepFEA_FeaAxis2Placement3d] {.noSideEffect,
                                  importcpp: "GetFeaAxis2Placement3d",
                                  header: "StepAP209_Construct.hxx".}
proc idealShape*(this: StepAP209Construct; prod: Handle[StepBasicProduct]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                   header: "StepAP209_Construct.hxx".}
proc idealShape*(this: StepAP209Construct;
                pdf: Handle[StepBasicProductDefinitionFormation]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                   header: "StepAP209_Construct.hxx".}
proc nominShape*(this: StepAP209Construct; prod: Handle[StepBasicProduct]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "NominShape",
                                   header: "StepAP209_Construct.hxx".}
proc nominShape*(this: StepAP209Construct;
                pdf: Handle[StepBasicProductDefinitionFormation]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "NominShape",
                                   header: "StepAP209_Construct.hxx".}
proc getElementMaterial*(this: StepAP209Construct): Handle[
    StepElementHSequenceOfElementMaterial] {.noSideEffect,
    importcpp: "GetElementMaterial", header: "StepAP209_Construct.hxx".}
proc getElemGeomRelat*(this: StepAP209Construct): Handle[
    StepFEA_HSequenceOfElementGeometricRelationship] {.noSideEffect,
    importcpp: "GetElemGeomRelat", header: "StepAP209_Construct.hxx".}
proc getElements1D*(this: StepAP209Construct; theFeaModel: Handle[StepFEA_FeaModel]): Handle[
    StepFEA_HSequenceOfElementRepresentation] {.noSideEffect,
    importcpp: "GetElements1D", header: "StepAP209_Construct.hxx".}
proc getElements2D*(this: StepAP209Construct; theFEAModel: Handle[StepFEA_FeaModel]): Handle[
    StepFEA_HSequenceOfElementRepresentation] {.noSideEffect,
    importcpp: "GetElements2D", header: "StepAP209_Construct.hxx".}
proc getElements3D*(this: StepAP209Construct; theFEAModel: Handle[StepFEA_FeaModel]): Handle[
    StepFEA_HSequenceOfElementRepresentation] {.noSideEffect,
    importcpp: "GetElements3D", header: "StepAP209_Construct.hxx".}
proc getCurElemSection*(this: StepAP209Construct;
                       elemRepr: Handle[StepFEA_Curve3dElementRepresentation]): Handle[
    StepElementHSequenceOfCurveElementSectionDefinition] {.noSideEffect,
    importcpp: "GetCurElemSection", header: "StepAP209_Construct.hxx".}
proc getShReprForElem*(this: StepAP209Construct;
                      elemRepr: Handle[StepFEA_ElementRepresentation]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "GetShReprForElem",
                                   header: "StepAP209_Construct.hxx".}
proc createAnalysStructure*(this: StepAP209Construct;
                           prod: Handle[StepBasicProduct]): bool {.noSideEffect,
    importcpp: "CreateAnalysStructure", header: "StepAP209_Construct.hxx".}
proc createFeaStructure*(this: StepAP209Construct; prod: Handle[StepBasicProduct]): bool {.
    noSideEffect, importcpp: "CreateFeaStructure",
    header: "StepAP209_Construct.hxx".}
proc replaceCcDesingToApplied*(this: StepAP209Construct): bool {.noSideEffect,
    importcpp: "ReplaceCcDesingToApplied", header: "StepAP209_Construct.hxx".}
proc createAddingEntities*(this: StepAP209Construct;
                          anaPD: Handle[StepBasicProductDefinition]): bool {.
    noSideEffect, importcpp: "CreateAddingEntities",
    header: "StepAP209_Construct.hxx".}
proc createAP203Structure*(this: StepAP209Construct): Handle[StepDataStepModel] {.
    noSideEffect, importcpp: "CreateAP203Structure",
    header: "StepAP209_Construct.hxx".}
proc createAdding203Entities*(this: StepAP209Construct;
                             pd: Handle[StepBasicProductDefinition];
                             aModel: var Handle[StepDataStepModel]): bool {.
    noSideEffect, importcpp: "CreateAdding203Entities",
    header: "StepAP209_Construct.hxx".}
proc feaModel*(this: StepAP209Construct;
              pds: Handle[StepReprProductDefinitionShape]): Handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc feaModel*(this: StepAP209Construct; pd: Handle[StepBasicProductDefinition]): Handle[
    StepFEA_FeaModel] {.noSideEffect, importcpp: "FeaModel",
                       header: "StepAP209_Construct.hxx".}
proc idealShape*(this: StepAP209Construct; pd: Handle[StepBasicProductDefinition]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                   header: "StepAP209_Construct.hxx".}
proc idealShape*(this: StepAP209Construct;
                pds: Handle[StepReprProductDefinitionShape]): Handle[
    StepShapeShapeRepresentation] {.noSideEffect, importcpp: "IdealShape",
                                   header: "StepAP209_Construct.hxx".}

























