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
discard "forward decl of StepBasic_CertificationType"
discard "forward decl of StepBasic_CertificationType"
type
  HandleC1C1* = Handle[StepBasicCertificationType]

## ! Representation of STEP entity CertificationType

type
  StepBasicCertificationType* {.importcpp: "StepBasic_CertificationType",
                               header: "StepBasic_CertificationType.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructStepBasicCertificationType*(): StepBasicCertificationType {.
    constructor, importcpp: "StepBasic_CertificationType(@)",
    header: "StepBasic_CertificationType.hxx".}
proc init*(this: var StepBasicCertificationType;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_CertificationType.hxx".}
proc description*(this: StepBasicCertificationType): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description",
    header: "StepBasic_CertificationType.hxx".}
proc setDescription*(this: var StepBasicCertificationType;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_CertificationType.hxx".}
type
  StepBasicCertificationTypebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_CertificationType::get_type_name(@)",
                            header: "StepBasic_CertificationType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_CertificationType::get_type_descriptor(@)",
    header: "StepBasic_CertificationType.hxx".}
proc dynamicType*(this: StepBasicCertificationType): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_CertificationType.hxx".}