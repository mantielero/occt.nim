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
discard "forward decl of StepBasic_Certification"
discard "forward decl of StepBasic_Certification"
type
  HandleC1C1* = Handle[StepBasicCertification]

## ! Representation of STEP entity Certification

type
  StepBasicCertification* {.importcpp: "StepBasic_Certification",
                           header: "StepBasic_Certification.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepBasicCertification*(): StepBasicCertification {.constructor,
    importcpp: "StepBasic_Certification(@)", header: "StepBasic_Certification.hxx".}
proc init*(this: var StepBasicCertification; aName: Handle[TCollectionHAsciiString];
          aPurpose: Handle[TCollectionHAsciiString];
          aKind: Handle[StepBasicCertificationType]) {.importcpp: "Init",
    header: "StepBasic_Certification.hxx".}
proc name*(this: StepBasicCertification): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Certification.hxx".}
proc setName*(this: var StepBasicCertification;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_Certification.hxx".}
proc purpose*(this: StepBasicCertification): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepBasic_Certification.hxx".}
proc setPurpose*(this: var StepBasicCertification;
                purpose: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_Certification.hxx".}
proc kind*(this: StepBasicCertification): Handle[StepBasicCertificationType] {.
    noSideEffect, importcpp: "Kind", header: "StepBasic_Certification.hxx".}
proc setKind*(this: var StepBasicCertification;
             kind: Handle[StepBasicCertificationType]) {.importcpp: "SetKind",
    header: "StepBasic_Certification.hxx".}
type
  StepBasicCertificationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Certification::get_type_name(@)",
                            header: "StepBasic_Certification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Certification::get_type_descriptor(@)",
    header: "StepBasic_Certification.hxx".}
proc dynamicType*(this: StepBasicCertification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_Certification.hxx".}