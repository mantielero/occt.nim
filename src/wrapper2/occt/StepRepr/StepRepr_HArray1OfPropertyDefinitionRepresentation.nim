##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  StepRepr_PropertyDefinitionRepresentation,
  StepRepr_Array1OfPropertyDefinitionRepresentation,
  ../NCollection/NCollection_DefineHArray1

type
  StepRepr_HArray1OfPropertyDefinitionRepresentation* {.
      importcpp: "StepRepr_HArray1OfPropertyDefinitionRepresentation",
      header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx", bycopy.} = object of StepRepr_Array1OfPropertyDefinitionRepresentation


proc constructStepRepr_HArray1OfPropertyDefinitionRepresentation*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepRepr_HArray1OfPropertyDefinitionRepresentation {.
    constructor,
    importcpp: "StepRepr_HArray1OfPropertyDefinitionRepresentation(@)",
    header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
proc constructStepRepr_HArray1OfPropertyDefinitionRepresentation*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepRepr_HArray1OfPropertyDefinitionRepresentation {.
    constructor,
    importcpp: "StepRepr_HArray1OfPropertyDefinitionRepresentation(@)",
    header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
proc constructStepRepr_HArray1OfPropertyDefinitionRepresentation*(
    theOther: StepRepr_Array1OfPropertyDefinitionRepresentation): StepRepr_HArray1OfPropertyDefinitionRepresentation {.
    constructor,
    importcpp: "StepRepr_HArray1OfPropertyDefinitionRepresentation(@)",
    header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
proc Array1*(this: StepRepr_HArray1OfPropertyDefinitionRepresentation): StepRepr_Array1OfPropertyDefinitionRepresentation {.
    noSideEffect, importcpp: "Array1",
    header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
proc ChangeArray1*(this: var StepRepr_HArray1OfPropertyDefinitionRepresentation): var StepRepr_Array1OfPropertyDefinitionRepresentation {.
    importcpp: "ChangeArray1",
    header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
type
  StepRepr_HArray1OfPropertyDefinitionRepresentationbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepRepr_HArray1OfPropertyDefinitionRepresentation::get_type_name(@)", header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_HArray1OfPropertyDefinitionRepresentation::get_type_descriptor(@)",
    header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}
proc DynamicType*(this: StepRepr_HArray1OfPropertyDefinitionRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_HArray1OfPropertyDefinitionRepresentation.hxx".}