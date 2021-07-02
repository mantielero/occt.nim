##  Created on: 2000-05-18
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of BOPTest_Objects"
discard "forward decl of BOPTest_DrawableShape"
discard "forward decl of Message_Report"
type
  BOPTest* {.importcpp: "BOPTest", header: "BOPTest.hxx", bycopy.} = object


proc allCommands*(aDI: var DrawInterpretor) {.importcpp: "BOPTest::AllCommands(@)",
    header: "BOPTest.hxx".}
proc bOPCommands*(aDI: var DrawInterpretor) {.importcpp: "BOPTest::BOPCommands(@)",
    header: "BOPTest.hxx".}
proc checkCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::CheckCommands(@)", header: "BOPTest.hxx".}
proc tolerCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::TolerCommands(@)", header: "BOPTest.hxx".}
proc lowCommands*(aDI: var DrawInterpretor) {.importcpp: "BOPTest::LowCommands(@)",
    header: "BOPTest.hxx".}
proc objCommands*(aDI: var DrawInterpretor) {.importcpp: "BOPTest::ObjCommands(@)",
    header: "BOPTest.hxx".}
proc partitionCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::PartitionCommands(@)", header: "BOPTest.hxx".}
proc aPICommands*(aDI: var DrawInterpretor) {.importcpp: "BOPTest::APICommands(@)",
    header: "BOPTest.hxx".}
proc optionCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::OptionCommands(@)", header: "BOPTest.hxx".}
proc factory*(aDI: var DrawInterpretor) {.importcpp: "BOPTest::Factory(@)",
                                      header: "BOPTest.hxx".}
proc debugCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::DebugCommands(@)", header: "BOPTest.hxx".}
proc cellsCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::CellsCommands(@)", header: "BOPTest.hxx".}
proc utilityCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::UtilityCommands(@)", header: "BOPTest.hxx".}
proc removeFeaturesCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::RemoveFeaturesCommands(@)", header: "BOPTest.hxx".}
proc periodicityCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::PeriodicityCommands(@)", header: "BOPTest.hxx".}
proc mkConnectedCommands*(aDI: var DrawInterpretor) {.
    importcpp: "BOPTest::MkConnectedCommands(@)", header: "BOPTest.hxx".}
proc reportAlerts*(theReport: Handle[MessageReport]) {.
    importcpp: "BOPTest::ReportAlerts(@)", header: "BOPTest.hxx".}

