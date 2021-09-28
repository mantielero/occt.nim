##  Created on: 1997-04-28
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_CartesianTransformationOperator3d"
discard "forward decl of gp_Trsf"
discard "forward decl of TopoDS_Shape"
discard "forward decl of StepRepr_MappedItem"
discard "forward decl of Transfer_TransientProcess"
type
  StepToTopoDS_MakeTransformed* {.importcpp: "StepToTopoDS_MakeTransformed",
                                 header: "StepToTopoDS_MakeTransformed.hxx",
                                 bycopy.} = object of StepToTopoDS_Root


proc constructStepToTopoDS_MakeTransformed*(): StepToTopoDS_MakeTransformed {.
    constructor, importcpp: "StepToTopoDS_MakeTransformed(@)",
    header: "StepToTopoDS_MakeTransformed.hxx".}
proc compute*(this: var StepToTopoDS_MakeTransformed;
             origin: Handle[StepGeomAxis2Placement3d];
             target: Handle[StepGeomAxis2Placement3d]): bool {.
    importcpp: "Compute", header: "StepToTopoDS_MakeTransformed.hxx".}
proc compute*(this: var StepToTopoDS_MakeTransformed;
             operator: Handle[StepGeomCartesianTransformationOperator3d]): bool {.
    importcpp: "Compute", header: "StepToTopoDS_MakeTransformed.hxx".}
proc transformation*(this: StepToTopoDS_MakeTransformed): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "StepToTopoDS_MakeTransformed.hxx".}
proc transform*(this: StepToTopoDS_MakeTransformed; shape: var TopoDS_Shape): bool {.
    noSideEffect, importcpp: "Transform",
    header: "StepToTopoDS_MakeTransformed.hxx".}
proc translateMappedItem*(this: var StepToTopoDS_MakeTransformed;
                         mapit: Handle[StepReprMappedItem];
                         tp: Handle[TransferTransientProcess]; theProgress: MessageProgressRange = messageProgressRange()): TopoDS_Shape {.
    importcpp: "TranslateMappedItem", header: "StepToTopoDS_MakeTransformed.hxx".}

























