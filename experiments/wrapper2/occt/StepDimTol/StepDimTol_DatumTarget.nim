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
  ../StepRepr/StepRepr_ShapeAspect, ../StepData/StepData_Logical

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_ProductDefinitionShape"
discard "forward decl of StepDimTol_DatumTarget"
discard "forward decl of StepDimTol_DatumTarget"
type
  Handle_StepDimTol_DatumTarget* = handle[StepDimTol_DatumTarget]

## ! Representation of STEP entity DatumTarget

type
  StepDimTol_DatumTarget* {.importcpp: "StepDimTol_DatumTarget",
                           header: "StepDimTol_DatumTarget.hxx", bycopy.} = object of StepRepr_ShapeAspect ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepDimTol_DatumTarget*(): StepDimTol_DatumTarget {.constructor,
    importcpp: "StepDimTol_DatumTarget(@)", header: "StepDimTol_DatumTarget.hxx".}
proc Init*(this: var StepDimTol_DatumTarget;
          theShapeAspect_Name: handle[TCollection_HAsciiString];
          theShapeAspect_Description: handle[TCollection_HAsciiString];
          theShapeAspect_OfShape: handle[StepRepr_ProductDefinitionShape];
          theShapeAspect_ProductDefinitional: StepData_Logical;
          theTargetId: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepDimTol_DatumTarget.hxx".}
proc TargetId*(this: StepDimTol_DatumTarget): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TargetId", header: "StepDimTol_DatumTarget.hxx".}
proc SetTargetId*(this: var StepDimTol_DatumTarget;
                 theTargetId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTargetId", header: "StepDimTol_DatumTarget.hxx".}
type
  StepDimTol_DatumTargetbase_type* = StepRepr_ShapeAspect

proc get_type_name*(): cstring {.importcpp: "StepDimTol_DatumTarget::get_type_name(@)",
                              header: "StepDimTol_DatumTarget.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_DatumTarget::get_type_descriptor(@)",
    header: "StepDimTol_DatumTarget.hxx".}
proc DynamicType*(this: StepDimTol_DatumTarget): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepDimTol_DatumTarget.hxx".}