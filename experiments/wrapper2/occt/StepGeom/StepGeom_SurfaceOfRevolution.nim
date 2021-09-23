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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_SweptSurface

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_SurfaceOfRevolution"
discard "forward decl of StepGeom_SurfaceOfRevolution"
type
  Handle_StepGeom_SurfaceOfRevolution* = handle[StepGeom_SurfaceOfRevolution]
  StepGeom_SurfaceOfRevolution* {.importcpp: "StepGeom_SurfaceOfRevolution",
                                 header: "StepGeom_SurfaceOfRevolution.hxx",
                                 bycopy.} = object of StepGeom_SweptSurface ## ! Returns a
                                                                       ## SurfaceOfRevolution


proc constructStepGeom_SurfaceOfRevolution*(): StepGeom_SurfaceOfRevolution {.
    constructor, importcpp: "StepGeom_SurfaceOfRevolution(@)",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
proc Init*(this: var StepGeom_SurfaceOfRevolution;
          aName: handle[TCollection_HAsciiString];
          aSweptCurve: handle[StepGeom_Curve];
          aAxisPosition: handle[StepGeom_Axis1Placement]) {.importcpp: "Init",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
proc SetAxisPosition*(this: var StepGeom_SurfaceOfRevolution;
                     aAxisPosition: handle[StepGeom_Axis1Placement]) {.
    importcpp: "SetAxisPosition", header: "StepGeom_SurfaceOfRevolution.hxx".}
proc AxisPosition*(this: StepGeom_SurfaceOfRevolution): handle[
    StepGeom_Axis1Placement] {.noSideEffect, importcpp: "AxisPosition",
                              header: "StepGeom_SurfaceOfRevolution.hxx".}
type
  StepGeom_SurfaceOfRevolutionbase_type* = StepGeom_SweptSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_SurfaceOfRevolution::get_type_name(@)",
                              header: "StepGeom_SurfaceOfRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "StepGeom_SurfaceOfRevolution.hxx".}
proc DynamicType*(this: StepGeom_SurfaceOfRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_SurfaceOfRevolution.hxx".}