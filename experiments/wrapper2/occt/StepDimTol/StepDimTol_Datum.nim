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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepDimTol_Datum"
discard "forward decl of StepDimTol_Datum"
type
  HandleStepDimTolDatum* = Handle[StepDimTolDatum]

## ! Representation of STEP entity Datum

type
  StepDimTolDatum* {.importcpp: "StepDimTol_Datum", header: "StepDimTol_Datum.hxx",
                    bycopy.} = object of StepReprShapeAspect ## ! Empty constructor


proc constructStepDimTolDatum*(): StepDimTolDatum {.constructor,
    importcpp: "StepDimTol_Datum(@)", header: "StepDimTol_Datum.hxx".}
proc init*(this: var StepDimTolDatum;
          theShapeAspectName: Handle[TCollectionHAsciiString];
          theShapeAspectDescription: Handle[TCollectionHAsciiString];
          theShapeAspectOfShape: Handle[StepReprProductDefinitionShape];
          theShapeAspectProductDefinitional: StepDataLogical;
          theIdentification: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepDimTol_Datum.hxx".}
proc identification*(this: StepDimTolDatum): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Identification", header: "StepDimTol_Datum.hxx".}
proc setIdentification*(this: var StepDimTolDatum;
                       theIdentification: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetIdentification", header: "StepDimTol_Datum.hxx".}
type
  StepDimTolDatumbaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepDimTol_Datum::get_type_name(@)",
                            header: "StepDimTol_Datum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_Datum::get_type_descriptor(@)",
    header: "StepDimTol_Datum.hxx".}
proc dynamicType*(this: StepDimTolDatum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepDimTol_Datum.hxx".}
