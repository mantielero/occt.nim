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
discard "forward decl of StepElement_Surface3dElementDescriptor"
discard "forward decl of StepElement_SurfaceElementProperty"
discard "forward decl of StepElement_ElementMaterial"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepFEA_Surface3dElementRepresentation"
discard "forward decl of StepFEA_Surface3dElementRepresentation"
type
  Handle_StepFEA_Surface3dElementRepresentation* = handle[
      StepFEA_Surface3dElementRepresentation]

## ! Representation of STEP entity Surface3dElementRepresentation

type
  StepFEA_Surface3dElementRepresentation* {.
      importcpp: "StepFEA_Surface3dElementRepresentation",
      header: "StepFEA_Surface3dElementRepresentation.hxx", bycopy.} = object of StepFEA_ElementRepresentation ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepFEA_Surface3dElementRepresentation*(): StepFEA_Surface3dElementRepresentation {.
    constructor, importcpp: "StepFEA_Surface3dElementRepresentation(@)",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc Init*(this: var StepFEA_Surface3dElementRepresentation;
          aRepresentation_Name: handle[TCollection_HAsciiString];
          aRepresentation_Items: handle[StepRepr_HArray1OfRepresentationItem];
    aRepresentation_ContextOfItems: handle[StepRepr_RepresentationContext];
    aElementRepresentation_NodeList: handle[StepFEA_HArray1OfNodeRepresentation];
          aModelRef: handle[StepFEA_FeaModel3d];
          aElementDescriptor: handle[StepElement_Surface3dElementDescriptor];
          aProperty: handle[StepElement_SurfaceElementProperty];
          aMaterial: handle[StepElement_ElementMaterial]) {.importcpp: "Init",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc ModelRef*(this: StepFEA_Surface3dElementRepresentation): handle[
    StepFEA_FeaModel3d] {.noSideEffect, importcpp: "ModelRef",
                         header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc SetModelRef*(this: var StepFEA_Surface3dElementRepresentation;
                 ModelRef: handle[StepFEA_FeaModel3d]) {.importcpp: "SetModelRef",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc ElementDescriptor*(this: StepFEA_Surface3dElementRepresentation): handle[
    StepElement_Surface3dElementDescriptor] {.noSideEffect,
    importcpp: "ElementDescriptor",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc SetElementDescriptor*(this: var StepFEA_Surface3dElementRepresentation;
    ElementDescriptor: handle[StepElement_Surface3dElementDescriptor]) {.
    importcpp: "SetElementDescriptor",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc Property*(this: StepFEA_Surface3dElementRepresentation): handle[
    StepElement_SurfaceElementProperty] {.noSideEffect, importcpp: "Property",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc SetProperty*(this: var StepFEA_Surface3dElementRepresentation;
                 Property: handle[StepElement_SurfaceElementProperty]) {.
    importcpp: "SetProperty", header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc Material*(this: StepFEA_Surface3dElementRepresentation): handle[
    StepElement_ElementMaterial] {.noSideEffect, importcpp: "Material", header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc SetMaterial*(this: var StepFEA_Surface3dElementRepresentation;
                 Material: handle[StepElement_ElementMaterial]) {.
    importcpp: "SetMaterial", header: "StepFEA_Surface3dElementRepresentation.hxx".}
type
  StepFEA_Surface3dElementRepresentationbase_type* = StepFEA_ElementRepresentation

proc get_type_name*(): cstring {.importcpp: "StepFEA_Surface3dElementRepresentation::get_type_name(@)", header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_Surface3dElementRepresentation::get_type_descriptor(@)",
    header: "StepFEA_Surface3dElementRepresentation.hxx".}
proc DynamicType*(this: StepFEA_Surface3dElementRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepFEA_Surface3dElementRepresentation.hxx".}