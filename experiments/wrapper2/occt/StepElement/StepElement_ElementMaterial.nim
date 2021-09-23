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
  ../StepRepr/StepRepr_HArray1OfMaterialPropertyRepresentation,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_ElementMaterial"
discard "forward decl of StepElement_ElementMaterial"
type
  Handle_StepElement_ElementMaterial* = handle[StepElement_ElementMaterial]

## ! Representation of STEP entity ElementMaterial

type
  StepElement_ElementMaterial* {.importcpp: "StepElement_ElementMaterial",
                                header: "StepElement_ElementMaterial.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepElement_ElementMaterial*(): StepElement_ElementMaterial {.
    constructor, importcpp: "StepElement_ElementMaterial(@)",
    header: "StepElement_ElementMaterial.hxx".}
proc Init*(this: var StepElement_ElementMaterial;
          aMaterialId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aProperties: handle[StepRepr_HArray1OfMaterialPropertyRepresentation]) {.
    importcpp: "Init", header: "StepElement_ElementMaterial.hxx".}
proc MaterialId*(this: StepElement_ElementMaterial): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "MaterialId",
                               header: "StepElement_ElementMaterial.hxx".}
proc SetMaterialId*(this: var StepElement_ElementMaterial;
                   MaterialId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetMaterialId", header: "StepElement_ElementMaterial.hxx".}
proc Description*(this: StepElement_ElementMaterial): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepElement_ElementMaterial.hxx".}
proc SetDescription*(this: var StepElement_ElementMaterial;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepElement_ElementMaterial.hxx".}
proc Properties*(this: StepElement_ElementMaterial): handle[
    StepRepr_HArray1OfMaterialPropertyRepresentation] {.noSideEffect,
    importcpp: "Properties", header: "StepElement_ElementMaterial.hxx".}
proc SetProperties*(this: var StepElement_ElementMaterial; Properties: handle[
    StepRepr_HArray1OfMaterialPropertyRepresentation]) {.
    importcpp: "SetProperties", header: "StepElement_ElementMaterial.hxx".}
type
  StepElement_ElementMaterialbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_ElementMaterial::get_type_name(@)",
                              header: "StepElement_ElementMaterial.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_ElementMaterial::get_type_descriptor(@)",
    header: "StepElement_ElementMaterial.hxx".}
proc DynamicType*(this: StepElement_ElementMaterial): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_ElementMaterial.hxx".}