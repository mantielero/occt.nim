##  Created on: 1999-02-11
##  Created by: Pavel DURANDIN
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_MapOfTransient

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of StepGeom_CompositeCurve"
type
  STEPSelections_Counter* {.importcpp: "STEPSelections_Counter",
                           header: "STEPSelections_Counter.hxx", bycopy.} = object


proc constructSTEPSelections_Counter*(): STEPSelections_Counter {.constructor,
    importcpp: "STEPSelections_Counter(@)", header: "STEPSelections_Counter.hxx".}
proc Count*(this: var STEPSelections_Counter; graph: Interface_Graph;
           start: handle[Standard_Transient]) {.importcpp: "Count",
    header: "STEPSelections_Counter.hxx".}
proc Clear*(this: var STEPSelections_Counter) {.importcpp: "Clear",
    header: "STEPSelections_Counter.hxx".}
proc NbInstancesOfFaces*(this: STEPSelections_Counter): Standard_Integer {.
    noSideEffect, importcpp: "NbInstancesOfFaces",
    header: "STEPSelections_Counter.hxx".}
proc POP*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "POP", header: "STEPSelections_Counter.hxx".}
proc POP2*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "POP2", header: "STEPSelections_Counter.hxx".}
proc NbInstancesOfShells*(this: STEPSelections_Counter): Standard_Integer {.
    noSideEffect, importcpp: "NbInstancesOfShells",
    header: "STEPSelections_Counter.hxx".}
proc NbInstancesOfSolids*(this: STEPSelections_Counter): Standard_Integer {.
    noSideEffect, importcpp: "NbInstancesOfSolids",
    header: "STEPSelections_Counter.hxx".}
proc NbInstancesOfEdges*(this: STEPSelections_Counter): Standard_Integer {.
    noSideEffect, importcpp: "NbInstancesOfEdges",
    header: "STEPSelections_Counter.hxx".}
proc NbInstancesOfWires*(this: STEPSelections_Counter): Standard_Integer {.
    noSideEffect, importcpp: "NbInstancesOfWires",
    header: "STEPSelections_Counter.hxx".}
proc NbSourceFaces*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "NbSourceFaces", header: "STEPSelections_Counter.hxx".}
proc NbSourceShells*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "NbSourceShells", header: "STEPSelections_Counter.hxx".}
proc NbSourceSolids*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "NbSourceSolids", header: "STEPSelections_Counter.hxx".}
proc NbSourceEdges*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "NbSourceEdges", header: "STEPSelections_Counter.hxx".}
proc NbSourceWires*(this: STEPSelections_Counter): Standard_Integer {.noSideEffect,
    importcpp: "NbSourceWires", header: "STEPSelections_Counter.hxx".}