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
discard "forward decl of StepGeom_Surface"
type
  StepGeomPcurveOrSurface* {.importcpp: "StepGeom_PcurveOrSurface",
                            header: "StepGeom_PcurveOrSurface.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepGeomPcurveOrSurface; theSize: csize_t): pointer {.
    importcpp: "StepGeom_PcurveOrSurface::operator new",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc `delete`*(this: var StepGeomPcurveOrSurface; theAddress: pointer) {.
    importcpp: "StepGeom_PcurveOrSurface::operator delete",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc `new[]`*(this: var StepGeomPcurveOrSurface; theSize: csize_t): pointer {.
    importcpp: "StepGeom_PcurveOrSurface::operator new[]",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc `delete[]`*(this: var StepGeomPcurveOrSurface; theAddress: pointer) {.
    importcpp: "StepGeom_PcurveOrSurface::operator delete[]",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc `new`*(this: var StepGeomPcurveOrSurface; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepGeom_PcurveOrSurface::operator new",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc `delete`*(this: var StepGeomPcurveOrSurface; a2: pointer; a3: pointer) {.
    importcpp: "StepGeom_PcurveOrSurface::operator delete",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc constructStepGeomPcurveOrSurface*(): StepGeomPcurveOrSurface {.constructor,
    importcpp: "StepGeom_PcurveOrSurface(@)",
    header: "StepGeom_PcurveOrSurface.hxx".}
proc caseNum*(this: StepGeomPcurveOrSurface; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepGeom_PcurveOrSurface.hxx".}
proc pcurve*(this: StepGeomPcurveOrSurface): Handle[StepGeomPcurve] {.noSideEffect,
    importcpp: "Pcurve", header: "StepGeom_PcurveOrSurface.hxx".}
proc surface*(this: StepGeomPcurveOrSurface): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "Surface", header: "StepGeom_PcurveOrSurface.hxx".}