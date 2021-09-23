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
  StepGeom_HArray1OfCartesianPoint, StepGeom_BoundedCurve,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Polyline"
discard "forward decl of StepGeom_Polyline"
type
  Handle_StepGeom_Polyline* = handle[StepGeom_Polyline]
  StepGeom_Polyline* {.importcpp: "StepGeom_Polyline",
                      header: "StepGeom_Polyline.hxx", bycopy.} = object of StepGeom_BoundedCurve ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## Polyline


proc constructStepGeom_Polyline*(): StepGeom_Polyline {.constructor,
    importcpp: "StepGeom_Polyline(@)", header: "StepGeom_Polyline.hxx".}
proc Init*(this: var StepGeom_Polyline; aName: handle[TCollection_HAsciiString];
          aPoints: handle[StepGeom_HArray1OfCartesianPoint]) {.importcpp: "Init",
    header: "StepGeom_Polyline.hxx".}
proc SetPoints*(this: var StepGeom_Polyline;
               aPoints: handle[StepGeom_HArray1OfCartesianPoint]) {.
    importcpp: "SetPoints", header: "StepGeom_Polyline.hxx".}
proc Points*(this: StepGeom_Polyline): handle[StepGeom_HArray1OfCartesianPoint] {.
    noSideEffect, importcpp: "Points", header: "StepGeom_Polyline.hxx".}
proc PointsValue*(this: StepGeom_Polyline; num: Standard_Integer): handle[
    StepGeom_CartesianPoint] {.noSideEffect, importcpp: "PointsValue",
                              header: "StepGeom_Polyline.hxx".}
proc NbPoints*(this: StepGeom_Polyline): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "StepGeom_Polyline.hxx".}
type
  StepGeom_Polylinebase_type* = StepGeom_BoundedCurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_Polyline::get_type_name(@)",
                              header: "StepGeom_Polyline.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Polyline::get_type_descriptor(@)",
    header: "StepGeom_Polyline.hxx".}
proc DynamicType*(this: StepGeom_Polyline): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Polyline.hxx".}