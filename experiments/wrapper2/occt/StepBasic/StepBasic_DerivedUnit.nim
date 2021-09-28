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

discard "forward decl of StepBasic_DerivedUnitElement"
discard "forward decl of StepBasic_DerivedUnit"
discard "forward decl of StepBasic_DerivedUnit"
type
  HandleC1C1* = Handle[StepBasicDerivedUnit]

## ! Added from StepBasic Rev2 to Rev4

type
  StepBasicDerivedUnit* {.importcpp: "StepBasic_DerivedUnit",
                         header: "StepBasic_DerivedUnit.hxx", bycopy.} = object of StandardTransient


proc constructStepBasicDerivedUnit*(): StepBasicDerivedUnit {.constructor,
    importcpp: "StepBasic_DerivedUnit(@)", header: "StepBasic_DerivedUnit.hxx".}
proc init*(this: var StepBasicDerivedUnit;
          elements: Handle[StepBasicHArray1OfDerivedUnitElement]) {.
    importcpp: "Init", header: "StepBasic_DerivedUnit.hxx".}
proc setElements*(this: var StepBasicDerivedUnit;
                 elements: Handle[StepBasicHArray1OfDerivedUnitElement]) {.
    importcpp: "SetElements", header: "StepBasic_DerivedUnit.hxx".}
proc elements*(this: StepBasicDerivedUnit): Handle[
    StepBasicHArray1OfDerivedUnitElement] {.noSideEffect, importcpp: "Elements",
    header: "StepBasic_DerivedUnit.hxx".}
proc nbElements*(this: StepBasicDerivedUnit): cint {.noSideEffect,
    importcpp: "NbElements", header: "StepBasic_DerivedUnit.hxx".}
proc elementsValue*(this: StepBasicDerivedUnit; num: cint): Handle[
    StepBasicDerivedUnitElement] {.noSideEffect, importcpp: "ElementsValue",
                                  header: "StepBasic_DerivedUnit.hxx".}
type
  StepBasicDerivedUnitbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DerivedUnit::get_type_name(@)",
                            header: "StepBasic_DerivedUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DerivedUnit::get_type_descriptor(@)",
    header: "StepBasic_DerivedUnit.hxx".}
proc dynamicType*(this: StepBasicDerivedUnit): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_DerivedUnit.hxx".}

























