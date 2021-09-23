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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient

discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_DerivedUnitElement"
discard "forward decl of StepBasic_DerivedUnitElement"
type
  Handle_StepBasic_DerivedUnitElement* = handle[StepBasic_DerivedUnitElement]

## ! Added from StepBasic Rev2 to Rev4

type
  StepBasic_DerivedUnitElement* {.importcpp: "StepBasic_DerivedUnitElement",
                                 header: "StepBasic_DerivedUnitElement.hxx",
                                 bycopy.} = object of Standard_Transient


proc constructStepBasic_DerivedUnitElement*(): StepBasic_DerivedUnitElement {.
    constructor, importcpp: "StepBasic_DerivedUnitElement(@)",
    header: "StepBasic_DerivedUnitElement.hxx".}
proc Init*(this: var StepBasic_DerivedUnitElement;
          aUnit: handle[StepBasic_NamedUnit]; aExponent: Standard_Real) {.
    importcpp: "Init", header: "StepBasic_DerivedUnitElement.hxx".}
proc SetUnit*(this: var StepBasic_DerivedUnitElement;
             aUnit: handle[StepBasic_NamedUnit]) {.importcpp: "SetUnit",
    header: "StepBasic_DerivedUnitElement.hxx".}
proc Unit*(this: StepBasic_DerivedUnitElement): handle[StepBasic_NamedUnit] {.
    noSideEffect, importcpp: "Unit", header: "StepBasic_DerivedUnitElement.hxx".}
proc SetExponent*(this: var StepBasic_DerivedUnitElement; aExponent: Standard_Real) {.
    importcpp: "SetExponent", header: "StepBasic_DerivedUnitElement.hxx".}
proc Exponent*(this: StepBasic_DerivedUnitElement): Standard_Real {.noSideEffect,
    importcpp: "Exponent", header: "StepBasic_DerivedUnitElement.hxx".}
type
  StepBasic_DerivedUnitElementbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DerivedUnitElement::get_type_name(@)",
                              header: "StepBasic_DerivedUnitElement.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DerivedUnitElement::get_type_descriptor(@)",
    header: "StepBasic_DerivedUnitElement.hxx".}
proc DynamicType*(this: StepBasic_DerivedUnitElement): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DerivedUnitElement.hxx".}