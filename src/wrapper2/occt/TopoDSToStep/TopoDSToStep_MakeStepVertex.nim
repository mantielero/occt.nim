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
  ../Standard/Standard_Handle, TopoDSToStep_MakeVertexError, TopoDSToStep_Root

discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of Transfer_FinderProcess"
type
  TopoDSToStep_MakeStepVertex* {.importcpp: "TopoDSToStep_MakeStepVertex",
                                header: "TopoDSToStep_MakeStepVertex.hxx", bycopy.} = object of TopoDSToStep_Root


proc constructTopoDSToStep_MakeStepVertex*(): TopoDSToStep_MakeStepVertex {.
    constructor, importcpp: "TopoDSToStep_MakeStepVertex(@)",
    header: "TopoDSToStep_MakeStepVertex.hxx".}
proc constructTopoDSToStep_MakeStepVertex*(V: TopoDS_Vertex;
    T: var TopoDSToStep_Tool; FP: handle[Transfer_FinderProcess]): TopoDSToStep_MakeStepVertex {.
    constructor, importcpp: "TopoDSToStep_MakeStepVertex(@)",
    header: "TopoDSToStep_MakeStepVertex.hxx".}
proc Init*(this: var TopoDSToStep_MakeStepVertex; V: TopoDS_Vertex;
          T: var TopoDSToStep_Tool; FP: handle[Transfer_FinderProcess]) {.
    importcpp: "Init", header: "TopoDSToStep_MakeStepVertex.hxx".}
proc Value*(this: TopoDSToStep_MakeStepVertex): handle[
    StepShape_TopologicalRepresentationItem] {.noSideEffect, importcpp: "Value",
    header: "TopoDSToStep_MakeStepVertex.hxx".}
proc Error*(this: TopoDSToStep_MakeStepVertex): TopoDSToStep_MakeVertexError {.
    noSideEffect, importcpp: "Error", header: "TopoDSToStep_MakeStepVertex.hxx".}