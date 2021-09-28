##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
type
  HandleC1C1* = Handle[StepElementAnalysisItemWithinRepresentation]

## ! Representation of STEP entity AnalysisItemWithinRepresentation

type
  StepElementAnalysisItemWithinRepresentation* {.
      importcpp: "StepElement_AnalysisItemWithinRepresentation",
      header: "StepElement_AnalysisItemWithinRepresentation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepElementAnalysisItemWithinRepresentation*(): StepElementAnalysisItemWithinRepresentation {.
    constructor, importcpp: "StepElement_AnalysisItemWithinRepresentation(@)",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc init*(this: var StepElementAnalysisItemWithinRepresentation;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString];
          aItem: Handle[StepReprRepresentationItem];
          aRep: Handle[StepReprRepresentation]) {.importcpp: "Init",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc name*(this: StepElementAnalysisItemWithinRepresentation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc setName*(this: var StepElementAnalysisItemWithinRepresentation;
             name: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc description*(this: StepElementAnalysisItemWithinRepresentation): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc setDescription*(this: var StepElementAnalysisItemWithinRepresentation;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc item*(this: StepElementAnalysisItemWithinRepresentation): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "Item", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc setItem*(this: var StepElementAnalysisItemWithinRepresentation;
             item: Handle[StepReprRepresentationItem]) {.importcpp: "SetItem",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc rep*(this: StepElementAnalysisItemWithinRepresentation): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "Rep", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc setRep*(this: var StepElementAnalysisItemWithinRepresentation;
            rep: Handle[StepReprRepresentation]) {.importcpp: "SetRep",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
type
  StepElementAnalysisItemWithinRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_AnalysisItemWithinRepresentation::get_type_name(@)", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepElement_AnalysisItemWithinRepresentation::get_type_descriptor(@)",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc dynamicType*(this: StepElementAnalysisItemWithinRepresentation): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepElement_AnalysisItemWithinRepresentation.hxx".}

























