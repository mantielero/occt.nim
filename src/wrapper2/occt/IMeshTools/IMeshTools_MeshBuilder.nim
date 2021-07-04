##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../Message/Message_Algorithm, IMeshTools_Context, ../Standard/Standard_Type,
  ../Message/Message_ProgressRange

## ! Builds mesh for each face of shape without triangulation.
## ! In case if some faces of shape have already been triangulated
## ! checks deflection of existing polygonal model and re-uses it
## ! if deflection satisfies the specified parameter. Otherwise
## ! nullifies existing triangulation and build triangulation anew.
## !
## ! The following statuses are used:
## ! Message_Done1 - algorithm has finished without errors.
## ! Message_Fail1 - invalid context.
## ! Message_Fail2 - algorithm has faced unexpected error.
## ! Message_Fail3 - fail to discretize edges.
## ! Message_Fail4 - can't heal discrete model.
## ! Message_Fail5 - fail to pre-process model.
## ! Message_Fail6 - fail to discretize faces.
## ! Message_Fail7 - fail to post-process model.
## ! Message_Warn1 - shape contains no objects to mesh.

type
  IMeshTools_MeshBuilder* {.importcpp: "IMeshTools_MeshBuilder",
                           header: "IMeshTools_MeshBuilder.hxx", bycopy.} = object of Message_Algorithm ##
                                                                                                 ## !
                                                                                                 ## Constructor.


proc constructIMeshTools_MeshBuilder*(): IMeshTools_MeshBuilder {.constructor,
    importcpp: "IMeshTools_MeshBuilder(@)", header: "IMeshTools_MeshBuilder.hxx".}
proc constructIMeshTools_MeshBuilder*(theContext: handle[IMeshTools_Context]): IMeshTools_MeshBuilder {.
    constructor, importcpp: "IMeshTools_MeshBuilder(@)",
    header: "IMeshTools_MeshBuilder.hxx".}
proc destroyIMeshTools_MeshBuilder*(this: var IMeshTools_MeshBuilder) {.
    importcpp: "#.~IMeshTools_MeshBuilder()", header: "IMeshTools_MeshBuilder.hxx".}
proc SetContext*(this: var IMeshTools_MeshBuilder;
                theContext: handle[IMeshTools_Context]) {.importcpp: "SetContext",
    header: "IMeshTools_MeshBuilder.hxx".}
proc GetContext*(this: IMeshTools_MeshBuilder): handle[IMeshTools_Context] {.
    noSideEffect, importcpp: "GetContext", header: "IMeshTools_MeshBuilder.hxx".}
proc Perform*(this: var IMeshTools_MeshBuilder; theRange: Message_ProgressRange) {.
    importcpp: "Perform", header: "IMeshTools_MeshBuilder.hxx".}
type
  IMeshTools_MeshBuilderbase_type* = Message_Algorithm

proc get_type_name*(): cstring {.importcpp: "IMeshTools_MeshBuilder::get_type_name(@)",
                              header: "IMeshTools_MeshBuilder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_MeshBuilder::get_type_descriptor(@)",
    header: "IMeshTools_MeshBuilder.hxx".}
proc DynamicType*(this: IMeshTools_MeshBuilder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IMeshTools_MeshBuilder.hxx".}