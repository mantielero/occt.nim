##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepBasic_Action"
discard "forward decl of StepBasic_Address"
discard "forward decl of StepBasic_ApplicationContext"
discard "forward decl of StepShape_DimensionalSize"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepBasic_Group"
discard "forward decl of StepBasic_ProductCategory"
discard "forward decl of StepRepr_PropertyDefinition"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepRepr_ShapeAspectRelationship"
type
  StepAP242IdAttributeSelect* {.importcpp: "StepAP242_IdAttributeSelect",
                               header: "StepAP242_IdAttributeSelect.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## IdAttributeSelect
                                                                                                           ## select
                                                                                                           ## type


proc constructStepAP242IdAttributeSelect*(): StepAP242IdAttributeSelect {.
    constructor, importcpp: "StepAP242_IdAttributeSelect(@)",
    header: "StepAP242_IdAttributeSelect.hxx".}
proc caseNum*(this: StepAP242IdAttributeSelect; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepAP242_IdAttributeSelect.hxx".}
proc action*(this: StepAP242IdAttributeSelect): Handle[StepBasicAction] {.
    noSideEffect, importcpp: "Action", header: "StepAP242_IdAttributeSelect.hxx".}
proc address*(this: StepAP242IdAttributeSelect): Handle[StepBasicAddress] {.
    noSideEffect, importcpp: "Address", header: "StepAP242_IdAttributeSelect.hxx".}
proc applicationContext*(this: StepAP242IdAttributeSelect): Handle[
    StepBasicApplicationContext] {.noSideEffect, importcpp: "ApplicationContext",
                                  header: "StepAP242_IdAttributeSelect.hxx".}
proc dimensionalSize*(this: StepAP242IdAttributeSelect): Handle[
    StepShapeDimensionalSize] {.noSideEffect, importcpp: "DimensionalSize",
                               header: "StepAP242_IdAttributeSelect.hxx".}
proc geometricTolerance*(this: StepAP242IdAttributeSelect): Handle[
    StepDimTolGeometricTolerance] {.noSideEffect, importcpp: "GeometricTolerance",
                                   header: "StepAP242_IdAttributeSelect.hxx".}
proc group*(this: StepAP242IdAttributeSelect): Handle[StepBasicGroup] {.
    noSideEffect, importcpp: "Group", header: "StepAP242_IdAttributeSelect.hxx".}
proc productCategory*(this: StepAP242IdAttributeSelect): Handle[
    StepBasicProductCategory] {.noSideEffect, importcpp: "ProductCategory",
                               header: "StepAP242_IdAttributeSelect.hxx".}
proc propertyDefinition*(this: StepAP242IdAttributeSelect): Handle[
    StepReprPropertyDefinition] {.noSideEffect, importcpp: "PropertyDefinition",
                                 header: "StepAP242_IdAttributeSelect.hxx".}
proc representation*(this: StepAP242IdAttributeSelect): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Representation",
                             header: "StepAP242_IdAttributeSelect.hxx".}
proc shapeAspect*(this: StepAP242IdAttributeSelect): Handle[StepReprShapeAspect] {.
    noSideEffect, importcpp: "ShapeAspect",
    header: "StepAP242_IdAttributeSelect.hxx".}
proc shapeAspectRelationship*(this: StepAP242IdAttributeSelect): Handle[
    StepReprShapeAspectRelationship] {.noSideEffect,
                                      importcpp: "ShapeAspectRelationship",
                                      header: "StepAP242_IdAttributeSelect.hxx".}
