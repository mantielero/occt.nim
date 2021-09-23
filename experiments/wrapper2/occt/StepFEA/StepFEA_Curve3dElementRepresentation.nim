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
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_ElementRepresentation,
  ../StepRepr/StepRepr_HArray1OfRepresentationItem,
  StepFEA_HArray1OfNodeRepresentation

discard "forward decl of StepFEA_FeaModel3d"
discard "forward decl of StepElement_Curve3dElementDescriptor"
discard "forward decl of StepFEA_Curve3dElementProperty"
discard "forward decl of StepElement_ElementMaterial"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_Curve3dElementRepresentation"
discard "forward decl of StepFEA_Curve3dElementRepresentation"
type
  Handle_StepFEA_Curve3dElementRepresentation* = handle[
      StepFEA_Curve3dElementRepresentation]

## ! Representation of STEP entity Curve3dElementRepresentation

type
  StepFEA_Curve3dElementRepresentation* {.
      importcpp: "StepFEA_Curve3dElementRepresentation",
      header: "StepFEA_Curve3dElementRepresentation.hxx", bycopy.} = object of StepFEA_ElementRepresentation ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepFEA_Curve3dElementRepresentation*(): StepFEA_Curve3dElementRepresentation {.
    constructor, importcpp: "StepFEA_Curve3dElementRepresentation(@)",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc Init*(this: var StepFEA_Curve3dElementRepresentation;
          aRepresentation_Name: handle[TCollection_HAsciiString];
          aRepresentation_Items: handle[StepRepr_HArray1OfRepresentationItem];
    aRepresentation_ContextOfItems: handle[StepRepr_RepresentationContext];
    aElementRepresentation_NodeList: handle[StepFEA_HArray1OfNodeRepresentation];
          aModelRef: handle[StepFEA_FeaModel3d];
          aElementDescriptor: handle[StepElement_Curve3dElementDescriptor];
          aProperty: handle[StepFEA_Curve3dElementProperty];
          aMaterial: handle[StepElement_ElementMaterial]) {.importcpp: "Init",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc ModelRef*(this: StepFEA_Curve3dElementRepresentation): handle[
    StepFEA_FeaModel3d] {.noSideEffect, importcpp: "ModelRef",
                         header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc SetModelRef*(this: var StepFEA_Curve3dElementRepresentation;
                 ModelRef: handle[StepFEA_FeaModel3d]) {.importcpp: "SetModelRef",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc ElementDescriptor*(this: StepFEA_Curve3dElementRepresentation): handle[
    StepElement_Curve3dElementDescriptor] {.noSideEffect,
    importcpp: "ElementDescriptor",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc SetElementDescriptor*(this: var StepFEA_Curve3dElementRepresentation;
    ElementDescriptor: handle[StepElement_Curve3dElementDescriptor]) {.
    importcpp: "SetElementDescriptor",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc Property*(this: StepFEA_Curve3dElementRepresentation): handle[
    StepFEA_Curve3dElementProperty] {.noSideEffect, importcpp: "Property", header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc SetProperty*(this: var StepFEA_Curve3dElementRepresentation;
                 Property: handle[StepFEA_Curve3dElementProperty]) {.
    importcpp: "SetProperty", header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc Material*(this: StepFEA_Curve3dElementRepresentation): handle[
    StepElement_ElementMaterial] {.noSideEffect, importcpp: "Material", header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc SetMaterial*(this: var StepFEA_Curve3dElementRepresentation;
                 Material: handle[StepElement_ElementMaterial]) {.
    importcpp: "SetMaterial", header: "StepFEA_Curve3dElementRepresentation.hxx".}
type
  StepFEA_Curve3dElementRepresentationbase_type* = StepFEA_ElementRepresentation

proc get_type_name*(): cstring {.importcpp: "StepFEA_Curve3dElementRepresentation::get_type_name(@)", header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_Curve3dElementRepresentation::get_type_descriptor(@)",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}
proc DynamicType*(this: StepFEA_Curve3dElementRepresentation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_Curve3dElementRepresentation.hxx".}