##  Created on: 1991-06-25
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor

## ! Provides commands to test BRep.

type
  BRepTest* {.importcpp: "BRepTest", header: "BRepTest.hxx", bycopy.} = object ## ! Defines all the topology commands.


proc AllCommands*(DI: var Draw_Interpretor) {.importcpp: "BRepTest::AllCommands(@)",
    header: "BRepTest.hxx".}
proc BasicCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::BasicCommands(@)", header: "BRepTest.hxx".}
proc CurveCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::CurveCommands(@)", header: "BRepTest.hxx".}
proc Fillet2DCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::Fillet2DCommands(@)", header: "BRepTest.hxx".}
proc SurfaceCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::SurfaceCommands(@)", header: "BRepTest.hxx".}
proc PrimitiveCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::PrimitiveCommands(@)", header: "BRepTest.hxx".}
proc FillingCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::FillingCommands(@)", header: "BRepTest.hxx".}
proc SweepCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::SweepCommands(@)", header: "BRepTest.hxx".}
proc TopologyCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::TopologyCommands(@)", header: "BRepTest.hxx".}
proc FilletCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::FilletCommands(@)", header: "BRepTest.hxx".}
proc ChamferCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::ChamferCommands(@)", header: "BRepTest.hxx".}
proc GPropCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::GPropCommands(@)", header: "BRepTest.hxx".}
proc MatCommands*(DI: var Draw_Interpretor) {.importcpp: "BRepTest::MatCommands(@)",
    header: "BRepTest.hxx".}
proc DraftAngleCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::DraftAngleCommands(@)", header: "BRepTest.hxx".}
proc FeatureCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::FeatureCommands(@)", header: "BRepTest.hxx".}
proc OtherCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::OtherCommands(@)", header: "BRepTest.hxx".}
proc ExtremaCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::ExtremaCommands(@)", header: "BRepTest.hxx".}
proc CheckCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::CheckCommands(@)", header: "BRepTest.hxx".}
proc PlacementCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::PlacementCommands(@)", header: "BRepTest.hxx".}
proc ProjectionCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::ProjectionCommands(@)", header: "BRepTest.hxx".}
proc HistoryCommands*(DI: var Draw_Interpretor) {.
    importcpp: "BRepTest::HistoryCommands(@)", header: "BRepTest.hxx".}