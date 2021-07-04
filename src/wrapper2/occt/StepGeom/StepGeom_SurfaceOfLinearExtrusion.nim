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

discard "forward decl of StepGeom_Vector"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_SurfaceOfLinearExtrusion"
discard "forward decl of StepGeom_SurfaceOfLinearExtrusion"
type
  Handle_StepGeom_SurfaceOfLinearExtrusion* = handle[
      StepGeom_SurfaceOfLinearExtrusion]
  StepGeom_SurfaceOfLinearExtrusion* {.importcpp: "StepGeom_SurfaceOfLinearExtrusion", header: "StepGeom_SurfaceOfLinearExtrusion.hxx",
                                      bycopy.} = object of StepGeom_SweptSurface ## !
                                                                            ## Returns a
                                                                            ## SurfaceOfLinearExtrusion


proc constructStepGeom_SurfaceOfLinearExtrusion*(): StepGeom_SurfaceOfLinearExtrusion {.
    constructor, importcpp: "StepGeom_SurfaceOfLinearExtrusion(@)",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc Init*(this: var StepGeom_SurfaceOfLinearExtrusion;
          aName: handle[TCollection_HAsciiString];
          aSweptCurve: handle[StepGeom_Curve];
          aExtrusionAxis: handle[StepGeom_Vector]) {.importcpp: "Init",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc SetExtrusionAxis*(this: var StepGeom_SurfaceOfLinearExtrusion;
                      aExtrusionAxis: handle[StepGeom_Vector]) {.
    importcpp: "SetExtrusionAxis", header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc ExtrusionAxis*(this: StepGeom_SurfaceOfLinearExtrusion): handle[
    StepGeom_Vector] {.noSideEffect, importcpp: "ExtrusionAxis",
                      header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
type
  StepGeom_SurfaceOfLinearExtrusionbase_type* = StepGeom_SweptSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_SurfaceOfLinearExtrusion::get_type_name(@)",
                              header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SurfaceOfLinearExtrusion::get_type_descriptor(@)",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc DynamicType*(this: StepGeom_SurfaceOfLinearExtrusion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}