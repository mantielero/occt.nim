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

## ! Provides commands to test BRep.

type
  BRepTest* {.importcpp: "BRepTest", header: "BRepTest.hxx", bycopy.} = object ## ! Defines all the topology commands.


proc allCommands*(di: var DrawInterpretor) {.importcpp: "BRepTest::AllCommands(@)",
    header: "BRepTest.hxx".}
proc basicCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::BasicCommands(@)", header: "BRepTest.hxx".}
proc curveCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::CurveCommands(@)", header: "BRepTest.hxx".}
proc fillet2DCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::Fillet2DCommands(@)", header: "BRepTest.hxx".}
proc surfaceCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::SurfaceCommands(@)", header: "BRepTest.hxx".}
proc primitiveCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::PrimitiveCommands(@)", header: "BRepTest.hxx".}
proc fillingCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::FillingCommands(@)", header: "BRepTest.hxx".}
proc sweepCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::SweepCommands(@)", header: "BRepTest.hxx".}
proc topologyCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::TopologyCommands(@)", header: "BRepTest.hxx".}
proc filletCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::FilletCommands(@)", header: "BRepTest.hxx".}
proc chamferCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::ChamferCommands(@)", header: "BRepTest.hxx".}
proc gPropCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::GPropCommands(@)", header: "BRepTest.hxx".}
proc matCommands*(di: var DrawInterpretor) {.importcpp: "BRepTest::MatCommands(@)",
    header: "BRepTest.hxx".}
proc draftAngleCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::DraftAngleCommands(@)", header: "BRepTest.hxx".}
proc featureCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::FeatureCommands(@)", header: "BRepTest.hxx".}
proc otherCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::OtherCommands(@)", header: "BRepTest.hxx".}
proc extremaCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::ExtremaCommands(@)", header: "BRepTest.hxx".}
proc checkCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::CheckCommands(@)", header: "BRepTest.hxx".}
proc placementCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::PlacementCommands(@)", header: "BRepTest.hxx".}
proc projectionCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::ProjectionCommands(@)", header: "BRepTest.hxx".}
proc historyCommands*(di: var DrawInterpretor) {.
    importcpp: "BRepTest::HistoryCommands(@)", header: "BRepTest.hxx".}

