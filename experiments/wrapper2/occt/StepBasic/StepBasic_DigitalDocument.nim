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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_Document

discard "forward decl of StepBasic_DigitalDocument"
discard "forward decl of StepBasic_DigitalDocument"
type
  Handle_StepBasic_DigitalDocument* = handle[StepBasic_DigitalDocument]
  StepBasic_DigitalDocument* {.importcpp: "StepBasic_DigitalDocument",
                              header: "StepBasic_DigitalDocument.hxx", bycopy.} = object of StepBasic_Document


proc constructStepBasic_DigitalDocument*(): StepBasic_DigitalDocument {.
    constructor, importcpp: "StepBasic_DigitalDocument(@)",
    header: "StepBasic_DigitalDocument.hxx".}
type
  StepBasic_DigitalDocumentbase_type* = StepBasic_Document

proc get_type_name*(): cstring {.importcpp: "StepBasic_DigitalDocument::get_type_name(@)",
                              header: "StepBasic_DigitalDocument.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DigitalDocument::get_type_descriptor(@)",
    header: "StepBasic_DigitalDocument.hxx".}
proc DynamicType*(this: StepBasic_DigitalDocument): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DigitalDocument.hxx".}