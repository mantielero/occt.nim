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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_DegenerateToroidalSurface"
discard "forward decl of StepGeom_DegenerateToroidalSurface"
type
  HandleC1C1* = Handle[StepGeomDegenerateToroidalSurface]
  StepGeomDegenerateToroidalSurface* {.importcpp: "StepGeom_DegenerateToroidalSurface", header: "StepGeom_DegenerateToroidalSurface.hxx",
                                      bycopy.} = object of StepGeomToroidalSurface ## !
                                                                              ## Returns a
                                                                              ## DegenerateToroidalSurface


proc constructStepGeomDegenerateToroidalSurface*(): StepGeomDegenerateToroidalSurface {.
    constructor, importcpp: "StepGeom_DegenerateToroidalSurface(@)",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc init*(this: var StepGeomDegenerateToroidalSurface;
          aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis2Placement3d]; aMajorRadius: cfloat;
          aMinorRadius: cfloat; aSelectOuter: bool) {.importcpp: "Init",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc setSelectOuter*(this: var StepGeomDegenerateToroidalSurface; aSelectOuter: bool) {.
    importcpp: "SetSelectOuter", header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc selectOuter*(this: StepGeomDegenerateToroidalSurface): bool {.noSideEffect,
    importcpp: "SelectOuter", header: "StepGeom_DegenerateToroidalSurface.hxx".}
type
  StepGeomDegenerateToroidalSurfacebaseType* = StepGeomToroidalSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_DegenerateToroidalSurface::get_type_name(@)",
                            header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_DegenerateToroidalSurface::get_type_descriptor(@)",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc dynamicType*(this: StepGeomDegenerateToroidalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}

























