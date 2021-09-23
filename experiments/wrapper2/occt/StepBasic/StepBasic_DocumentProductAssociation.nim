##  Created on: 2003-01-28
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  StepBasic_ProductOrFormationOrDefinition, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_ProductOrFormationOrDefinition"
discard "forward decl of StepBasic_DocumentProductAssociation"
discard "forward decl of StepBasic_DocumentProductAssociation"
type
  Handle_StepBasic_DocumentProductAssociation* = handle[
      StepBasic_DocumentProductAssociation]

## ! Representation of STEP entity DocumentProductAssociation

type
  StepBasic_DocumentProductAssociation* {.
      importcpp: "StepBasic_DocumentProductAssociation",
      header: "StepBasic_DocumentProductAssociation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructStepBasic_DocumentProductAssociation*(): StepBasic_DocumentProductAssociation {.
    constructor, importcpp: "StepBasic_DocumentProductAssociation(@)",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc Init*(this: var StepBasic_DocumentProductAssociation;
          aName: handle[TCollection_HAsciiString];
          hasDescription: Standard_Boolean;
          aDescription: handle[TCollection_HAsciiString];
          aRelatingDocument: handle[StepBasic_Document];
          aRelatedProduct: StepBasic_ProductOrFormationOrDefinition) {.
    importcpp: "Init", header: "StepBasic_DocumentProductAssociation.hxx".}
proc Name*(this: StepBasic_DocumentProductAssociation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepBasic_DocumentProductAssociation.hxx".}
proc SetName*(this: var StepBasic_DocumentProductAssociation;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc Description*(this: StepBasic_DocumentProductAssociation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepBasic_DocumentProductAssociation.hxx".}
proc SetDescription*(this: var StepBasic_DocumentProductAssociation;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc HasDescription*(this: StepBasic_DocumentProductAssociation): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescription",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc RelatingDocument*(this: StepBasic_DocumentProductAssociation): handle[
    StepBasic_Document] {.noSideEffect, importcpp: "RelatingDocument",
                         header: "StepBasic_DocumentProductAssociation.hxx".}
proc SetRelatingDocument*(this: var StepBasic_DocumentProductAssociation;
                         RelatingDocument: handle[StepBasic_Document]) {.
    importcpp: "SetRelatingDocument",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc RelatedProduct*(this: StepBasic_DocumentProductAssociation): StepBasic_ProductOrFormationOrDefinition {.
    noSideEffect, importcpp: "RelatedProduct",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc SetRelatedProduct*(this: var StepBasic_DocumentProductAssociation;
                       RelatedProduct: StepBasic_ProductOrFormationOrDefinition) {.
    importcpp: "SetRelatedProduct",
    header: "StepBasic_DocumentProductAssociation.hxx".}
type
  StepBasic_DocumentProductAssociationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentProductAssociation::get_type_name(@)", header: "StepBasic_DocumentProductAssociation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentProductAssociation::get_type_descriptor(@)",
    header: "StepBasic_DocumentProductAssociation.hxx".}
proc DynamicType*(this: StepBasic_DocumentProductAssociation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentProductAssociation.hxx".}