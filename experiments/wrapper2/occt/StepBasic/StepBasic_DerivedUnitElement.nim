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

discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_DerivedUnitElement"
discard "forward decl of StepBasic_DerivedUnitElement"
type
  HandleStepBasicDerivedUnitElement* = Handle[StepBasicDerivedUnitElement]

## ! Added from StepBasic Rev2 to Rev4

type
  StepBasicDerivedUnitElement* {.importcpp: "StepBasic_DerivedUnitElement",
                                header: "StepBasic_DerivedUnitElement.hxx", bycopy.} = object of StandardTransient


proc constructStepBasicDerivedUnitElement*(): StepBasicDerivedUnitElement {.
    constructor, importcpp: "StepBasic_DerivedUnitElement(@)",
    header: "StepBasic_DerivedUnitElement.hxx".}
proc init*(this: var StepBasicDerivedUnitElement; aUnit: Handle[StepBasicNamedUnit];
          aExponent: float) {.importcpp: "Init",
                            header: "StepBasic_DerivedUnitElement.hxx".}
proc setUnit*(this: var StepBasicDerivedUnitElement;
             aUnit: Handle[StepBasicNamedUnit]) {.importcpp: "SetUnit",
    header: "StepBasic_DerivedUnitElement.hxx".}
proc unit*(this: StepBasicDerivedUnitElement): Handle[StepBasicNamedUnit] {.
    noSideEffect, importcpp: "Unit", header: "StepBasic_DerivedUnitElement.hxx".}
proc setExponent*(this: var StepBasicDerivedUnitElement; aExponent: float) {.
    importcpp: "SetExponent", header: "StepBasic_DerivedUnitElement.hxx".}
proc exponent*(this: StepBasicDerivedUnitElement): float {.noSideEffect,
    importcpp: "Exponent", header: "StepBasic_DerivedUnitElement.hxx".}
type
  StepBasicDerivedUnitElementbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DerivedUnitElement::get_type_name(@)",
                            header: "StepBasic_DerivedUnitElement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DerivedUnitElement::get_type_descriptor(@)",
    header: "StepBasic_DerivedUnitElement.hxx".}
proc dynamicType*(this: StepBasicDerivedUnitElement): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DerivedUnitElement.hxx".}
