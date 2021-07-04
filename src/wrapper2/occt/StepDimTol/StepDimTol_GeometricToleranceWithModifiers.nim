##  Created on: 2015-07-07
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
  StepDimTol_GeometricTolerance, StepDimTol_GeometricToleranceModifier,
  StepDimTol_HArray1OfGeometricToleranceModifier

discard "forward decl of StepDimTol_HArray1OfGeometricToleranceModifier"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
type
  Handle_StepDimTol_GeometricToleranceWithModifiers* = handle[
      StepDimTol_GeometricToleranceWithModifiers]

## ! Representation of STEP entity GeometricToleranceWithModifiers

type
  StepDimTol_GeometricToleranceWithModifiers* {.
      importcpp: "StepDimTol_GeometricToleranceWithModifiers",
      header: "StepDimTol_GeometricToleranceWithModifiers.hxx", bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructStepDimTol_GeometricToleranceWithModifiers*(): StepDimTol_GeometricToleranceWithModifiers {.
    constructor, importcpp: "StepDimTol_GeometricToleranceWithModifiers(@)",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithModifiers;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theMagnitude: handle[StepBasic_MeasureWithUnit];
          theTolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theModifiers: handle[StepDimTol_HArray1OfGeometricToleranceModifier]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc Modifiers*(this: StepDimTol_GeometricToleranceWithModifiers): handle[
    StepDimTol_HArray1OfGeometricToleranceModifier] {.noSideEffect,
    importcpp: "Modifiers",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc SetModifiers*(this: var StepDimTol_GeometricToleranceWithModifiers;
    theModifiers: handle[StepDimTol_HArray1OfGeometricToleranceModifier]) {.
    importcpp: "SetModifiers",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc NbModifiers*(this: StepDimTol_GeometricToleranceWithModifiers): Standard_Integer {.
    noSideEffect, importcpp: "NbModifiers",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc ModifierValue*(this: StepDimTol_GeometricToleranceWithModifiers;
                   theNum: Standard_Integer): StepDimTol_GeometricToleranceModifier {.
    noSideEffect, importcpp: "ModifierValue",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc SetModifierValue*(this: var StepDimTol_GeometricToleranceWithModifiers;
                      theNum: Standard_Integer;
                      theItem: StepDimTol_GeometricToleranceModifier) {.
    importcpp: "SetModifierValue",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
type
  StepDimTol_GeometricToleranceWithModifiersbase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithModifiers::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeometricToleranceWithModifiers::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc DynamicType*(this: StepDimTol_GeometricToleranceWithModifiers): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}