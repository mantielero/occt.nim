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

discard "forward decl of StepGeom_Vector"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Curve"
discard "forward decl of StepGeom_SurfaceOfLinearExtrusion"
discard "forward decl of StepGeom_SurfaceOfLinearExtrusion"
type
  HandleC1C1* = Handle[StepGeomSurfaceOfLinearExtrusion]
  StepGeomSurfaceOfLinearExtrusion* {.importcpp: "StepGeom_SurfaceOfLinearExtrusion", header: "StepGeom_SurfaceOfLinearExtrusion.hxx",
                                     bycopy.} = object of StepGeomSweptSurface ## !
                                                                          ## Returns a
                                                                          ## SurfaceOfLinearExtrusion


proc constructStepGeomSurfaceOfLinearExtrusion*(): StepGeomSurfaceOfLinearExtrusion {.
    constructor, importcpp: "StepGeom_SurfaceOfLinearExtrusion(@)",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc init*(this: var StepGeomSurfaceOfLinearExtrusion;
          aName: Handle[TCollectionHAsciiString];
          aSweptCurve: Handle[StepGeomCurve];
          aExtrusionAxis: Handle[StepGeomVector]) {.importcpp: "Init",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc setExtrusionAxis*(this: var StepGeomSurfaceOfLinearExtrusion;
                      aExtrusionAxis: Handle[StepGeomVector]) {.
    importcpp: "SetExtrusionAxis", header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc extrusionAxis*(this: StepGeomSurfaceOfLinearExtrusion): Handle[StepGeomVector] {.
    noSideEffect, importcpp: "ExtrusionAxis",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
type
  StepGeomSurfaceOfLinearExtrusionbaseType* = StepGeomSweptSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_SurfaceOfLinearExtrusion::get_type_name(@)",
                            header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_SurfaceOfLinearExtrusion::get_type_descriptor(@)",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}
proc dynamicType*(this: StepGeomSurfaceOfLinearExtrusion): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_SurfaceOfLinearExtrusion.hxx".}

























