##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
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
  ../StepRepr/StepRepr_CompositeShapeAspect, ../StepData/StepData_Logical

discard "forward decl of StepDimTol_Datum"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepDimTol_CommonDatum"
discard "forward decl of StepDimTol_CommonDatum"
type
  Handle_StepDimTol_CommonDatum* = handle[StepDimTol_CommonDatum]

## ! Representation of STEP entity CommonDatum

type
  StepDimTol_CommonDatum* {.importcpp: "StepDimTol_CommonDatum",
                           header: "StepDimTol_CommonDatum.hxx", bycopy.} = object of StepRepr_CompositeShapeAspect ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepDimTol_CommonDatum*(): StepDimTol_CommonDatum {.constructor,
    importcpp: "StepDimTol_CommonDatum(@)", header: "StepDimTol_CommonDatum.hxx".}
proc Init*(this: var StepDimTol_CommonDatum;
          theShapeAspect_Name: handle[TCollection_HAsciiString];
          theShapeAspect_Description: handle[TCollection_HAsciiString];
          theShapeAspect_OfShape: handle[StepRepr_ProductDefinitionShape];
          theShapeAspect_ProductDefinitional: StepData_Logical;
          theDatum_Name: handle[TCollection_HAsciiString];
          theDatum_Description: handle[TCollection_HAsciiString];
          theDatum_OfShape: handle[StepRepr_ProductDefinitionShape];
          theDatum_ProductDefinitional: StepData_Logical;
          theDatum_Identification: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "StepDimTol_CommonDatum.hxx".}
proc Datum*(this: StepDimTol_CommonDatum): handle[StepDimTol_Datum] {.noSideEffect,
    importcpp: "Datum", header: "StepDimTol_CommonDatum.hxx".}
proc SetDatum*(this: var StepDimTol_CommonDatum; theDatum: handle[StepDimTol_Datum]) {.
    importcpp: "SetDatum", header: "StepDimTol_CommonDatum.hxx".}
type
  StepDimTol_CommonDatumbase_type* = StepRepr_CompositeShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepDimTol_CommonDatum::get_type_name(@)",
                              header: "StepDimTol_CommonDatum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_CommonDatum::get_type_descriptor(@)",
    header: "StepDimTol_CommonDatum.hxx".}
proc DynamicType*(this: StepDimTol_CommonDatum): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_CommonDatum.hxx".}