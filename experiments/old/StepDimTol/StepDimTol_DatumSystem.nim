##  Created on: 2015-07-16
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StepDimTol_DatumSystem"
discard "forward decl of StepDimTol_DatumSystem"
type
  HandleC1C1* = Handle[StepDimTolDatumSystem]

## ! Representation of STEP entity DatumSystem

type
  StepDimTolDatumSystem* {.importcpp: "StepDimTol_DatumSystem",
                          header: "StepDimTol_DatumSystem.hxx", bycopy.} = object of StepReprShapeAspect ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor


proc constructStepDimTolDatumSystem*(): StepDimTolDatumSystem {.constructor,
    importcpp: "StepDimTol_DatumSystem(@)", header: "StepDimTol_DatumSystem.hxx".}
proc init*(this: var StepDimTolDatumSystem;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theOfShape: Handle[StepReprProductDefinitionShape];
          theProductDefinitional: StepDataLogical;
          theConstituents: Handle[StepDimTolHArray1OfDatumReferenceCompartment]) {.
    importcpp: "Init", header: "StepDimTol_DatumSystem.hxx".}
proc constituents*(this: var StepDimTolDatumSystem): Handle[
    StepDimTolHArray1OfDatumReferenceCompartment] {.importcpp: "Constituents",
    header: "StepDimTol_DatumSystem.hxx".}
proc setConstituents*(this: var StepDimTolDatumSystem; theConstituents: Handle[
    StepDimTolHArray1OfDatumReferenceCompartment]) {.
    importcpp: "SetConstituents", header: "StepDimTol_DatumSystem.hxx".}
proc nbConstituents*(this: StepDimTolDatumSystem): int {.noSideEffect,
    importcpp: "NbConstituents", header: "StepDimTol_DatumSystem.hxx".}
proc constituentsValue*(this: StepDimTolDatumSystem; num: int): Handle[
    StepDimTolDatumReferenceCompartment] {.noSideEffect,
    importcpp: "ConstituentsValue", header: "StepDimTol_DatumSystem.hxx".}
proc constituentsValue*(this: var StepDimTolDatumSystem; num: int;
                       theItem: Handle[StepDimTolDatumReferenceCompartment]) {.
    importcpp: "ConstituentsValue", header: "StepDimTol_DatumSystem.hxx".}
type
  StepDimTolDatumSystembaseType* = StepReprShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepDimTol_DatumSystem::get_type_name(@)",
                            header: "StepDimTol_DatumSystem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_DatumSystem::get_type_descriptor(@)",
    header: "StepDimTol_DatumSystem.hxx".}
proc dynamicType*(this: StepDimTolDatumSystem): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepDimTol_DatumSystem.hxx".}