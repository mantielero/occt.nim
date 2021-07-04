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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
discard "forward decl of StepElement_AnalysisItemWithinRepresentation"
type
  Handle_StepElement_AnalysisItemWithinRepresentation* = handle[
      StepElement_AnalysisItemWithinRepresentation]

## ! Representation of STEP entity AnalysisItemWithinRepresentation

type
  StepElement_AnalysisItemWithinRepresentation* {.
      importcpp: "StepElement_AnalysisItemWithinRepresentation",
      header: "StepElement_AnalysisItemWithinRepresentation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor


proc constructStepElement_AnalysisItemWithinRepresentation*(): StepElement_AnalysisItemWithinRepresentation {.
    constructor, importcpp: "StepElement_AnalysisItemWithinRepresentation(@)",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc Init*(this: var StepElement_AnalysisItemWithinRepresentation;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString];
          aItem: handle[StepRepr_RepresentationItem];
          aRep: handle[StepRepr_Representation]) {.importcpp: "Init",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc Name*(this: StepElement_AnalysisItemWithinRepresentation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc SetName*(this: var StepElement_AnalysisItemWithinRepresentation;
             Name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc Description*(this: StepElement_AnalysisItemWithinRepresentation): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc SetDescription*(this: var StepElement_AnalysisItemWithinRepresentation;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc Item*(this: StepElement_AnalysisItemWithinRepresentation): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "Item", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc SetItem*(this: var StepElement_AnalysisItemWithinRepresentation;
             Item: handle[StepRepr_RepresentationItem]) {.importcpp: "SetItem",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc Rep*(this: StepElement_AnalysisItemWithinRepresentation): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "Rep", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc SetRep*(this: var StepElement_AnalysisItemWithinRepresentation;
            Rep: handle[StepRepr_Representation]) {.importcpp: "SetRep",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
type
  StepElement_AnalysisItemWithinRepresentationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_AnalysisItemWithinRepresentation::get_type_name(@)", header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepElement_AnalysisItemWithinRepresentation::get_type_descriptor(@)",
    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}
proc DynamicType*(this: StepElement_AnalysisItemWithinRepresentation): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_AnalysisItemWithinRepresentation.hxx".}