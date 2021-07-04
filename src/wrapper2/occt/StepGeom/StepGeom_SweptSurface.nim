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

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_SweptSurface"
discard "forward decl of StepGeom_SweptSurface"
type
  Handle_StepGeom_SweptSurface* = handle[StepGeom_SweptSurface]
  StepGeom_SweptSurface* {.importcpp: "StepGeom_SweptSurface",
                          header: "StepGeom_SweptSurface.hxx", bycopy.} = object of StepGeom_Surface ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SweptSurface


proc constructStepGeom_SweptSurface*(): StepGeom_SweptSurface {.constructor,
    importcpp: "StepGeom_SweptSurface(@)", header: "StepGeom_SweptSurface.hxx".}
proc Init*(this: var StepGeom_SweptSurface; aName: handle[TCollection_HAsciiString];
          aSweptCurve: handle[StepGeom_Curve]) {.importcpp: "Init",
    header: "StepGeom_SweptSurface.hxx".}
proc SetSweptCurve*(this: var StepGeom_SweptSurface;
                   aSweptCurve: handle[StepGeom_Curve]) {.
    importcpp: "SetSweptCurve", header: "StepGeom_SweptSurface.hxx".}
proc SweptCurve*(this: StepGeom_SweptSurface): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "SweptCurve", header: "StepGeom_SweptSurface.hxx".}
type
  StepGeom_SweptSurfacebase_type* = StepGeom_Surface

proc get_type_name*(): cstring {.importcpp: "StepGeom_SweptSurface::get_type_name(@)",
                              header: "StepGeom_SweptSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_SweptSurface::get_type_descriptor(@)",
    header: "StepGeom_SweptSurface.hxx".}
proc DynamicType*(this: StepGeom_SweptSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_SweptSurface.hxx".}