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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepGeom_HArray1OfCompositeCurveSegment, ../StepData/StepData_Logical,
  StepGeom_BoundedCurve, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CompositeCurveSegment"
discard "forward decl of StepGeom_CompositeCurve"
discard "forward decl of StepGeom_CompositeCurve"
type
  Handle_StepGeom_CompositeCurve* = handle[StepGeom_CompositeCurve]
  StepGeom_CompositeCurve* {.importcpp: "StepGeom_CompositeCurve",
                            header: "StepGeom_CompositeCurve.hxx", bycopy.} = object of StepGeom_BoundedCurve ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## CompositeCurve


proc constructStepGeom_CompositeCurve*(): StepGeom_CompositeCurve {.constructor,
    importcpp: "StepGeom_CompositeCurve(@)", header: "StepGeom_CompositeCurve.hxx".}
proc Init*(this: var StepGeom_CompositeCurve;
          aName: handle[TCollection_HAsciiString];
          aSegments: handle[StepGeom_HArray1OfCompositeCurveSegment];
          aSelfIntersect: StepData_Logical) {.importcpp: "Init",
    header: "StepGeom_CompositeCurve.hxx".}
proc SetSegments*(this: var StepGeom_CompositeCurve;
                 aSegments: handle[StepGeom_HArray1OfCompositeCurveSegment]) {.
    importcpp: "SetSegments", header: "StepGeom_CompositeCurve.hxx".}
proc Segments*(this: StepGeom_CompositeCurve): handle[
    StepGeom_HArray1OfCompositeCurveSegment] {.noSideEffect,
    importcpp: "Segments", header: "StepGeom_CompositeCurve.hxx".}
proc SegmentsValue*(this: StepGeom_CompositeCurve; num: Standard_Integer): handle[
    StepGeom_CompositeCurveSegment] {.noSideEffect, importcpp: "SegmentsValue",
                                     header: "StepGeom_CompositeCurve.hxx".}
proc NbSegments*(this: StepGeom_CompositeCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "StepGeom_CompositeCurve.hxx".}
proc SetSelfIntersect*(this: var StepGeom_CompositeCurve;
                      aSelfIntersect: StepData_Logical) {.
    importcpp: "SetSelfIntersect", header: "StepGeom_CompositeCurve.hxx".}
proc SelfIntersect*(this: StepGeom_CompositeCurve): StepData_Logical {.noSideEffect,
    importcpp: "SelfIntersect", header: "StepGeom_CompositeCurve.hxx".}
type
  StepGeom_CompositeCurvebase_type* = StepGeom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_CompositeCurve::get_type_name(@)",
                              header: "StepGeom_CompositeCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_CompositeCurve::get_type_descriptor(@)",
    header: "StepGeom_CompositeCurve.hxx".}
proc DynamicType*(this: StepGeom_CompositeCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_CompositeCurve.hxx".}