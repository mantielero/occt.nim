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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_HArray1OfDocument,
  StepBasic_ProductDefinition, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_ProductDefinitionWithAssociatedDocuments"
discard "forward decl of StepBasic_ProductDefinitionWithAssociatedDocuments"
type
  Handle_StepBasic_ProductDefinitionWithAssociatedDocuments* = handle[
      StepBasic_ProductDefinitionWithAssociatedDocuments]
  StepBasic_ProductDefinitionWithAssociatedDocuments* {.
      importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments",
      header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx", bycopy.} = object of StepBasic_ProductDefinition


proc constructStepBasic_ProductDefinitionWithAssociatedDocuments*(): StepBasic_ProductDefinitionWithAssociatedDocuments {.
    constructor,
    importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments(@)",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc Init*(this: var StepBasic_ProductDefinitionWithAssociatedDocuments;
          aId: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aFormation: handle[StepBasic_ProductDefinitionFormation];
          aFrame: handle[StepBasic_ProductDefinitionContext];
          aDocIds: handle[StepBasic_HArray1OfDocument]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc DocIds*(this: StepBasic_ProductDefinitionWithAssociatedDocuments): handle[
    StepBasic_HArray1OfDocument] {.noSideEffect, importcpp: "DocIds", header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc SetDocIds*(this: var StepBasic_ProductDefinitionWithAssociatedDocuments;
               DocIds: handle[StepBasic_HArray1OfDocument]) {.
    importcpp: "SetDocIds",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc NbDocIds*(this: StepBasic_ProductDefinitionWithAssociatedDocuments): Standard_Integer {.
    noSideEffect, importcpp: "NbDocIds",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc DocIdsValue*(this: StepBasic_ProductDefinitionWithAssociatedDocuments;
                 num: Standard_Integer): handle[StepBasic_Document] {.noSideEffect,
    importcpp: "DocIdsValue",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc SetDocIdsValue*(this: var StepBasic_ProductDefinitionWithAssociatedDocuments;
                    num: Standard_Integer; adoc: handle[StepBasic_Document]) {.
    importcpp: "SetDocIdsValue",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
type
  StepBasic_ProductDefinitionWithAssociatedDocumentsbase_type* = StepBasic_ProductDefinition

proc get_type_name*(): cstring {.importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments::get_type_name(@)", header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc DynamicType*(this: StepBasic_ProductDefinitionWithAssociatedDocuments): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}