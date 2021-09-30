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

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_Pcurve"
discard "forward decl of StepGeom_SurfaceCurve"
discard "forward decl of StepGeom_CompositeCurveOnSurface"
type
  StepGeomCurveOnSurface* {.importcpp: "StepGeom_CurveOnSurface",
                           header: "StepGeom_CurveOnSurface.hxx", bycopy.} = object of StepDataSelectType ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## a
                                                                                                   ## CurveOnSurface
                                                                                                   ## SelectType


proc constructStepGeomCurveOnSurface*(): StepGeomCurveOnSurface {.constructor,
    importcpp: "StepGeom_CurveOnSurface(@)", header: "StepGeom_CurveOnSurface.hxx".}
proc caseNum*(this: StepGeomCurveOnSurface; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_CurveOnSurface.hxx".}
proc pcurve*(this: StepGeomCurveOnSurface): Handle[StepGeomPcurve] {.noSideEffect,
    importcpp: "Pcurve", header: "StepGeom_CurveOnSurface.hxx".}
proc surfaceCurve*(this: StepGeomCurveOnSurface): Handle[StepGeomSurfaceCurve] {.
    noSideEffect, importcpp: "SurfaceCurve", header: "StepGeom_CurveOnSurface.hxx".}
proc compositeCurveOnSurface*(this: StepGeomCurveOnSurface): Handle[
    StepGeomCompositeCurveOnSurface] {.noSideEffect,
                                      importcpp: "CompositeCurveOnSurface",
                                      header: "StepGeom_CurveOnSurface.hxx".}

























