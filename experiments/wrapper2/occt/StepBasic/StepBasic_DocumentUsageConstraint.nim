##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentUsageConstraint"
discard "forward decl of StepBasic_DocumentUsageConstraint"
type
  Handle_StepBasic_DocumentUsageConstraint* = handle[
      StepBasic_DocumentUsageConstraint]
  StepBasic_DocumentUsageConstraint* {.importcpp: "StepBasic_DocumentUsageConstraint", header: "StepBasic_DocumentUsageConstraint.hxx",
                                      bycopy.} = object of Standard_Transient


proc constructStepBasic_DocumentUsageConstraint*(): StepBasic_DocumentUsageConstraint {.
    constructor, importcpp: "StepBasic_DocumentUsageConstraint(@)",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc Init*(this: var StepBasic_DocumentUsageConstraint;
          aSource: handle[StepBasic_Document];
          ase: handle[TCollection_HAsciiString];
          asev: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc Source*(this: StepBasic_DocumentUsageConstraint): handle[StepBasic_Document] {.
    noSideEffect, importcpp: "Source",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc SetSource*(this: var StepBasic_DocumentUsageConstraint;
               aSource: handle[StepBasic_Document]) {.importcpp: "SetSource",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc SubjectElement*(this: StepBasic_DocumentUsageConstraint): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "SubjectElement",
                               header: "StepBasic_DocumentUsageConstraint.hxx".}
proc SetSubjectElement*(this: var StepBasic_DocumentUsageConstraint;
                       ase: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSubjectElement",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc SubjectElementValue*(this: StepBasic_DocumentUsageConstraint): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "SubjectElementValue",
                               header: "StepBasic_DocumentUsageConstraint.hxx".}
proc SetSubjectElementValue*(this: var StepBasic_DocumentUsageConstraint;
                            asev: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSubjectElementValue",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
type
  StepBasic_DocumentUsageConstraintbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentUsageConstraint::get_type_name(@)",
                              header: "StepBasic_DocumentUsageConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentUsageConstraint::get_type_descriptor(@)",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc DynamicType*(this: StepBasic_DocumentUsageConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentUsageConstraint.hxx".}