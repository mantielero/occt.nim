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

discard "forward decl of StepDimTol_Datum"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepDimTol_CommonDatum"
discard "forward decl of StepDimTol_CommonDatum"
type
  HandleC1C1* = Handle[StepDimTolCommonDatum]

## ! Representation of STEP entity CommonDatum

type
  StepDimTolCommonDatum* {.importcpp: "StepDimTol_CommonDatum",
                          header: "StepDimTol_CommonDatum.hxx", bycopy.} = object of StepReprCompositeShapeAspect ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepDimTolCommonDatum*(): StepDimTolCommonDatum {.constructor,
    importcpp: "StepDimTol_CommonDatum(@)", header: "StepDimTol_CommonDatum.hxx".}
proc init*(this: var StepDimTolCommonDatum;
          theShapeAspectName: Handle[TCollectionHAsciiString];
          theShapeAspectDescription: Handle[TCollectionHAsciiString];
          theShapeAspectOfShape: Handle[StepReprProductDefinitionShape];
          theShapeAspectProductDefinitional: StepDataLogical;
          theDatumName: Handle[TCollectionHAsciiString];
          theDatumDescription: Handle[TCollectionHAsciiString];
          theDatumOfShape: Handle[StepReprProductDefinitionShape];
          theDatumProductDefinitional: StepDataLogical;
          theDatumIdentification: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepDimTol_CommonDatum.hxx".}
proc datum*(this: StepDimTolCommonDatum): Handle[StepDimTolDatum] {.noSideEffect,
    importcpp: "Datum", header: "StepDimTol_CommonDatum.hxx".}
proc setDatum*(this: var StepDimTolCommonDatum; theDatum: Handle[StepDimTolDatum]) {.
    importcpp: "SetDatum", header: "StepDimTol_CommonDatum.hxx".}
type
  StepDimTolCommonDatumbaseType* = StepReprCompositeShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepDimTol_CommonDatum::get_type_name(@)",
                            header: "StepDimTol_CommonDatum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_CommonDatum::get_type_descriptor(@)",
    header: "StepDimTol_CommonDatum.hxx".}
proc dynamicType*(this: StepDimTolCommonDatum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepDimTol_CommonDatum.hxx".}

























