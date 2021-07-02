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

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_ConnectedFaceSet"
discard "forward decl of StepGeom_CompositeCurve"
type
  STEPSelectionsCounter* {.importcpp: "STEPSelections_Counter",
                          header: "STEPSelections_Counter.hxx", bycopy.} = object


proc constructSTEPSelectionsCounter*(): STEPSelectionsCounter {.constructor,
    importcpp: "STEPSelections_Counter(@)", header: "STEPSelections_Counter.hxx".}
proc count*(this: var STEPSelectionsCounter; graph: InterfaceGraph;
           start: Handle[StandardTransient]) {.importcpp: "Count",
    header: "STEPSelections_Counter.hxx".}
proc clear*(this: var STEPSelectionsCounter) {.importcpp: "Clear",
    header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfFaces*(this: STEPSelectionsCounter): StandardInteger {.
    noSideEffect, importcpp: "NbInstancesOfFaces",
    header: "STEPSelections_Counter.hxx".}
proc pop*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "POP", header: "STEPSelections_Counter.hxx".}
proc pop2*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "POP2", header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfShells*(this: STEPSelectionsCounter): StandardInteger {.
    noSideEffect, importcpp: "NbInstancesOfShells",
    header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfSolids*(this: STEPSelectionsCounter): StandardInteger {.
    noSideEffect, importcpp: "NbInstancesOfSolids",
    header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfEdges*(this: STEPSelectionsCounter): StandardInteger {.
    noSideEffect, importcpp: "NbInstancesOfEdges",
    header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfWires*(this: STEPSelectionsCounter): StandardInteger {.
    noSideEffect, importcpp: "NbInstancesOfWires",
    header: "STEPSelections_Counter.hxx".}
proc nbSourceFaces*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "NbSourceFaces", header: "STEPSelections_Counter.hxx".}
proc nbSourceShells*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "NbSourceShells", header: "STEPSelections_Counter.hxx".}
proc nbSourceSolids*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "NbSourceSolids", header: "STEPSelections_Counter.hxx".}
proc nbSourceEdges*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "NbSourceEdges", header: "STEPSelections_Counter.hxx".}
proc nbSourceWires*(this: STEPSelectionsCounter): StandardInteger {.noSideEffect,
    importcpp: "NbSourceWires", header: "STEPSelections_Counter.hxx".}

