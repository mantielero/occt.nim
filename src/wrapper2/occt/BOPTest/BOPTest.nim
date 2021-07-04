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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

discard "forward decl of BOPTest_Objects"
discard "forward decl of BOPTest_DrawableShape"
discard "forward decl of Message_Report"
type
  BOPTest* {.importcpp: "BOPTest", header: "BOPTest.hxx", bycopy.} = object


proc AllCommands*(aDI: var Draw_Interpretor) {.importcpp: "BOPTest::AllCommands(@)",
    header: "BOPTest.hxx".}
proc BOPCommands*(aDI: var Draw_Interpretor) {.importcpp: "BOPTest::BOPCommands(@)",
    header: "BOPTest.hxx".}
proc CheckCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::CheckCommands(@)", header: "BOPTest.hxx".}
proc TolerCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::TolerCommands(@)", header: "BOPTest.hxx".}
proc LowCommands*(aDI: var Draw_Interpretor) {.importcpp: "BOPTest::LowCommands(@)",
    header: "BOPTest.hxx".}
proc ObjCommands*(aDI: var Draw_Interpretor) {.importcpp: "BOPTest::ObjCommands(@)",
    header: "BOPTest.hxx".}
proc PartitionCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::PartitionCommands(@)", header: "BOPTest.hxx".}
proc APICommands*(aDI: var Draw_Interpretor) {.importcpp: "BOPTest::APICommands(@)",
    header: "BOPTest.hxx".}
proc OptionCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::OptionCommands(@)", header: "BOPTest.hxx".}
proc Factory*(aDI: var Draw_Interpretor) {.importcpp: "BOPTest::Factory(@)",
                                       header: "BOPTest.hxx".}
proc DebugCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::DebugCommands(@)", header: "BOPTest.hxx".}
proc CellsCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::CellsCommands(@)", header: "BOPTest.hxx".}
proc UtilityCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::UtilityCommands(@)", header: "BOPTest.hxx".}
proc RemoveFeaturesCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::RemoveFeaturesCommands(@)", header: "BOPTest.hxx".}
proc PeriodicityCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::PeriodicityCommands(@)", header: "BOPTest.hxx".}
proc MkConnectedCommands*(aDI: var Draw_Interpretor) {.
    importcpp: "BOPTest::MkConnectedCommands(@)", header: "BOPTest.hxx".}
proc ReportAlerts*(theReport: handle[Message_Report]) {.
    importcpp: "BOPTest::ReportAlerts(@)", header: "BOPTest.hxx".}