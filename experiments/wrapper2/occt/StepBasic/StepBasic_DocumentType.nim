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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_DocumentType"
type
  Handle_StepBasic_DocumentType* = handle[StepBasic_DocumentType]
  StepBasic_DocumentType* {.importcpp: "StepBasic_DocumentType",
                           header: "StepBasic_DocumentType.hxx", bycopy.} = object of Standard_Transient


proc constructStepBasic_DocumentType*(): StepBasic_DocumentType {.constructor,
    importcpp: "StepBasic_DocumentType(@)", header: "StepBasic_DocumentType.hxx".}
proc Init*(this: var StepBasic_DocumentType; apdt: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepBasic_DocumentType.hxx".}
proc ProductDataType*(this: StepBasic_DocumentType): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ProductDataType",
                               header: "StepBasic_DocumentType.hxx".}
proc SetProductDataType*(this: var StepBasic_DocumentType;
                        apdt: handle[TCollection_HAsciiString]) {.
    importcpp: "SetProductDataType", header: "StepBasic_DocumentType.hxx".}
type
  StepBasic_DocumentTypebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentType::get_type_name(@)",
                              header: "StepBasic_DocumentType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentType::get_type_descriptor(@)",
    header: "StepBasic_DocumentType.hxx".}
proc DynamicType*(this: StepBasic_DocumentType): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_DocumentType.hxx".}