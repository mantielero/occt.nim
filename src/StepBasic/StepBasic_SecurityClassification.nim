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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_SecurityClassificationLevel"
discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_SecurityClassification"
type
  HandleC1C1* = Handle[StepBasicSecurityClassification]
  StepBasicSecurityClassification* {.importcpp: "StepBasic_SecurityClassification", header: "StepBasic_SecurityClassification.hxx",
                                    bycopy.} = object of StandardTransient ## ! Returns a
                                                                      ## SecurityClassification


proc constructStepBasicSecurityClassification*(): StepBasicSecurityClassification {.
    constructor, importcpp: "StepBasic_SecurityClassification(@)",
    header: "StepBasic_SecurityClassification.hxx".}
proc init*(this: var StepBasicSecurityClassification;
          aName: Handle[TCollectionHAsciiString];
          aPurpose: Handle[TCollectionHAsciiString];
          aSecurityLevel: Handle[StepBasicSecurityClassificationLevel]) {.
    importcpp: "Init", header: "StepBasic_SecurityClassification.hxx".}
proc setName*(this: var StepBasicSecurityClassification;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_SecurityClassification.hxx".}
proc name*(this: StepBasicSecurityClassification): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_SecurityClassification.hxx".}
proc setPurpose*(this: var StepBasicSecurityClassification;
                aPurpose: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_SecurityClassification.hxx".}
proc purpose*(this: StepBasicSecurityClassification): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Purpose",
                              header: "StepBasic_SecurityClassification.hxx".}
proc setSecurityLevel*(this: var StepBasicSecurityClassification; aSecurityLevel: Handle[
    StepBasicSecurityClassificationLevel]) {.importcpp: "SetSecurityLevel",
    header: "StepBasic_SecurityClassification.hxx".}
proc securityLevel*(this: StepBasicSecurityClassification): Handle[
    StepBasicSecurityClassificationLevel] {.noSideEffect,
    importcpp: "SecurityLevel", header: "StepBasic_SecurityClassification.hxx".}
type
  StepBasicSecurityClassificationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_SecurityClassification::get_type_name(@)",
                            header: "StepBasic_SecurityClassification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_SecurityClassification::get_type_descriptor(@)",
    header: "StepBasic_SecurityClassification.hxx".}
proc dynamicType*(this: StepBasicSecurityClassification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SecurityClassification.hxx".}

























