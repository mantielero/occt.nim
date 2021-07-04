##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_GeometricSet

discard "forward decl of StepShape_GeometricCurveSet"
discard "forward decl of StepShape_GeometricCurveSet"
type
  Handle_StepShape_GeometricCurveSet* = handle[StepShape_GeometricCurveSet]
  StepShape_GeometricCurveSet* {.importcpp: "StepShape_GeometricCurveSet",
                                header: "StepShape_GeometricCurveSet.hxx", bycopy.} = object of StepShape_GeometricSet ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## GeometricCurveSet


proc constructStepShape_GeometricCurveSet*(): StepShape_GeometricCurveSet {.
    constructor, importcpp: "StepShape_GeometricCurveSet(@)",
    header: "StepShape_GeometricCurveSet.hxx".}
type
  StepShape_GeometricCurveSetbase_type* = StepShape_GeometricSet

proc get_type_name*(): cstring {.importcpp: "StepShape_GeometricCurveSet::get_type_name(@)",
                              header: "StepShape_GeometricCurveSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_GeometricCurveSet::get_type_descriptor(@)",
    header: "StepShape_GeometricCurveSet.hxx".}
proc DynamicType*(this: StepShape_GeometricCurveSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_GeometricCurveSet.hxx".}