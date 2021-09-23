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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepGeom_ToroidalSurface, ../Standard/Standard_Real

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_DegenerateToroidalSurface"
discard "forward decl of StepGeom_DegenerateToroidalSurface"
type
  Handle_StepGeom_DegenerateToroidalSurface* = handle[
      StepGeom_DegenerateToroidalSurface]
  StepGeom_DegenerateToroidalSurface* {.importcpp: "StepGeom_DegenerateToroidalSurface", header: "StepGeom_DegenerateToroidalSurface.hxx",
                                       bycopy.} = object of StepGeom_ToroidalSurface ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## DegenerateToroidalSurface


proc constructStepGeom_DegenerateToroidalSurface*(): StepGeom_DegenerateToroidalSurface {.
    constructor, importcpp: "StepGeom_DegenerateToroidalSurface(@)",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc Init*(this: var StepGeom_DegenerateToroidalSurface;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis2Placement3d];
          aMajorRadius: Standard_Real; aMinorRadius: Standard_Real;
          aSelectOuter: Standard_Boolean) {.importcpp: "Init",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc SetSelectOuter*(this: var StepGeom_DegenerateToroidalSurface;
                    aSelectOuter: Standard_Boolean) {.importcpp: "SetSelectOuter",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc SelectOuter*(this: StepGeom_DegenerateToroidalSurface): Standard_Boolean {.
    noSideEffect, importcpp: "SelectOuter",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
type
  StepGeom_DegenerateToroidalSurfacebase_type* = StepGeom_ToroidalSurface

proc get_type_name*(): cstring {.importcpp: "StepGeom_DegenerateToroidalSurface::get_type_name(@)",
                              header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_DegenerateToroidalSurface::get_type_descriptor(@)",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}
proc DynamicType*(this: StepGeom_DegenerateToroidalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_DegenerateToroidalSurface.hxx".}