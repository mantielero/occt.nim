##  Created on: 2002-01-04
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_OrientedEdge,
  ../Standard/Standard_Boolean

discard "forward decl of StepGeom_Pcurve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Edge"
discard "forward decl of StepShape_SeamEdge"
discard "forward decl of StepShape_SeamEdge"
type
  Handle_StepShape_SeamEdge* = handle[StepShape_SeamEdge]

## ! Representation of STEP entity SeamEdge

type
  StepShape_SeamEdge* {.importcpp: "StepShape_SeamEdge",
                       header: "StepShape_SeamEdge.hxx", bycopy.} = object of StepShape_OrientedEdge ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepShape_SeamEdge*(): StepShape_SeamEdge {.constructor,
    importcpp: "StepShape_SeamEdge(@)", header: "StepShape_SeamEdge.hxx".}
proc Init*(this: var StepShape_SeamEdge;
          aRepresentationItem_Name: handle[TCollection_HAsciiString];
          aOrientedEdge_EdgeElement: handle[StepShape_Edge];
          aOrientedEdge_Orientation: Standard_Boolean;
          aPcurveReference: handle[StepGeom_Pcurve]) {.importcpp: "Init",
    header: "StepShape_SeamEdge.hxx".}
proc PcurveReference*(this: StepShape_SeamEdge): handle[StepGeom_Pcurve] {.
    noSideEffect, importcpp: "PcurveReference", header: "StepShape_SeamEdge.hxx".}
proc SetPcurveReference*(this: var StepShape_SeamEdge;
                        PcurveReference: handle[StepGeom_Pcurve]) {.
    importcpp: "SetPcurveReference", header: "StepShape_SeamEdge.hxx".}
type
  StepShape_SeamEdgebase_type* = StepShape_OrientedEdge

proc get_type_name*(): cstring {.importcpp: "StepShape_SeamEdge::get_type_name(@)",
                              header: "StepShape_SeamEdge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_SeamEdge::get_type_descriptor(@)",
    header: "StepShape_SeamEdge.hxx".}
proc DynamicType*(this: StepShape_SeamEdge): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_SeamEdge.hxx".}