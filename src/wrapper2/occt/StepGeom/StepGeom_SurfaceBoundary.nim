##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepGeom_BoundaryCurve"
discard "forward decl of StepGeom_DegeneratePcurve"
type
  StepGeom_SurfaceBoundary* {.importcpp: "StepGeom_SurfaceBoundary",
                             header: "StepGeom_SurfaceBoundary.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepGeom_SurfaceBoundary*(): StepGeom_SurfaceBoundary {.constructor,
    importcpp: "StepGeom_SurfaceBoundary(@)",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc CaseNum*(this: StepGeom_SurfaceBoundary; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_SurfaceBoundary.hxx".}
proc BoundaryCurve*(this: StepGeom_SurfaceBoundary): handle[StepGeom_BoundaryCurve] {.
    noSideEffect, importcpp: "BoundaryCurve",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc DegeneratePcurve*(this: StepGeom_SurfaceBoundary): handle[
    StepGeom_DegeneratePcurve] {.noSideEffect, importcpp: "DegeneratePcurve",
                                header: "StepGeom_SurfaceBoundary.hxx".}