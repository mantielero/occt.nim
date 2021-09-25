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

discard "forward decl of StepGeom_CompositeCurve"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of StepGeom_Surface"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Wire"
type
  StepToTopoDS_TranslateCompositeCurve* {.
      importcpp: "StepToTopoDS_TranslateCompositeCurve",
      header: "StepToTopoDS_TranslateCompositeCurve.hxx", bycopy.} = object of StepToTopoDS_Root ##
                                                                                          ## !
                                                                                          ## Empty
                                                                                          ## constructor


proc constructStepToTopoDS_TranslateCompositeCurve*(): StepToTopoDS_TranslateCompositeCurve {.
    constructor, importcpp: "StepToTopoDS_TranslateCompositeCurve(@)",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc constructStepToTopoDS_TranslateCompositeCurve*(
    cc: Handle[StepGeomCompositeCurve]; tp: Handle[TransferTransientProcess]): StepToTopoDS_TranslateCompositeCurve {.
    constructor, importcpp: "StepToTopoDS_TranslateCompositeCurve(@)",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc constructStepToTopoDS_TranslateCompositeCurve*(
    cc: Handle[StepGeomCompositeCurve]; tp: Handle[TransferTransientProcess];
    s: Handle[StepGeomSurface]; surf: Handle[GeomSurface]): StepToTopoDS_TranslateCompositeCurve {.
    constructor, importcpp: "StepToTopoDS_TranslateCompositeCurve(@)",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc init*(this: var StepToTopoDS_TranslateCompositeCurve;
          cc: Handle[StepGeomCompositeCurve]; tp: Handle[TransferTransientProcess]): bool {.
    importcpp: "Init", header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc init*(this: var StepToTopoDS_TranslateCompositeCurve;
          cc: Handle[StepGeomCompositeCurve];
          tp: Handle[TransferTransientProcess]; s: Handle[StepGeomSurface];
          surf: Handle[GeomSurface]): bool {.importcpp: "Init",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc value*(this: StepToTopoDS_TranslateCompositeCurve): TopoDS_Wire {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc isInfiniteSegment*(this: StepToTopoDS_TranslateCompositeCurve): bool {.
    noSideEffect, importcpp: "IsInfiniteSegment",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
