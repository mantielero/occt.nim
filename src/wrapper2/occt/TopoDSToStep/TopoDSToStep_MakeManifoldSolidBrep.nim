##  Created on: 1993-07-23
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopoDSToStep_Root, ../Message/Message_ProgressRange

discard "forward decl of StepShape_ManifoldSolidBrep"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shell"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Solid"
type
  TopoDSToStep_MakeManifoldSolidBrep* {.importcpp: "TopoDSToStep_MakeManifoldSolidBrep", header: "TopoDSToStep_MakeManifoldSolidBrep.hxx",
                                       bycopy.} = object of TopoDSToStep_Root


proc constructTopoDSToStep_MakeManifoldSolidBrep*(S: TopoDS_Shell;
    FP: handle[Transfer_FinderProcess];
    theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDSToStep_MakeManifoldSolidBrep {.
    constructor, importcpp: "TopoDSToStep_MakeManifoldSolidBrep(@)",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc constructTopoDSToStep_MakeManifoldSolidBrep*(S: TopoDS_Solid;
    FP: handle[Transfer_FinderProcess];
    theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDSToStep_MakeManifoldSolidBrep {.
    constructor, importcpp: "TopoDSToStep_MakeManifoldSolidBrep(@)",
    header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}
proc Value*(this: TopoDSToStep_MakeManifoldSolidBrep): handle[
    StepShape_ManifoldSolidBrep] {.noSideEffect, importcpp: "Value", header: "TopoDSToStep_MakeManifoldSolidBrep.hxx".}