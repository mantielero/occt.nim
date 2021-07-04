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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Surface

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_ElementarySurface"
discard "forward decl of StepGeom_ElementarySurface"
type
  Handle_StepGeom_ElementarySurface* = handle[StepGeom_ElementarySurface]
  StepGeom_ElementarySurface* {.importcpp: "StepGeom_ElementarySurface",
                               header: "StepGeom_ElementarySurface.hxx", bycopy.} = object of StepGeom_Surface ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## ElementarySurface


proc constructStepGeom_ElementarySurface*(): StepGeom_ElementarySurface {.
    constructor, importcpp: "StepGeom_ElementarySurface(@)",
    header: "StepGeom_ElementarySurface.hxx".}
proc Init*(this: var StepGeom_ElementarySurface;
          aName: handle[TCollection_HAsciiString];
          aPosition: handle[StepGeom_Axis2Placement3d]) {.importcpp: "Init",
    header: "StepGeom_ElementarySurface.hxx".}
proc SetPosition*(this: var StepGeom_ElementarySurface;
                 aPosition: handle[StepGeom_Axis2Placement3d]) {.
    importcpp: "SetPosition", header: "StepGeom_ElementarySurface.hxx".}
proc Position*(this: StepGeom_ElementarySurface): handle[StepGeom_Axis2Placement3d] {.
    noSideEffect, importcpp: "Position", header: "StepGeom_ElementarySurface.hxx".}
type
  StepGeom_ElementarySurfacebase_type* = StepGeom_Surface

proc get_type_name*(): cstring {.importcpp: "StepGeom_ElementarySurface::get_type_name(@)",
                              header: "StepGeom_ElementarySurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_ElementarySurface::get_type_descriptor(@)",
    header: "StepGeom_ElementarySurface.hxx".}
proc DynamicType*(this: StepGeom_ElementarySurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_ElementarySurface.hxx".}