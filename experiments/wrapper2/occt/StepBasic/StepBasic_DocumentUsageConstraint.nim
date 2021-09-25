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

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentUsageConstraint"
discard "forward decl of StepBasic_DocumentUsageConstraint"
type
  HandleStepBasicDocumentUsageConstraint* = Handle[
      StepBasicDocumentUsageConstraint]
  StepBasicDocumentUsageConstraint* {.importcpp: "StepBasic_DocumentUsageConstraint", header: "StepBasic_DocumentUsageConstraint.hxx",
                                     bycopy.} = object of StandardTransient


proc constructStepBasicDocumentUsageConstraint*(): StepBasicDocumentUsageConstraint {.
    constructor, importcpp: "StepBasic_DocumentUsageConstraint(@)",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc init*(this: var StepBasicDocumentUsageConstraint;
          aSource: Handle[StepBasicDocument];
          ase: Handle[TCollectionHAsciiString];
          asev: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc source*(this: StepBasicDocumentUsageConstraint): Handle[StepBasicDocument] {.
    noSideEffect, importcpp: "Source",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc setSource*(this: var StepBasicDocumentUsageConstraint;
               aSource: Handle[StepBasicDocument]) {.importcpp: "SetSource",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc subjectElement*(this: StepBasicDocumentUsageConstraint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "SubjectElement",
                              header: "StepBasic_DocumentUsageConstraint.hxx".}
proc setSubjectElement*(this: var StepBasicDocumentUsageConstraint;
                       ase: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetSubjectElement",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc subjectElementValue*(this: StepBasicDocumentUsageConstraint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "SubjectElementValue",
                              header: "StepBasic_DocumentUsageConstraint.hxx".}
proc setSubjectElementValue*(this: var StepBasicDocumentUsageConstraint;
                            asev: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetSubjectElementValue",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
type
  StepBasicDocumentUsageConstraintbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentUsageConstraint::get_type_name(@)",
                            header: "StepBasic_DocumentUsageConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentUsageConstraint::get_type_descriptor(@)",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
proc dynamicType*(this: StepBasicDocumentUsageConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentUsageConstraint.hxx".}
