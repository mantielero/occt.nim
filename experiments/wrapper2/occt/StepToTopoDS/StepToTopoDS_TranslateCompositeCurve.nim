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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Wire,
  ../Standard/Standard_Boolean, StepToTopoDS_Root

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
    CC: handle[StepGeom_CompositeCurve]; TP: handle[Transfer_TransientProcess]): StepToTopoDS_TranslateCompositeCurve {.
    constructor, importcpp: "StepToTopoDS_TranslateCompositeCurve(@)",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc constructStepToTopoDS_TranslateCompositeCurve*(
    CC: handle[StepGeom_CompositeCurve]; TP: handle[Transfer_TransientProcess];
    S: handle[StepGeom_Surface]; Surf: handle[Geom_Surface]): StepToTopoDS_TranslateCompositeCurve {.
    constructor, importcpp: "StepToTopoDS_TranslateCompositeCurve(@)",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc Init*(this: var StepToTopoDS_TranslateCompositeCurve;
          CC: handle[StepGeom_CompositeCurve];
          TP: handle[Transfer_TransientProcess]): Standard_Boolean {.
    importcpp: "Init", header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc Init*(this: var StepToTopoDS_TranslateCompositeCurve;
          CC: handle[StepGeom_CompositeCurve];
          TP: handle[Transfer_TransientProcess]; S: handle[StepGeom_Surface];
          Surf: handle[Geom_Surface]): Standard_Boolean {.importcpp: "Init",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc Value*(this: StepToTopoDS_TranslateCompositeCurve): TopoDS_Wire {.noSideEffect,
    importcpp: "Value", header: "StepToTopoDS_TranslateCompositeCurve.hxx".}
proc IsInfiniteSegment*(this: StepToTopoDS_TranslateCompositeCurve): Standard_Boolean {.
    noSideEffect, importcpp: "IsInfiniteSegment",
    header: "StepToTopoDS_TranslateCompositeCurve.hxx".}