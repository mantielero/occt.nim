##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ActionMethod"
discard "forward decl of StepBasic_ActionMethod"
type
  HandleC1C1* = Handle[StepBasicActionMethod]

## ! Representation of STEP entity ActionMethod

type
  StepBasicActionMethod* {.importcpp: "StepBasic_ActionMethod",
                          header: "StepBasic_ActionMethod.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepBasicActionMethod*(): StepBasicActionMethod {.constructor,
    importcpp: "StepBasic_ActionMethod(@)", header: "StepBasic_ActionMethod.hxx".}
proc init*(this: var StepBasicActionMethod; aName: Handle[TCollectionHAsciiString];
          hasDescription: bool; aDescription: Handle[TCollectionHAsciiString];
          aConsequence: Handle[TCollectionHAsciiString];
          aPurpose: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_ActionMethod.hxx".}
proc name*(this: StepBasicActionMethod): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_ActionMethod.hxx".}
proc setName*(this: var StepBasicActionMethod; name: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetName", header: "StepBasic_ActionMethod.hxx".}
proc description*(this: StepBasicActionMethod): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_ActionMethod.hxx".}
proc setDescription*(this: var StepBasicActionMethod;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_ActionMethod.hxx".}
proc hasDescription*(this: StepBasicActionMethod): bool {.noSideEffect,
    importcpp: "HasDescription", header: "StepBasic_ActionMethod.hxx".}
proc consequence*(this: StepBasicActionMethod): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Consequence", header: "StepBasic_ActionMethod.hxx".}
proc setConsequence*(this: var StepBasicActionMethod;
                    consequence: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetConsequence", header: "StepBasic_ActionMethod.hxx".}
proc purpose*(this: StepBasicActionMethod): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepBasic_ActionMethod.hxx".}
proc setPurpose*(this: var StepBasicActionMethod;
                purpose: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_ActionMethod.hxx".}
type
  StepBasicActionMethodbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_ActionMethod::get_type_name(@)",
                            header: "StepBasic_ActionMethod.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_ActionMethod::get_type_descriptor(@)",
    header: "StepBasic_ActionMethod.hxx".}
proc dynamicType*(this: StepBasicActionMethod): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_ActionMethod.hxx".}

























