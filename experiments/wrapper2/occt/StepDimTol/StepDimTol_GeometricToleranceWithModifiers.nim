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

discard "forward decl of StepDimTol_HArray1OfGeometricToleranceModifier"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
discard "forward decl of StepDimTol_GeometricToleranceWithModifiers"
type
  HandleStepDimTolGeometricToleranceWithModifiers* = Handle[
      StepDimTolGeometricToleranceWithModifiers]

## ! Representation of STEP entity GeometricToleranceWithModifiers

type
  StepDimTolGeometricToleranceWithModifiers* {.
      importcpp: "StepDimTol_GeometricToleranceWithModifiers",
      header: "StepDimTol_GeometricToleranceWithModifiers.hxx", bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor


proc constructStepDimTolGeometricToleranceWithModifiers*(): StepDimTolGeometricToleranceWithModifiers {.
    constructor, importcpp: "StepDimTol_GeometricToleranceWithModifiers(@)",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc init*(this: var StepDimTolGeometricToleranceWithModifiers;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theMagnitude: Handle[StepBasicMeasureWithUnit];
          theTolerancedShapeAspect: StepDimTolGeometricToleranceTarget;
          theModifiers: Handle[StepDimTolHArray1OfGeometricToleranceModifier]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc modifiers*(this: StepDimTolGeometricToleranceWithModifiers): Handle[
    StepDimTolHArray1OfGeometricToleranceModifier] {.noSideEffect,
    importcpp: "Modifiers",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc setModifiers*(this: var StepDimTolGeometricToleranceWithModifiers; theModifiers: Handle[
    StepDimTolHArray1OfGeometricToleranceModifier]) {.importcpp: "SetModifiers",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc nbModifiers*(this: StepDimTolGeometricToleranceWithModifiers): int {.
    noSideEffect, importcpp: "NbModifiers",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc modifierValue*(this: StepDimTolGeometricToleranceWithModifiers; theNum: int): StepDimTolGeometricToleranceModifier {.
    noSideEffect, importcpp: "ModifierValue",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc setModifierValue*(this: var StepDimTolGeometricToleranceWithModifiers;
                      theNum: int; theItem: StepDimTolGeometricToleranceModifier) {.
    importcpp: "SetModifierValue",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
type
  StepDimTolGeometricToleranceWithModifiersbaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithModifiers::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeometricToleranceWithModifiers::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
proc dynamicType*(this: StepDimTolGeometricToleranceWithModifiers): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_GeometricToleranceWithModifiers.hxx".}
