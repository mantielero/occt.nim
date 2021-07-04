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
discard "forward decl of StepBasic_CertificationType"
type
  Handle_StepBasic_CertificationType* = handle[StepBasic_CertificationType]

## ! Representation of STEP entity CertificationType

type
  StepBasic_CertificationType* {.importcpp: "StepBasic_CertificationType",
                                header: "StepBasic_CertificationType.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepBasic_CertificationType*(): StepBasic_CertificationType {.
    constructor, importcpp: "StepBasic_CertificationType(@)",
    header: "StepBasic_CertificationType.hxx".}
proc Init*(this: var StepBasic_CertificationType;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_CertificationType.hxx".}
proc Description*(this: StepBasic_CertificationType): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_CertificationType.hxx".}
proc SetDescription*(this: var StepBasic_CertificationType;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_CertificationType.hxx".}
type
  StepBasic_CertificationTypebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_CertificationType::get_type_name(@)",
                              header: "StepBasic_CertificationType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_CertificationType::get_type_descriptor(@)",
    header: "StepBasic_CertificationType.hxx".}
proc DynamicType*(this: StepBasic_CertificationType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_CertificationType.hxx".}