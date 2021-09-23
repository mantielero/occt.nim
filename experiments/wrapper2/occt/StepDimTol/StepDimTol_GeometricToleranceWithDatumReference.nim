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
  StepDimTol_HArray1OfDatumReference, StepDimTol_HArray1OfDatumSystemOrReference,
  StepDimTol_GeometricTolerance

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_MeasureWithUnit"
discard "forward decl of StepDimTol_GeometricToleranceTarget"
discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
discard "forward decl of StepDimTol_GeometricToleranceWithDatumReference"
type
  Handle_StepDimTol_GeometricToleranceWithDatumReference* = handle[
      StepDimTol_GeometricToleranceWithDatumReference]

## ! Representation of STEP entity GeometricToleranceWithDatumReference

type
  StepDimTol_GeometricToleranceWithDatumReference* {.
      importcpp: "StepDimTol_GeometricToleranceWithDatumReference",
      header: "StepDimTol_GeometricToleranceWithDatumReference.hxx", bycopy.} = object of StepDimTol_GeometricTolerance ##
                                                                                                                 ## !
                                                                                                                 ## Empty
                                                                                                                 ## constructor


proc constructStepDimTol_GeometricToleranceWithDatumReference*(): StepDimTol_GeometricToleranceWithDatumReference {.
    constructor, importcpp: "StepDimTol_GeometricToleranceWithDatumReference(@)",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithDatumReference;
          theGeometricTolerance_Name: handle[TCollection_HAsciiString];
          theGeometricTolerance_Description: handle[TCollection_HAsciiString];
          theGeometricTolerance_Magnitude: handle[StepBasic_MeasureWithUnit];
    theGeometricTolerance_TolerancedShapeAspect: handle[StepRepr_ShapeAspect];
          theDatumSystem: handle[StepDimTol_HArray1OfDatumReference]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceWithDatumReference;
          theGeometricTolerance_Name: handle[TCollection_HAsciiString];
          theGeometricTolerance_Description: handle[TCollection_HAsciiString];
          theGeometricTolerance_Magnitude: handle[StepBasic_MeasureWithUnit];
    theGeometricTolerance_TolerancedShapeAspect: StepDimTol_GeometricToleranceTarget;
          theDatumSystem: handle[StepDimTol_HArray1OfDatumSystemOrReference]) {.
    importcpp: "Init",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc DatumSystem*(this: StepDimTol_GeometricToleranceWithDatumReference): handle[
    StepDimTol_HArray1OfDatumReference] {.noSideEffect, importcpp: "DatumSystem",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc DatumSystemAP242*(this: StepDimTol_GeometricToleranceWithDatumReference): handle[
    StepDimTol_HArray1OfDatumSystemOrReference] {.noSideEffect,
    importcpp: "DatumSystemAP242",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc SetDatumSystem*(this: var StepDimTol_GeometricToleranceWithDatumReference;
                    theDatumSystem: handle[StepDimTol_HArray1OfDatumReference]) {.
    importcpp: "SetDatumSystem",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc SetDatumSystem*(this: var StepDimTol_GeometricToleranceWithDatumReference;
    theDatumSystem: handle[StepDimTol_HArray1OfDatumSystemOrReference]) {.
    importcpp: "SetDatumSystem",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
type
  StepDimTol_GeometricToleranceWithDatumReferencebase_type* = StepDimTol_GeometricTolerance

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricToleranceWithDatumReference::get_type_name(@)", header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeometricToleranceWithDatumReference::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}
proc DynamicType*(this: StepDimTol_GeometricToleranceWithDatumReference): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepDimTol_GeometricToleranceWithDatumReference.hxx".}