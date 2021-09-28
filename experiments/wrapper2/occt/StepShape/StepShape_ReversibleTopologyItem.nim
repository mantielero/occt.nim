##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_Path"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_OpenShell"
type
  StepShapeReversibleTopologyItem* {.importcpp: "StepShape_ReversibleTopologyItem", header: "StepShape_ReversibleTopologyItem.hxx",
                                    bycopy.} = object of StepDataSelectType ## ! Returns a
                                                                       ## ReversibleTopologyItem
                                                                       ## SelectType


proc constructStepShapeReversibleTopologyItem*(): StepShapeReversibleTopologyItem {.
    constructor, importcpp: "StepShape_ReversibleTopologyItem(@)",
    header: "StepShape_ReversibleTopologyItem.hxx".}
proc caseNum*(this: StepShapeReversibleTopologyItem; ent: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "CaseNum",
    header: "StepShape_ReversibleTopologyItem.hxx".}
proc edge*(this: StepShapeReversibleTopologyItem): Handle[StepShapeEdge] {.
    noSideEffect, importcpp: "Edge", header: "StepShape_ReversibleTopologyItem.hxx".}
proc path*(this: StepShapeReversibleTopologyItem): Handle[StepShapePath] {.
    noSideEffect, importcpp: "Path", header: "StepShape_ReversibleTopologyItem.hxx".}
proc face*(this: StepShapeReversibleTopologyItem): Handle[StepShapeFace] {.
    noSideEffect, importcpp: "Face", header: "StepShape_ReversibleTopologyItem.hxx".}
proc faceBound*(this: StepShapeReversibleTopologyItem): Handle[StepShapeFaceBound] {.
    noSideEffect, importcpp: "FaceBound",
    header: "StepShape_ReversibleTopologyItem.hxx".}
proc closedShell*(this: StepShapeReversibleTopologyItem): Handle[
    StepShapeClosedShell] {.noSideEffect, importcpp: "ClosedShell",
                           header: "StepShape_ReversibleTopologyItem.hxx".}
proc openShell*(this: StepShapeReversibleTopologyItem): Handle[StepShapeOpenShell] {.
    noSideEffect, importcpp: "OpenShell",
    header: "StepShape_ReversibleTopologyItem.hxx".}

























