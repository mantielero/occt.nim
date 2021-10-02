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

discard "forward decl of Standard_Transient"
discard "forward decl of StepGeom_BoundaryCurve"
discard "forward decl of StepGeom_DegeneratePcurve"
type
  StepGeomSurfaceBoundary* {.importcpp: "StepGeom_SurfaceBoundary",
                            header: "StepGeom_SurfaceBoundary.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepGeomSurfaceBoundary; theSize: csize_t): pointer {.
    importcpp: "StepGeom_SurfaceBoundary::operator new",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc `delete`*(this: var StepGeomSurfaceBoundary; theAddress: pointer) {.
    importcpp: "StepGeom_SurfaceBoundary::operator delete",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc `new[]`*(this: var StepGeomSurfaceBoundary; theSize: csize_t): pointer {.
    importcpp: "StepGeom_SurfaceBoundary::operator new[]",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc `delete[]`*(this: var StepGeomSurfaceBoundary; theAddress: pointer) {.
    importcpp: "StepGeom_SurfaceBoundary::operator delete[]",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc `new`*(this: var StepGeomSurfaceBoundary; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepGeom_SurfaceBoundary::operator new",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc `delete`*(this: var StepGeomSurfaceBoundary; a2: pointer; a3: pointer) {.
    importcpp: "StepGeom_SurfaceBoundary::operator delete",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc constructStepGeomSurfaceBoundary*(): StepGeomSurfaceBoundary {.constructor,
    importcpp: "StepGeom_SurfaceBoundary(@)",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc caseNum*(this: StepGeomSurfaceBoundary; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_SurfaceBoundary.hxx".}
proc boundaryCurve*(this: StepGeomSurfaceBoundary): Handle[StepGeomBoundaryCurve] {.
    noSideEffect, importcpp: "BoundaryCurve",
    header: "StepGeom_SurfaceBoundary.hxx".}
proc degeneratePcurve*(this: StepGeomSurfaceBoundary): Handle[
    StepGeomDegeneratePcurve] {.noSideEffect, importcpp: "DegeneratePcurve",
                               header: "StepGeom_SurfaceBoundary.hxx".}