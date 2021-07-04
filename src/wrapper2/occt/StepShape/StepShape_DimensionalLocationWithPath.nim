##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_DimensionalLocation,
  ../Standard/Standard_Boolean

discard "forward decl of StepRepr_ShapeAspect"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_DimensionalLocationWithPath"
discard "forward decl of StepShape_DimensionalLocationWithPath"
type
  Handle_StepShape_DimensionalLocationWithPath* = handle[
      StepShape_DimensionalLocationWithPath]

## ! Representation of STEP entity DimensionalLocationWithPath

type
  StepShape_DimensionalLocationWithPath* {.
      importcpp: "StepShape_DimensionalLocationWithPath",
      header: "StepShape_DimensionalLocationWithPath.hxx", bycopy.} = object of StepShape_DimensionalLocation ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepShape_DimensionalLocationWithPath*(): StepShape_DimensionalLocationWithPath {.
    constructor, importcpp: "StepShape_DimensionalLocationWithPath(@)",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc Init*(this: var StepShape_DimensionalLocationWithPath;
          aShapeAspectRelationship_Name: handle[TCollection_HAsciiString];
          hasShapeAspectRelationship_Description: Standard_Boolean;
    aShapeAspectRelationship_Description: handle[TCollection_HAsciiString];
    aShapeAspectRelationship_RelatingShapeAspect: handle[StepRepr_ShapeAspect];
    aShapeAspectRelationship_RelatedShapeAspect: handle[StepRepr_ShapeAspect];
          aPath: handle[StepRepr_ShapeAspect]) {.importcpp: "Init",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc Path*(this: StepShape_DimensionalLocationWithPath): handle[
    StepRepr_ShapeAspect] {.noSideEffect, importcpp: "Path",
                           header: "StepShape_DimensionalLocationWithPath.hxx".}
proc SetPath*(this: var StepShape_DimensionalLocationWithPath;
             Path: handle[StepRepr_ShapeAspect]) {.importcpp: "SetPath",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
type
  StepShape_DimensionalLocationWithPathbase_type* = StepShape_DimensionalLocation

proc get_type_name*(): cstring {.importcpp: "StepShape_DimensionalLocationWithPath::get_type_name(@)", header: "StepShape_DimensionalLocationWithPath.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_DimensionalLocationWithPath::get_type_descriptor(@)",
    header: "StepShape_DimensionalLocationWithPath.hxx".}
proc DynamicType*(this: StepShape_DimensionalLocationWithPath): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepShape_DimensionalLocationWithPath.hxx".}