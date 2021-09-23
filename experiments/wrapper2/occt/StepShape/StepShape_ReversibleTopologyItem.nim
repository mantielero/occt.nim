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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_Path"
discard "forward decl of StepShape_Face"
discard "forward decl of StepShape_FaceBound"
discard "forward decl of StepShape_ClosedShell"
discard "forward decl of StepShape_OpenShell"
type
  StepShape_ReversibleTopologyItem* {.importcpp: "StepShape_ReversibleTopologyItem", header: "StepShape_ReversibleTopologyItem.hxx",
                                     bycopy.} = object of StepData_SelectType ## ! Returns a
                                                                         ## ReversibleTopologyItem
                                                                         ## SelectType


proc constructStepShape_ReversibleTopologyItem*(): StepShape_ReversibleTopologyItem {.
    constructor, importcpp: "StepShape_ReversibleTopologyItem(@)",
    header: "StepShape_ReversibleTopologyItem.hxx".}
proc CaseNum*(this: StepShape_ReversibleTopologyItem;
             ent: handle[Standard_Transient]): Standard_Integer {.noSideEffect,
    importcpp: "CaseNum", header: "StepShape_ReversibleTopologyItem.hxx".}
proc Edge*(this: StepShape_ReversibleTopologyItem): handle[StepShape_Edge] {.
    noSideEffect, importcpp: "Edge", header: "StepShape_ReversibleTopologyItem.hxx".}
proc Path*(this: StepShape_ReversibleTopologyItem): handle[StepShape_Path] {.
    noSideEffect, importcpp: "Path", header: "StepShape_ReversibleTopologyItem.hxx".}
proc Face*(this: StepShape_ReversibleTopologyItem): handle[StepShape_Face] {.
    noSideEffect, importcpp: "Face", header: "StepShape_ReversibleTopologyItem.hxx".}
proc FaceBound*(this: StepShape_ReversibleTopologyItem): handle[StepShape_FaceBound] {.
    noSideEffect, importcpp: "FaceBound",
    header: "StepShape_ReversibleTopologyItem.hxx".}
proc ClosedShell*(this: StepShape_ReversibleTopologyItem): handle[
    StepShape_ClosedShell] {.noSideEffect, importcpp: "ClosedShell",
                            header: "StepShape_ReversibleTopologyItem.hxx".}
proc OpenShell*(this: StepShape_ReversibleTopologyItem): handle[StepShape_OpenShell] {.
    noSideEffect, importcpp: "OpenShell",
    header: "StepShape_ReversibleTopologyItem.hxx".}