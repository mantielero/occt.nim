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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepGeom_Point

discard "forward decl of StepGeom_Surface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_PointOnSurface"
discard "forward decl of StepGeom_PointOnSurface"
type
  Handle_StepGeom_PointOnSurface* = handle[StepGeom_PointOnSurface]
  StepGeom_PointOnSurface* {.importcpp: "StepGeom_PointOnSurface",
                            header: "StepGeom_PointOnSurface.hxx", bycopy.} = object of StepGeom_Point ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## PointOnSurface


proc constructStepGeom_PointOnSurface*(): StepGeom_PointOnSurface {.constructor,
    importcpp: "StepGeom_PointOnSurface(@)", header: "StepGeom_PointOnSurface.hxx".}
proc Init*(this: var StepGeom_PointOnSurface;
          aName: handle[TCollection_HAsciiString];
          aBasisSurface: handle[StepGeom_Surface];
          aPointParameterU: Standard_Real; aPointParameterV: Standard_Real) {.
    importcpp: "Init", header: "StepGeom_PointOnSurface.hxx".}
proc SetBasisSurface*(this: var StepGeom_PointOnSurface;
                     aBasisSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_PointOnSurface.hxx".}
proc BasisSurface*(this: StepGeom_PointOnSurface): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "BasisSurface", header: "StepGeom_PointOnSurface.hxx".}
proc SetPointParameterU*(this: var StepGeom_PointOnSurface;
                        aPointParameterU: Standard_Real) {.
    importcpp: "SetPointParameterU", header: "StepGeom_PointOnSurface.hxx".}
proc PointParameterU*(this: StepGeom_PointOnSurface): Standard_Real {.noSideEffect,
    importcpp: "PointParameterU", header: "StepGeom_PointOnSurface.hxx".}
proc SetPointParameterV*(this: var StepGeom_PointOnSurface;
                        aPointParameterV: Standard_Real) {.
    importcpp: "SetPointParameterV", header: "StepGeom_PointOnSurface.hxx".}
proc PointParameterV*(this: StepGeom_PointOnSurface): Standard_Real {.noSideEffect,
    importcpp: "PointParameterV", header: "StepGeom_PointOnSurface.hxx".}
type
  StepGeom_PointOnSurfacebase_type* = StepGeom_Point

proc get_type_name*(): cstring {.importcpp: "StepGeom_PointOnSurface::get_type_name(@)",
                              header: "StepGeom_PointOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_PointOnSurface::get_type_descriptor(@)",
    header: "StepGeom_PointOnSurface.hxx".}
proc DynamicType*(this: StepGeom_PointOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_PointOnSurface.hxx".}