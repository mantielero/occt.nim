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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepDimTol_GeometricToleranceRelationship"
discard "forward decl of StepDimTol_GeometricToleranceRelationship"
type
  Handle_StepDimTol_GeometricToleranceRelationship* = handle[
      StepDimTol_GeometricToleranceRelationship]

## ! Representation of STEP entity GeometricToleranceRelationship

type
  StepDimTol_GeometricToleranceRelationship* {.
      importcpp: "StepDimTol_GeometricToleranceRelationship",
      header: "StepDimTol_GeometricToleranceRelationship.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepDimTol_GeometricToleranceRelationship*(): StepDimTol_GeometricToleranceRelationship {.
    constructor, importcpp: "StepDimTol_GeometricToleranceRelationship(@)",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc Init*(this: var StepDimTol_GeometricToleranceRelationship;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theRelatingGeometricTolerance: handle[StepDimTol_GeometricTolerance];
          theRelatedGeometricTolerance: handle[StepDimTol_GeometricTolerance]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc Name*(this: StepDimTol_GeometricToleranceRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc SetName*(this: var StepDimTol_GeometricToleranceRelationship;
             theName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc Description*(this: StepDimTol_GeometricToleranceRelationship): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc SetDescription*(this: var StepDimTol_GeometricToleranceRelationship;
                    theDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc RelatingGeometricTolerance*(this: StepDimTol_GeometricToleranceRelationship): handle[
    StepDimTol_GeometricTolerance] {.noSideEffect,
                                    importcpp: "RelatingGeometricTolerance", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc SetRelatingGeometricTolerance*(this: var StepDimTol_GeometricToleranceRelationship;
    theRelatingGeometricTolerance: handle[StepDimTol_GeometricTolerance]) {.
    importcpp: "SetRelatingGeometricTolerance",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc RelatedGeometricTolerance*(this: StepDimTol_GeometricToleranceRelationship): handle[
    StepDimTol_GeometricTolerance] {.noSideEffect,
                                    importcpp: "RelatedGeometricTolerance", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc SetRelatedGeometricTolerance*(this: var StepDimTol_GeometricToleranceRelationship;
    theRelatedGeometricTolerance: handle[StepDimTol_GeometricTolerance]) {.
    importcpp: "SetRelatedGeometricTolerance",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
type
  StepDimTol_GeometricToleranceRelationshipbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepDimTol_GeometricToleranceRelationship::get_type_name(@)", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepDimTol_GeometricToleranceRelationship::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc DynamicType*(this: StepDimTol_GeometricToleranceRelationship): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepDimTol_GeometricToleranceRelationship.hxx".}