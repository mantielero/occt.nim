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

discard "forward decl of StepFEA_FeaModel3d"
discard "forward decl of StepElement_Volume3dElementDescriptor"
discard "forward decl of StepElement_ElementMaterial"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_Volume3dElementRepresentation"
discard "forward decl of StepFEA_Volume3dElementRepresentation"
type
  HandleStepFEA_Volume3dElementRepresentation* = Handle[
      StepFEA_Volume3dElementRepresentation]

## ! Representation of STEP entity Volume3dElementRepresentation

type
  StepFEA_Volume3dElementRepresentation* {.
      importcpp: "StepFEA_Volume3dElementRepresentation",
      header: "StepFEA_Volume3dElementRepresentation.hxx", bycopy.} = object of StepFEA_ElementRepresentation ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepFEA_Volume3dElementRepresentation*(): StepFEA_Volume3dElementRepresentation {.
    constructor, importcpp: "StepFEA_Volume3dElementRepresentation(@)",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc init*(this: var StepFEA_Volume3dElementRepresentation;
          aRepresentationName: Handle[TCollectionHAsciiString];
          aRepresentationItems: Handle[StepReprHArray1OfRepresentationItem];
          aRepresentationContextOfItems: Handle[StepReprRepresentationContext];
    aElementRepresentationNodeList: Handle[StepFEA_HArray1OfNodeRepresentation];
          aModelRef: Handle[StepFEA_FeaModel3d];
          aElementDescriptor: Handle[StepElementVolume3dElementDescriptor];
          aMaterial: Handle[StepElementElementMaterial]) {.importcpp: "Init",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc modelRef*(this: StepFEA_Volume3dElementRepresentation): Handle[
    StepFEA_FeaModel3d] {.noSideEffect, importcpp: "ModelRef",
                         header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc setModelRef*(this: var StepFEA_Volume3dElementRepresentation;
                 modelRef: Handle[StepFEA_FeaModel3d]) {.importcpp: "SetModelRef",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc elementDescriptor*(this: StepFEA_Volume3dElementRepresentation): Handle[
    StepElementVolume3dElementDescriptor] {.noSideEffect,
    importcpp: "ElementDescriptor",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc setElementDescriptor*(this: var StepFEA_Volume3dElementRepresentation;
    elementDescriptor: Handle[StepElementVolume3dElementDescriptor]) {.
    importcpp: "SetElementDescriptor",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc material*(this: StepFEA_Volume3dElementRepresentation): Handle[
    StepElementElementMaterial] {.noSideEffect, importcpp: "Material", header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc setMaterial*(this: var StepFEA_Volume3dElementRepresentation;
                 material: Handle[StepElementElementMaterial]) {.
    importcpp: "SetMaterial", header: "StepFEA_Volume3dElementRepresentation.hxx".}
type
  StepFEA_Volume3dElementRepresentationbaseType* = StepFEA_ElementRepresentation

proc getTypeName*(): cstring {.importcpp: "StepFEA_Volume3dElementRepresentation::get_type_name(@)",
                            header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_Volume3dElementRepresentation::get_type_descriptor(@)",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
proc dynamicType*(this: StepFEA_Volume3dElementRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_Volume3dElementRepresentation.hxx".}
