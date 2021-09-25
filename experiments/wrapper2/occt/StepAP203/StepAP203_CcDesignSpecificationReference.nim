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

discard "forward decl of StepBasic_Document"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepAP203_CcDesignSpecificationReference"
discard "forward decl of StepAP203_CcDesignSpecificationReference"
type
  HandleStepAP203CcDesignSpecificationReference* = Handle[
      StepAP203CcDesignSpecificationReference]

## ! Representation of STEP entity CcDesignSpecificationReference

type
  StepAP203CcDesignSpecificationReference* {.
      importcpp: "StepAP203_CcDesignSpecificationReference",
      header: "StepAP203_CcDesignSpecificationReference.hxx", bycopy.} = object of StepBasicDocumentReference ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepAP203CcDesignSpecificationReference*(): StepAP203CcDesignSpecificationReference {.
    constructor, importcpp: "StepAP203_CcDesignSpecificationReference(@)",
    header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc init*(this: var StepAP203CcDesignSpecificationReference;
          aDocumentReferenceAssignedDocument: Handle[StepBasicDocument];
          aDocumentReferenceSource: Handle[TCollectionHAsciiString];
          aItems: Handle[StepAP203HArray1OfSpecifiedItem]) {.importcpp: "Init",
    header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc items*(this: StepAP203CcDesignSpecificationReference): Handle[
    StepAP203HArray1OfSpecifiedItem] {.noSideEffect, importcpp: "Items", header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc setItems*(this: var StepAP203CcDesignSpecificationReference;
              items: Handle[StepAP203HArray1OfSpecifiedItem]) {.
    importcpp: "SetItems", header: "StepAP203_CcDesignSpecificationReference.hxx".}
type
  StepAP203CcDesignSpecificationReferencebaseType* = StepBasicDocumentReference

proc getTypeName*(): cstring {.importcpp: "StepAP203_CcDesignSpecificationReference::get_type_name(@)", header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP203_CcDesignSpecificationReference::get_type_descriptor(@)",
    header: "StepAP203_CcDesignSpecificationReference.hxx".}
proc dynamicType*(this: StepAP203CcDesignSpecificationReference): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP203_CcDesignSpecificationReference.hxx".}
