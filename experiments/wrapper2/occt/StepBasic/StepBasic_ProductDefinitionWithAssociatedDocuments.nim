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
discard "forward decl of StepBasic_ProductDefinitionFormation"
discard "forward decl of StepBasic_ProductDefinitionContext"
discard "forward decl of StepBasic_Document"
discard "forward decl of StepBasic_ProductDefinitionWithAssociatedDocuments"
discard "forward decl of StepBasic_ProductDefinitionWithAssociatedDocuments"
type
  HandleC1C1* = Handle[StepBasicProductDefinitionWithAssociatedDocuments]
  StepBasicProductDefinitionWithAssociatedDocuments* {.
      importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments",
      header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx", bycopy.} = object of StepBasicProductDefinition


proc constructStepBasicProductDefinitionWithAssociatedDocuments*(): StepBasicProductDefinitionWithAssociatedDocuments {.
    constructor,
    importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments(@)",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc init*(this: var StepBasicProductDefinitionWithAssociatedDocuments;
          aId: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aFormation: Handle[StepBasicProductDefinitionFormation];
          aFrame: Handle[StepBasicProductDefinitionContext];
          aDocIds: Handle[StepBasicHArray1OfDocument]) {.importcpp: "Init",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc docIds*(this: StepBasicProductDefinitionWithAssociatedDocuments): Handle[
    StepBasicHArray1OfDocument] {.noSideEffect, importcpp: "DocIds", header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc setDocIds*(this: var StepBasicProductDefinitionWithAssociatedDocuments;
               docIds: Handle[StepBasicHArray1OfDocument]) {.
    importcpp: "SetDocIds",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc nbDocIds*(this: StepBasicProductDefinitionWithAssociatedDocuments): cint {.
    noSideEffect, importcpp: "NbDocIds",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc docIdsValue*(this: StepBasicProductDefinitionWithAssociatedDocuments;
                 num: cint): Handle[StepBasicDocument] {.noSideEffect,
    importcpp: "DocIdsValue",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc setDocIdsValue*(this: var StepBasicProductDefinitionWithAssociatedDocuments;
                    num: cint; adoc: Handle[StepBasicDocument]) {.
    importcpp: "SetDocIdsValue",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
type
  StepBasicProductDefinitionWithAssociatedDocumentsbaseType* = StepBasicProductDefinition

proc getTypeName*(): cstring {.importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments::get_type_name(@)", header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepBasic_ProductDefinitionWithAssociatedDocuments::get_type_descriptor(@)",
    header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}
proc dynamicType*(this: StepBasicProductDefinitionWithAssociatedDocuments): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepBasic_ProductDefinitionWithAssociatedDocuments.hxx".}

























