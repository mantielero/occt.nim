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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_TransitionCode,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient

discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_CompositeCurveSegment"
discard "forward decl of StepGeom_CompositeCurveSegment"
type
  Handle_StepGeom_CompositeCurveSegment* = handle[StepGeom_CompositeCurveSegment]
  StepGeom_CompositeCurveSegment* {.importcpp: "StepGeom_CompositeCurveSegment", header: "StepGeom_CompositeCurveSegment.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Returns a
                                                                      ## CompositeCurveSegment


proc constructStepGeom_CompositeCurveSegment*(): StepGeom_CompositeCurveSegment {.
    constructor, importcpp: "StepGeom_CompositeCurveSegment(@)",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc Init*(this: var StepGeom_CompositeCurveSegment;
          aTransition: StepGeom_TransitionCode; aSameSense: Standard_Boolean;
          aParentCurve: handle[StepGeom_Curve]) {.importcpp: "Init",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc SetTransition*(this: var StepGeom_CompositeCurveSegment;
                   aTransition: StepGeom_TransitionCode) {.
    importcpp: "SetTransition", header: "StepGeom_CompositeCurveSegment.hxx".}
proc Transition*(this: StepGeom_CompositeCurveSegment): StepGeom_TransitionCode {.
    noSideEffect, importcpp: "Transition",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc SetSameSense*(this: var StepGeom_CompositeCurveSegment;
                  aSameSense: Standard_Boolean) {.importcpp: "SetSameSense",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc SameSense*(this: StepGeom_CompositeCurveSegment): Standard_Boolean {.
    noSideEffect, importcpp: "SameSense",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc SetParentCurve*(this: var StepGeom_CompositeCurveSegment;
                    aParentCurve: handle[StepGeom_Curve]) {.
    importcpp: "SetParentCurve", header: "StepGeom_CompositeCurveSegment.hxx".}
proc ParentCurve*(this: StepGeom_CompositeCurveSegment): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "ParentCurve",
    header: "StepGeom_CompositeCurveSegment.hxx".}
type
  StepGeom_CompositeCurveSegmentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepGeom_CompositeCurveSegment::get_type_name(@)",
                              header: "StepGeom_CompositeCurveSegment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_CompositeCurveSegment::get_type_descriptor(@)",
    header: "StepGeom_CompositeCurveSegment.hxx".}
proc DynamicType*(this: StepGeom_CompositeCurveSegment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_CompositeCurveSegment.hxx".}