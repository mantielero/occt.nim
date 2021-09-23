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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepRepr/StepRepr_ShapeAspect, StepDimTol_HArray1OfDatumReferenceCompartment

discard "forward decl of StepDimTol_DatumSystem"
discard "forward decl of StepDimTol_DatumSystem"
type
  Handle_StepDimTol_DatumSystem* = handle[StepDimTol_DatumSystem]

## ! Representation of STEP entity DatumSystem

type
  StepDimTol_DatumSystem* {.importcpp: "StepDimTol_DatumSystem",
                           header: "StepDimTol_DatumSystem.hxx", bycopy.} = object of StepRepr_ShapeAspect ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepDimTol_DatumSystem*(): StepDimTol_DatumSystem {.constructor,
    importcpp: "StepDimTol_DatumSystem(@)", header: "StepDimTol_DatumSystem.hxx".}
proc Init*(this: var StepDimTol_DatumSystem;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theOfShape: handle[StepRepr_ProductDefinitionShape];
          theProductDefinitional: StepData_Logical; theConstituents: handle[
    StepDimTol_HArray1OfDatumReferenceCompartment]) {.importcpp: "Init",
    header: "StepDimTol_DatumSystem.hxx".}
proc Constituents*(this: var StepDimTol_DatumSystem): handle[
    StepDimTol_HArray1OfDatumReferenceCompartment] {.importcpp: "Constituents",
    header: "StepDimTol_DatumSystem.hxx".}
proc SetConstituents*(this: var StepDimTol_DatumSystem; theConstituents: handle[
    StepDimTol_HArray1OfDatumReferenceCompartment]) {.
    importcpp: "SetConstituents", header: "StepDimTol_DatumSystem.hxx".}
proc NbConstituents*(this: StepDimTol_DatumSystem): Standard_Integer {.noSideEffect,
    importcpp: "NbConstituents", header: "StepDimTol_DatumSystem.hxx".}
proc ConstituentsValue*(this: StepDimTol_DatumSystem; num: Standard_Integer): handle[
    StepDimTol_DatumReferenceCompartment] {.noSideEffect,
    importcpp: "ConstituentsValue", header: "StepDimTol_DatumSystem.hxx".}
proc ConstituentsValue*(this: var StepDimTol_DatumSystem; num: Standard_Integer;
                       theItem: handle[StepDimTol_DatumReferenceCompartment]) {.
    importcpp: "ConstituentsValue", header: "StepDimTol_DatumSystem.hxx".}
type
  StepDimTol_DatumSystembase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepDimTol_DatumSystem::get_type_name(@)",
                              header: "StepDimTol_DatumSystem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_DatumSystem::get_type_descriptor(@)",
    header: "StepDimTol_DatumSystem.hxx".}
proc DynamicType*(this: StepDimTol_DatumSystem): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_DatumSystem.hxx".}