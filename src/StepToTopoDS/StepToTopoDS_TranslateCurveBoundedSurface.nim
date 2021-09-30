##  Created on: 1999-02-12
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

discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of TopoDS_Face"
type
  StepToTopoDS_TranslateCurveBoundedSurface* {.
      importcpp: "StepToTopoDS_TranslateCurveBoundedSurface",
      header: "StepToTopoDS_TranslateCurveBoundedSurface.hxx", bycopy.} = object of StepToTopoDS_Root ##
                                                                                               ## !
                                                                                               ## Create
                                                                                               ## empty
                                                                                               ## tool


proc constructStepToTopoDS_TranslateCurveBoundedSurface*(): StepToTopoDS_TranslateCurveBoundedSurface {.
    constructor, importcpp: "StepToTopoDS_TranslateCurveBoundedSurface(@)",
    header: "StepToTopoDS_TranslateCurveBoundedSurface.hxx".}
proc constructStepToTopoDS_TranslateCurveBoundedSurface*(
    cbs: Handle[StepGeomCurveBoundedSurface]; tp: Handle[TransferTransientProcess]): StepToTopoDS_TranslateCurveBoundedSurface {.
    constructor, importcpp: "StepToTopoDS_TranslateCurveBoundedSurface(@)",
    header: "StepToTopoDS_TranslateCurveBoundedSurface.hxx".}
proc init*(this: var StepToTopoDS_TranslateCurveBoundedSurface;
          cbs: Handle[StepGeomCurveBoundedSurface];
          tp: Handle[TransferTransientProcess]): bool {.importcpp: "Init",
    header: "StepToTopoDS_TranslateCurveBoundedSurface.hxx".}
proc value*(this: StepToTopoDS_TranslateCurveBoundedSurface): TopoDS_Face {.
    noSideEffect, importcpp: "Value",
    header: "StepToTopoDS_TranslateCurveBoundedSurface.hxx".}

























