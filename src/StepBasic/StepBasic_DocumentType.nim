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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_DocumentType"
discard "forward decl of StepBasic_DocumentType"
type
  HandleC1C1* = Handle[StepBasicDocumentType]
  StepBasicDocumentType* {.importcpp: "StepBasic_DocumentType",
                          header: "StepBasic_DocumentType.hxx", bycopy.} = object of StandardTransient


proc constructStepBasicDocumentType*(): StepBasicDocumentType {.constructor,
    importcpp: "StepBasic_DocumentType(@)", header: "StepBasic_DocumentType.hxx".}
proc init*(this: var StepBasicDocumentType; apdt: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_DocumentType.hxx".}
proc productDataType*(this: StepBasicDocumentType): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ProductDataType",
    header: "StepBasic_DocumentType.hxx".}
proc setProductDataType*(this: var StepBasicDocumentType;
                        apdt: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetProductDataType", header: "StepBasic_DocumentType.hxx".}
type
  StepBasicDocumentTypebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_DocumentType::get_type_name(@)",
                            header: "StepBasic_DocumentType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_DocumentType::get_type_descriptor(@)",
    header: "StepBasic_DocumentType.hxx".}
proc dynamicType*(this: StepBasicDocumentType): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_DocumentType.hxx".}

























