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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_SecurityClassificationLevel"
discard "forward decl of StepBasic_SecurityClassification"
discard "forward decl of StepBasic_SecurityClassification"
type
  Handle_StepBasic_SecurityClassification* = handle[
      StepBasic_SecurityClassification]
  StepBasic_SecurityClassification* {.importcpp: "StepBasic_SecurityClassification", header: "StepBasic_SecurityClassification.hxx",
                                     bycopy.} = object of Standard_Transient ## ! Returns a
                                                                        ## SecurityClassification


proc constructStepBasic_SecurityClassification*(): StepBasic_SecurityClassification {.
    constructor, importcpp: "StepBasic_SecurityClassification(@)",
    header: "StepBasic_SecurityClassification.hxx".}
proc Init*(this: var StepBasic_SecurityClassification;
          aName: handle[TCollection_HAsciiString];
          aPurpose: handle[TCollection_HAsciiString];
          aSecurityLevel: handle[StepBasic_SecurityClassificationLevel]) {.
    importcpp: "Init", header: "StepBasic_SecurityClassification.hxx".}
proc SetName*(this: var StepBasic_SecurityClassification;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_SecurityClassification.hxx".}
proc Name*(this: StepBasic_SecurityClassification): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_SecurityClassification.hxx".}
proc SetPurpose*(this: var StepBasic_SecurityClassification;
                aPurpose: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_SecurityClassification.hxx".}
proc Purpose*(this: StepBasic_SecurityClassification): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Purpose",
                               header: "StepBasic_SecurityClassification.hxx".}
proc SetSecurityLevel*(this: var StepBasic_SecurityClassification; aSecurityLevel: handle[
    StepBasic_SecurityClassificationLevel]) {.importcpp: "SetSecurityLevel",
    header: "StepBasic_SecurityClassification.hxx".}
proc SecurityLevel*(this: StepBasic_SecurityClassification): handle[
    StepBasic_SecurityClassificationLevel] {.noSideEffect,
    importcpp: "SecurityLevel", header: "StepBasic_SecurityClassification.hxx".}
type
  StepBasic_SecurityClassificationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_SecurityClassification::get_type_name(@)",
                              header: "StepBasic_SecurityClassification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_SecurityClassification::get_type_descriptor(@)",
    header: "StepBasic_SecurityClassification.hxx".}
proc DynamicType*(this: StepBasic_SecurityClassification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_SecurityClassification.hxx".}