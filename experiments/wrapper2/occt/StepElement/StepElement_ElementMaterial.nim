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
discard "forward decl of StepElement_ElementMaterial"
discard "forward decl of StepElement_ElementMaterial"
type
  HandleStepElementElementMaterial* = Handle[StepElementElementMaterial]

## ! Representation of STEP entity ElementMaterial

type
  StepElementElementMaterial* {.importcpp: "StepElement_ElementMaterial",
                               header: "StepElement_ElementMaterial.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepElementElementMaterial*(): StepElementElementMaterial {.
    constructor, importcpp: "StepElement_ElementMaterial(@)",
    header: "StepElement_ElementMaterial.hxx".}
proc init*(this: var StepElementElementMaterial;
          aMaterialId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aProperties: Handle[StepReprHArray1OfMaterialPropertyRepresentation]) {.
    importcpp: "Init", header: "StepElement_ElementMaterial.hxx".}
proc materialId*(this: StepElementElementMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "MaterialId",
    header: "StepElement_ElementMaterial.hxx".}
proc setMaterialId*(this: var StepElementElementMaterial;
                   materialId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetMaterialId", header: "StepElement_ElementMaterial.hxx".}
proc description*(this: StepElementElementMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description",
    header: "StepElement_ElementMaterial.hxx".}
proc setDescription*(this: var StepElementElementMaterial;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepElement_ElementMaterial.hxx".}
proc properties*(this: StepElementElementMaterial): Handle[
    StepReprHArray1OfMaterialPropertyRepresentation] {.noSideEffect,
    importcpp: "Properties", header: "StepElement_ElementMaterial.hxx".}
proc setProperties*(this: var StepElementElementMaterial; properties: Handle[
    StepReprHArray1OfMaterialPropertyRepresentation]) {.
    importcpp: "SetProperties", header: "StepElement_ElementMaterial.hxx".}
type
  StepElementElementMaterialbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_ElementMaterial::get_type_name(@)",
                            header: "StepElement_ElementMaterial.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_ElementMaterial::get_type_descriptor(@)",
    header: "StepElement_ElementMaterial.hxx".}
proc dynamicType*(this: StepElementElementMaterial): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_ElementMaterial.hxx".}
