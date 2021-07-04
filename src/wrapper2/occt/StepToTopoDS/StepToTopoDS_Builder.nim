##  Created on: 1994-12-16
##  Created by: Frederic MAUPAS
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, StepToTopoDS_BuilderError, ../TopoDS/TopoDS_Shape,
  StepToTopoDS_Root, ../Standard/Standard_Boolean,
  ../Message/Message_ProgressRange

discard "forward decl of StdFail_NotDone"
discard "forward decl of StepShape_ManifoldSolidBrep"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of StepShape_BrepWithVoids"
discard "forward decl of StepShape_FacetedBrep"
discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
discard "forward decl of StepShape_ShellBasedSurfaceModel"
discard "forward decl of StepToTopoDS_NMTool"
discard "forward decl of StepShape_GeometricSet"
discard "forward decl of StepShape_EdgeBasedWireframeModel"
discard "forward decl of StepShape_FaceBasedSurfaceModel"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of TopoDS_Shape"
type
  StepToTopoDS_Builder* {.importcpp: "StepToTopoDS_Builder",
                         header: "StepToTopoDS_Builder.hxx", bycopy.} = object of StepToTopoDS_Root


proc constructStepToTopoDS_Builder*(): StepToTopoDS_Builder {.constructor,
    importcpp: "StepToTopoDS_Builder(@)", header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder; S: handle[StepShape_ManifoldSolidBrep];
          TP: handle[Transfer_TransientProcess];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Init", header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder; S: handle[StepShape_BrepWithVoids];
          TP: handle[Transfer_TransientProcess];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Init", header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder; S: handle[StepShape_FacetedBrep];
          TP: handle[Transfer_TransientProcess];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Init", header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder;
          S: handle[StepShape_FacetedBrepAndBrepWithVoids];
          TP: handle[Transfer_TransientProcess];
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Init", header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder;
          S: handle[StepShape_ShellBasedSurfaceModel];
          TP: handle[Transfer_TransientProcess]; NMTool: var StepToTopoDS_NMTool;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Init", header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder;
          S: handle[StepShape_EdgeBasedWireframeModel];
          TP: handle[Transfer_TransientProcess]) {.importcpp: "Init",
    header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder;
          S: handle[StepShape_FaceBasedSurfaceModel];
          TP: handle[Transfer_TransientProcess]) {.importcpp: "Init",
    header: "StepToTopoDS_Builder.hxx".}
proc Init*(this: var StepToTopoDS_Builder; S: handle[StepShape_GeometricSet];
          TP: handle[Transfer_TransientProcess];
          RA: handle[Transfer_ActorOfTransientProcess] = nil;
          isManifold: Standard_Boolean = Standard_False;
          theProgress: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Init", header: "StepToTopoDS_Builder.hxx".}
proc Value*(this: StepToTopoDS_Builder): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_Builder.hxx".}
proc Error*(this: StepToTopoDS_Builder): StepToTopoDS_BuilderError {.noSideEffect,
    importcpp: "Error", header: "StepToTopoDS_Builder.hxx".}