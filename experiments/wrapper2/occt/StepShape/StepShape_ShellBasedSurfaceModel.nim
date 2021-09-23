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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_HArray1OfShell,
  ../StepGeom/StepGeom_GeometricRepresentationItem, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Shell"
discard "forward decl of StepShape_ShellBasedSurfaceModel"
discard "forward decl of StepShape_ShellBasedSurfaceModel"
type
  Handle_StepShape_ShellBasedSurfaceModel* = handle[
      StepShape_ShellBasedSurfaceModel]
  StepShape_ShellBasedSurfaceModel* {.importcpp: "StepShape_ShellBasedSurfaceModel", header: "StepShape_ShellBasedSurfaceModel.hxx",
                                     bycopy.} = object of StepGeom_GeometricRepresentationItem ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## ShellBasedSurfaceModel


proc constructStepShape_ShellBasedSurfaceModel*(): StepShape_ShellBasedSurfaceModel {.
    constructor, importcpp: "StepShape_ShellBasedSurfaceModel(@)",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc Init*(this: var StepShape_ShellBasedSurfaceModel;
          aName: handle[TCollection_HAsciiString];
          aSbsmBoundary: handle[StepShape_HArray1OfShell]) {.importcpp: "Init",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc SetSbsmBoundary*(this: var StepShape_ShellBasedSurfaceModel;
                     aSbsmBoundary: handle[StepShape_HArray1OfShell]) {.
    importcpp: "SetSbsmBoundary", header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc SbsmBoundary*(this: StepShape_ShellBasedSurfaceModel): handle[
    StepShape_HArray1OfShell] {.noSideEffect, importcpp: "SbsmBoundary",
                               header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc SbsmBoundaryValue*(this: StepShape_ShellBasedSurfaceModel;
                       num: Standard_Integer): StepShape_Shell {.noSideEffect,
    importcpp: "SbsmBoundaryValue", header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc NbSbsmBoundary*(this: StepShape_ShellBasedSurfaceModel): Standard_Integer {.
    noSideEffect, importcpp: "NbSbsmBoundary",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
type
  StepShape_ShellBasedSurfaceModelbase_type* = StepGeom_GeometricRepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepShape_ShellBasedSurfaceModel::get_type_name(@)",
                              header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ShellBasedSurfaceModel::get_type_descriptor(@)",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}
proc DynamicType*(this: StepShape_ShellBasedSurfaceModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ShellBasedSurfaceModel.hxx".}