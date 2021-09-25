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
proc nbInstancesOfFaces*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbInstancesOfFaces", header: "STEPSelections_Counter.hxx".}
proc pop*(this: STEPSelectionsCounter): int {.noSideEffect, importcpp: "POP",
    header: "STEPSelections_Counter.hxx".}
proc pop2*(this: STEPSelectionsCounter): int {.noSideEffect, importcpp: "POP2",
    header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfShells*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbInstancesOfShells", header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfSolids*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbInstancesOfSolids", header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfEdges*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbInstancesOfEdges", header: "STEPSelections_Counter.hxx".}
proc nbInstancesOfWires*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbInstancesOfWires", header: "STEPSelections_Counter.hxx".}
proc nbSourceFaces*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbSourceFaces", header: "STEPSelections_Counter.hxx".}
proc nbSourceShells*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbSourceShells", header: "STEPSelections_Counter.hxx".}
proc nbSourceSolids*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbSourceSolids", header: "STEPSelections_Counter.hxx".}
proc nbSourceEdges*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbSourceEdges", header: "STEPSelections_Counter.hxx".}
proc nbSourceWires*(this: STEPSelectionsCounter): int {.noSideEffect,
    importcpp: "NbSourceWires", header: "STEPSelections_Counter.hxx".}
