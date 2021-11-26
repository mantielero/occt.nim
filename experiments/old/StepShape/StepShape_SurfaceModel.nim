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
discard "forward decl of StepShape_ShellBasedSurfaceModel"
type
  StepShapeSurfaceModel* {.importcpp: "StepShape_SurfaceModel",
                          header: "StepShape_SurfaceModel.hxx", bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepShapeSurfaceModel; theSize: csize_t): pointer {.
    importcpp: "StepShape_SurfaceModel::operator new",
    header: "StepShape_SurfaceModel.hxx".}
proc `delete`*(this: var StepShapeSurfaceModel; theAddress: pointer) {.
    importcpp: "StepShape_SurfaceModel::operator delete",
    header: "StepShape_SurfaceModel.hxx".}
proc `new[]`*(this: var StepShapeSurfaceModel; theSize: csize_t): pointer {.
    importcpp: "StepShape_SurfaceModel::operator new[]",
    header: "StepShape_SurfaceModel.hxx".}
proc `delete[]`*(this: var StepShapeSurfaceModel; theAddress: pointer) {.
    importcpp: "StepShape_SurfaceModel::operator delete[]",
    header: "StepShape_SurfaceModel.hxx".}
proc `new`*(this: var StepShapeSurfaceModel; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepShape_SurfaceModel::operator new",
    header: "StepShape_SurfaceModel.hxx".}
proc `delete`*(this: var StepShapeSurfaceModel; a2: pointer; a3: pointer) {.
    importcpp: "StepShape_SurfaceModel::operator delete",
    header: "StepShape_SurfaceModel.hxx".}
proc constructStepShapeSurfaceModel*(): StepShapeSurfaceModel {.constructor,
    importcpp: "StepShape_SurfaceModel(@)", header: "StepShape_SurfaceModel.hxx".}
proc caseNum*(this: StepShapeSurfaceModel; ent: Handle[StandardTransient]): int {.
    noSideEffect, importcpp: "CaseNum", header: "StepShape_SurfaceModel.hxx".}
proc shellBasedSurfaceModel*(this: StepShapeSurfaceModel): Handle[
    StepShapeShellBasedSurfaceModel] {.noSideEffect,
                                      importcpp: "ShellBasedSurfaceModel",
                                      header: "StepShape_SurfaceModel.hxx".}