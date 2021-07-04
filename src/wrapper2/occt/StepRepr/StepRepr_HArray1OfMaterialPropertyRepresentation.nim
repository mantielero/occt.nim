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
  StepRepr_MaterialPropertyRepresentation,
  StepRepr_Array1OfMaterialPropertyRepresentation,
  ../NCollection/NCollection_DefineHArray1

type
  StepRepr_HArray1OfMaterialPropertyRepresentation* {.
      importcpp: "StepRepr_HArray1OfMaterialPropertyRepresentation",
      header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx", bycopy.} = object of StepRepr_Array1OfMaterialPropertyRepresentation


proc constructStepRepr_HArray1OfMaterialPropertyRepresentation*(
    theLower: Standard_Integer; theUpper: Standard_Integer): StepRepr_HArray1OfMaterialPropertyRepresentation {.
    constructor,
    importcpp: "StepRepr_HArray1OfMaterialPropertyRepresentation(@)",
    header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
proc constructStepRepr_HArray1OfMaterialPropertyRepresentation*(
    theLower: Standard_Integer; theUpper: Standard_Integer; theValue: value_type): StepRepr_HArray1OfMaterialPropertyRepresentation {.
    constructor,
    importcpp: "StepRepr_HArray1OfMaterialPropertyRepresentation(@)",
    header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
proc constructStepRepr_HArray1OfMaterialPropertyRepresentation*(
    theOther: StepRepr_Array1OfMaterialPropertyRepresentation): StepRepr_HArray1OfMaterialPropertyRepresentation {.
    constructor,
    importcpp: "StepRepr_HArray1OfMaterialPropertyRepresentation(@)",
    header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
proc Array1*(this: StepRepr_HArray1OfMaterialPropertyRepresentation): StepRepr_Array1OfMaterialPropertyRepresentation {.
    noSideEffect, importcpp: "Array1",
    header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
proc ChangeArray1*(this: var StepRepr_HArray1OfMaterialPropertyRepresentation): var StepRepr_Array1OfMaterialPropertyRepresentation {.
    importcpp: "ChangeArray1",
    header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
type
  StepRepr_HArray1OfMaterialPropertyRepresentationbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "StepRepr_HArray1OfMaterialPropertyRepresentation::get_type_name(@)", header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_HArray1OfMaterialPropertyRepresentation::get_type_descriptor(@)",
    header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}
proc DynamicType*(this: StepRepr_HArray1OfMaterialPropertyRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepRepr_HArray1OfMaterialPropertyRepresentation.hxx".}