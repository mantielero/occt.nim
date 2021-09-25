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
discard "forward decl of StepDimTol_GeometricTolerance"
discard "forward decl of StepDimTol_GeometricToleranceRelationship"
discard "forward decl of StepDimTol_GeometricToleranceRelationship"
type
  HandleStepDimTolGeometricToleranceRelationship* = Handle[
      StepDimTolGeometricToleranceRelationship]

## ! Representation of STEP entity GeometricToleranceRelationship

type
  StepDimTolGeometricToleranceRelationship* {.
      importcpp: "StepDimTol_GeometricToleranceRelationship",
      header: "StepDimTol_GeometricToleranceRelationship.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Empty
                                                                                               ## constructor


proc constructStepDimTolGeometricToleranceRelationship*(): StepDimTolGeometricToleranceRelationship {.
    constructor, importcpp: "StepDimTol_GeometricToleranceRelationship(@)",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc init*(this: var StepDimTolGeometricToleranceRelationship;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theRelatingGeometricTolerance: Handle[StepDimTolGeometricTolerance];
          theRelatedGeometricTolerance: Handle[StepDimTolGeometricTolerance]) {.
    importcpp: "Init", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc name*(this: StepDimTolGeometricToleranceRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc setName*(this: var StepDimTolGeometricToleranceRelationship;
             theName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc description*(this: StepDimTolGeometricToleranceRelationship): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc setDescription*(this: var StepDimTolGeometricToleranceRelationship;
                    theDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc relatingGeometricTolerance*(this: StepDimTolGeometricToleranceRelationship): Handle[
    StepDimTolGeometricTolerance] {.noSideEffect,
                                   importcpp: "RelatingGeometricTolerance", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc setRelatingGeometricTolerance*(this: var StepDimTolGeometricToleranceRelationship;
    theRelatingGeometricTolerance: Handle[StepDimTolGeometricTolerance]) {.
    importcpp: "SetRelatingGeometricTolerance",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc relatedGeometricTolerance*(this: StepDimTolGeometricToleranceRelationship): Handle[
    StepDimTolGeometricTolerance] {.noSideEffect,
                                   importcpp: "RelatedGeometricTolerance", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc setRelatedGeometricTolerance*(this: var StepDimTolGeometricToleranceRelationship;
    theRelatedGeometricTolerance: Handle[StepDimTolGeometricTolerance]) {.
    importcpp: "SetRelatedGeometricTolerance",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
type
  StepDimTolGeometricToleranceRelationshipbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepDimTol_GeometricToleranceRelationship::get_type_name(@)", header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepDimTol_GeometricToleranceRelationship::get_type_descriptor(@)",
    header: "StepDimTol_GeometricToleranceRelationship.hxx".}
proc dynamicType*(this: StepDimTolGeometricToleranceRelationship): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepDimTol_GeometricToleranceRelationship.hxx".}
