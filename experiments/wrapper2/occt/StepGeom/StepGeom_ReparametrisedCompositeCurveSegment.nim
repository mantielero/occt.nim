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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepGeom_CompositeCurveSegment, StepGeom_TransitionCode,
  ../Standard/Standard_Boolean

discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_ReparametrisedCompositeCurveSegment"
discard "forward decl of StepGeom_ReparametrisedCompositeCurveSegment"
type
  Handle_StepGeom_ReparametrisedCompositeCurveSegment* = handle[
      StepGeom_ReparametrisedCompositeCurveSegment]
  StepGeom_ReparametrisedCompositeCurveSegment* {.
      importcpp: "StepGeom_ReparametrisedCompositeCurveSegment",
      header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx", bycopy.} = object of StepGeom_CompositeCurveSegment ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## a
                                                                                                               ## ReparametrisedCompositeCurveSegment


proc constructStepGeom_ReparametrisedCompositeCurveSegment*(): StepGeom_ReparametrisedCompositeCurveSegment {.
    constructor, importcpp: "StepGeom_ReparametrisedCompositeCurveSegment(@)",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc Init*(this: var StepGeom_ReparametrisedCompositeCurveSegment;
          aTransition: StepGeom_TransitionCode; aSameSense: Standard_Boolean;
          aParentCurve: handle[StepGeom_Curve]; aParamLength: Standard_Real) {.
    importcpp: "Init", header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc SetParamLength*(this: var StepGeom_ReparametrisedCompositeCurveSegment;
                    aParamLength: Standard_Real) {.importcpp: "SetParamLength",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc ParamLength*(this: StepGeom_ReparametrisedCompositeCurveSegment): Standard_Real {.
    noSideEffect, importcpp: "ParamLength",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
type
  StepGeom_ReparametrisedCompositeCurveSegmentbase_type* = StepGeom_CompositeCurveSegment

proc get_type_name*(): cstring {.importcpp: "StepGeom_ReparametrisedCompositeCurveSegment::get_type_name(@)", header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_ReparametrisedCompositeCurveSegment::get_type_descriptor(@)",
    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}
proc DynamicType*(this: StepGeom_ReparametrisedCompositeCurveSegment): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_ReparametrisedCompositeCurveSegment.hxx".}