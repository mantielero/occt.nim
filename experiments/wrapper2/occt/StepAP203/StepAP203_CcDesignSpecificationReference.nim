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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepAP203_HArray1OfSpecifiedItem, ../StepBasic/StepBasic_DocumentReference

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP203_CcDesignSpecificationReference"
discard "forward decl of StepAP203_CcDesignSpecificationReference"
type
  Handle_StepAP203_CcDesignSpecificationReference* = handle[
      StepAP203_CcDesignSpecificationReference]

## ! Representation of STEP entity CcDesignSpecificationReference

type
  StepAP203_CcDesignSpecificationReference* {.
      importcpp: "StepAP203_CcDesignSpecificationReference",
      header: "StepAP203_CcDesignSpecificationReference.hxx", bycopy.} = object of StepBasic_DocumentReference ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructStepAP203_CcDesignSpecificationReference*(): StepAP203_CcDesignSpecificationReference {.
    constructor, importcpp: "StepAP203_CcDesignSpecificationReference(@)",
    header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc Init*(this: var StepAP203_CcDesignSpecificationReference;
          aDocumentReference_AssignedDocument: handle[StepBasic_Document];
          aDocumentReference_Source: handle[TCollection_HAsciiString];
          aItems: handle[StepAP203_HArray1OfSpecifiedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc Items*(this: StepAP203_CcDesignSpecificationReference): handle[
    StepAP203_HArray1OfSpecifiedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc SetItems*(this: var StepAP203_CcDesignSpecificationReference;
              Items: handle[StepAP203_HArray1OfSpecifiedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignSpecificationReference.hxx".}
type
  StepAP203_CcDesignSpecificationReferencebase_type* = StepBasic_DocumentReference

proc get_type_name*(): cstring {.importcpp: "StepAP203_CcDesignSpecificationReference::get_type_name(@)", header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP203_CcDesignSpecificationReference::get_type_descriptor(@)",
    header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc DynamicType*(this: StepAP203_CcDesignSpecificationReference): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP203_CcDesignSpecificationReference.hxx".}