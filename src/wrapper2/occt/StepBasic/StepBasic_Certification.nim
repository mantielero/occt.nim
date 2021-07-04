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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_CertificationType"
discard "forward decl of StepBasic_Certification"
discard "forward decl of StepBasic_Certification"
type
  Handle_StepBasic_Certification* = handle[StepBasic_Certification]

## ! Representation of STEP entity Certification

type
  StepBasic_Certification* {.importcpp: "StepBasic_Certification",
                            header: "StepBasic_Certification.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepBasic_Certification*(): StepBasic_Certification {.constructor,
    importcpp: "StepBasic_Certification(@)", header: "StepBasic_Certification.hxx".}
proc Init*(this: var StepBasic_Certification;
          aName: handle[TCollection_HAsciiString];
          aPurpose: handle[TCollection_HAsciiString];
          aKind: handle[StepBasic_CertificationType]) {.importcpp: "Init",
    header: "StepBasic_Certification.hxx".}
proc Name*(this: StepBasic_Certification): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepBasic_Certification.hxx".}
proc SetName*(this: var StepBasic_Certification;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_Certification.hxx".}
proc Purpose*(this: StepBasic_Certification): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Purpose", header: "StepBasic_Certification.hxx".}
proc SetPurpose*(this: var StepBasic_Certification;
                Purpose: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPurpose", header: "StepBasic_Certification.hxx".}
proc Kind*(this: StepBasic_Certification): handle[StepBasic_CertificationType] {.
    noSideEffect, importcpp: "Kind", header: "StepBasic_Certification.hxx".}
proc SetKind*(this: var StepBasic_Certification;
             Kind: handle[StepBasic_CertificationType]) {.importcpp: "SetKind",
    header: "StepBasic_Certification.hxx".}
type
  StepBasic_Certificationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Certification::get_type_name(@)",
                              header: "StepBasic_Certification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Certification::get_type_descriptor(@)",
    header: "StepBasic_Certification.hxx".}
proc DynamicType*(this: StepBasic_Certification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_Certification.hxx".}