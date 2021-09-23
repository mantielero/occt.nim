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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Pcurve"
discard "forward decl of StepGeom_SurfaceCurve"
discard "forward decl of StepGeom_CompositeCurveOnSurface"
type
  StepGeom_CurveOnSurface* {.importcpp: "StepGeom_CurveOnSurface",
                            header: "StepGeom_CurveOnSurface.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## CurveOnSurface
                                                                                                     ## SelectType


proc constructStepGeom_CurveOnSurface*(): StepGeom_CurveOnSurface {.constructor,
    importcpp: "StepGeom_CurveOnSurface(@)", header: "StepGeom_CurveOnSurface.hxx".}
proc CaseNum*(this: StepGeom_CurveOnSurface; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_CurveOnSurface.hxx".}
proc Pcurve*(this: StepGeom_CurveOnSurface): handle[StepGeom_Pcurve] {.noSideEffect,
    importcpp: "Pcurve", header: "StepGeom_CurveOnSurface.hxx".}
proc SurfaceCurve*(this: StepGeom_CurveOnSurface): handle[StepGeom_SurfaceCurve] {.
    noSideEffect, importcpp: "SurfaceCurve", header: "StepGeom_CurveOnSurface.hxx".}
proc CompositeCurveOnSurface*(this: StepGeom_CurveOnSurface): handle[
    StepGeom_CompositeCurveOnSurface] {.noSideEffect,
                                       importcpp: "CompositeCurveOnSurface",
                                       header: "StepGeom_CurveOnSurface.hxx".}