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
  ../StepGeom/StepGeom_HArray1OfCartesianPoint, StepShape_Loop,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepShape_PolyLoop"
discard "forward decl of StepShape_PolyLoop"
type
  Handle_StepShape_PolyLoop* = handle[StepShape_PolyLoop]
  StepShape_PolyLoop* {.importcpp: "StepShape_PolyLoop",
                       header: "StepShape_PolyLoop.hxx", bycopy.} = object of StepShape_Loop ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## PolyLoop


proc constructStepShape_PolyLoop*(): StepShape_PolyLoop {.constructor,
    importcpp: "StepShape_PolyLoop(@)", header: "StepShape_PolyLoop.hxx".}
proc Init*(this: var StepShape_PolyLoop; aName: handle[TCollection_HAsciiString];
          aPolygon: handle[StepGeom_HArray1OfCartesianPoint]) {.importcpp: "Init",
    header: "StepShape_PolyLoop.hxx".}
proc SetPolygon*(this: var StepShape_PolyLoop;
                aPolygon: handle[StepGeom_HArray1OfCartesianPoint]) {.
    importcpp: "SetPolygon", header: "StepShape_PolyLoop.hxx".}
proc Polygon*(this: StepShape_PolyLoop): handle[StepGeom_HArray1OfCartesianPoint] {.
    noSideEffect, importcpp: "Polygon", header: "StepShape_PolyLoop.hxx".}
proc PolygonValue*(this: StepShape_PolyLoop; num: Standard_Integer): handle[
    StepGeom_CartesianPoint] {.noSideEffect, importcpp: "PolygonValue",
                              header: "StepShape_PolyLoop.hxx".}
proc NbPolygon*(this: StepShape_PolyLoop): Standard_Integer {.noSideEffect,
    importcpp: "NbPolygon", header: "StepShape_PolyLoop.hxx".}
type
  StepShape_PolyLoopbase_type* = StepShape_Loop

proc get_type_name*(): cstring {.importcpp: "StepShape_PolyLoop::get_type_name(@)",
                              header: "StepShape_PolyLoop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_PolyLoop::get_type_descriptor(@)",
    header: "StepShape_PolyLoop.hxx".}
proc DynamicType*(this: StepShape_PolyLoop): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_PolyLoop.hxx".}