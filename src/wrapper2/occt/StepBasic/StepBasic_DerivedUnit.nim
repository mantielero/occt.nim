##  Created on: 1997-03-26
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepBasic_HArray1OfDerivedUnitElement, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of StepBasic_DerivedUnitElement"
discard "forward decl of StepBasic_DerivedUnit"
discard "forward decl of StepBasic_DerivedUnit"
type
  Handle_StepBasic_DerivedUnit* = handle[StepBasic_DerivedUnit]

## ! Added from StepBasic Rev2 to Rev4

type
  StepBasic_DerivedUnit* {.importcpp: "StepBasic_DerivedUnit",
                          header: "StepBasic_DerivedUnit.hxx", bycopy.} = object of Standard_Transient


proc constructStepBasic_DerivedUnit*(): StepBasic_DerivedUnit {.constructor,
    importcpp: "StepBasic_DerivedUnit(@)", header: "StepBasic_DerivedUnit.hxx".}
proc Init*(this: var StepBasic_DerivedUnit;
          elements: handle[StepBasic_HArray1OfDerivedUnitElement]) {.
    importcpp: "Init", header: "StepBasic_DerivedUnit.hxx".}
proc SetElements*(this: var StepBasic_DerivedUnit;
                 elements: handle[StepBasic_HArray1OfDerivedUnitElement]) {.
    importcpp: "SetElements", header: "StepBasic_DerivedUnit.hxx".}
proc Elements*(this: StepBasic_DerivedUnit): handle[
    StepBasic_HArray1OfDerivedUnitElement] {.noSideEffect, importcpp: "Elements",
    header: "StepBasic_DerivedUnit.hxx".}
proc NbElements*(this: StepBasic_DerivedUnit): Standard_Integer {.noSideEffect,
    importcpp: "NbElements", header: "StepBasic_DerivedUnit.hxx".}
proc ElementsValue*(this: StepBasic_DerivedUnit; num: Standard_Integer): handle[
    StepBasic_DerivedUnitElement] {.noSideEffect, importcpp: "ElementsValue",
                                   header: "StepBasic_DerivedUnit.hxx".}
type
  StepBasic_DerivedUnitbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DerivedUnit::get_type_name(@)",
                              header: "StepBasic_DerivedUnit.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DerivedUnit::get_type_descriptor(@)",
    header: "StepBasic_DerivedUnit.hxx".}
proc DynamicType*(this: StepBasic_DerivedUnit): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DerivedUnit.hxx".}