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

discard "forward decl of StepBasic_DigitalDocument"
discard "forward decl of StepBasic_DigitalDocument"
type
  HandleC1C1* = Handle[StepBasicDigitalDocument]
  StepBasicDigitalDocument* {.importcpp: "StepBasic_DigitalDocument",
                             header: "StepBasic_DigitalDocument.hxx", bycopy.} = object of StepBasicDocument


proc constructStepBasicDigitalDocument*(): StepBasicDigitalDocument {.constructor,
    importcpp: "StepBasic_DigitalDocument(@)",
    header: "StepBasic_DigitalDocument.hxx".}
type
  StepBasicDigitalDocumentbaseType* = StepBasicDocument

proc getTypeName*(): cstring {.importcpp: "StepBasic_DigitalDocument::get_type_name(@)",
                            header: "StepBasic_DigitalDocument.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DigitalDocument::get_type_descriptor(@)",
    header: "StepBasic_DigitalDocument.hxx".}
proc dynamicType*(this: StepBasicDigitalDocument): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DigitalDocument.hxx".}

























