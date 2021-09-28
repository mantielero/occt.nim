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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Shell"
discard "forward decl of StepShape_ShellBasedSurfaceModel"
discard "forward decl of StepShape_ShellBasedSurfaceModel"
type
  HandleC1C1* = Handle[StepShapeShellBasedSurfaceModel]
  StepShapeShellBasedSurfaceModel* {.importcpp: "StepShape_ShellBasedSurfaceModel", header: "StepShape_ShellBasedSurfaceModel.hxx",
                                    bycopy.} = object of StepGeomGeometricRepresentationItem ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## ShellBasedSurfaceModel


proc constructStepShapeShellBasedSurfaceModel*(): StepShapeShellBasedSurfaceModel {.
    constructor, importcpp: "StepShape_ShellBasedSurfaceModel(@)",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc init*(this: var StepShapeShellBasedSurfaceModel;
          aName: Handle[TCollectionHAsciiString];
          aSbsmBoundary: Handle[StepShapeHArray1OfShell]) {.importcpp: "Init",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc setSbsmBoundary*(this: var StepShapeShellBasedSurfaceModel;
                     aSbsmBoundary: Handle[StepShapeHArray1OfShell]) {.
    importcpp: "SetSbsmBoundary", header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc sbsmBoundary*(this: StepShapeShellBasedSurfaceModel): Handle[
    StepShapeHArray1OfShell] {.noSideEffect, importcpp: "SbsmBoundary",
                              header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc sbsmBoundaryValue*(this: StepShapeShellBasedSurfaceModel; num: cint): StepShapeShell {.
    noSideEffect, importcpp: "SbsmBoundaryValue",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc nbSbsmBoundary*(this: StepShapeShellBasedSurfaceModel): cint {.noSideEffect,
    importcpp: "NbSbsmBoundary", header: "StepShape_ShellBasedSurfaceModel.hxx".}
type
  StepShapeShellBasedSurfaceModelbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_ShellBasedSurfaceModel::get_type_name(@)",
                            header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ShellBasedSurfaceModel::get_type_descriptor(@)",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc dynamicType*(this: StepShapeShellBasedSurfaceModel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}

























