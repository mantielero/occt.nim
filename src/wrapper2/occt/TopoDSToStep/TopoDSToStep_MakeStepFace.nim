##  Created on: 1994-11-30
##  Created by: Frederic MAUPAS
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopoDSToStep_MakeFaceError, TopoDSToStep_Root

discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of Transfer_FinderProcess"
type
  TopoDSToStep_MakeStepFace* {.importcpp: "TopoDSToStep_MakeStepFace",
                              header: "TopoDSToStep_MakeStepFace.hxx", bycopy.} = object of TopoDSToStep_Root


proc constructTopoDSToStep_MakeStepFace*(): TopoDSToStep_MakeStepFace {.
    constructor, importcpp: "TopoDSToStep_MakeStepFace(@)",
    header: "TopoDSToStep_MakeStepFace.hxx".}
proc constructTopoDSToStep_MakeStepFace*(F: TopoDS_Face; T: var TopoDSToStep_Tool;
                                        FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepFace {.
    constructor, importcpp: "TopoDSToStep_MakeStepFace(@)",
    header: "TopoDSToStep_MakeStepFace.hxx".}
proc Init*(this: var TopoDSToStep_MakeStepFace; F: TopoDS_Face;
          T: var TopoDSToStep_Tool; FP: handle[Transfer_FinderProcess]) {.
    importcpp: "Init", header: "TopoDSToStep_MakeStepFace.hxx".}
proc Value*(this: TopoDSToStep_MakeStepFace): handle[
    StepShape_TopologicalRepresentationItem] {.noSideEffect, importcpp: "Value",
    header: "TopoDSToStep_MakeStepFace.hxx".}
proc Error*(this: TopoDSToStep_MakeStepFace): TopoDSToStep_MakeFaceError {.
    noSideEffect, importcpp: "Error", header: "TopoDSToStep_MakeStepFace.hxx".}