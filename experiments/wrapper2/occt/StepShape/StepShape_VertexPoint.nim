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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_Vertex

discard "forward decl of StepGeom_Point"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_VertexPoint"
discard "forward decl of StepShape_VertexPoint"
type
  Handle_StepShape_VertexPoint* = handle[StepShape_VertexPoint]
  StepShape_VertexPoint* {.importcpp: "StepShape_VertexPoint",
                          header: "StepShape_VertexPoint.hxx", bycopy.} = object of StepShape_Vertex ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## VertexPoint


proc constructStepShape_VertexPoint*(): StepShape_VertexPoint {.constructor,
    importcpp: "StepShape_VertexPoint(@)", header: "StepShape_VertexPoint.hxx".}
proc Init*(this: var StepShape_VertexPoint; aName: handle[TCollection_HAsciiString];
          aVertexGeometry: handle[StepGeom_Point]) {.importcpp: "Init",
    header: "StepShape_VertexPoint.hxx".}
proc SetVertexGeometry*(this: var StepShape_VertexPoint;
                       aVertexGeometry: handle[StepGeom_Point]) {.
    importcpp: "SetVertexGeometry", header: "StepShape_VertexPoint.hxx".}
proc VertexGeometry*(this: StepShape_VertexPoint): handle[StepGeom_Point] {.
    noSideEffect, importcpp: "VertexGeometry", header: "StepShape_VertexPoint.hxx".}
type
  StepShape_VertexPointbase_type* = StepShape_Vertex

proc get_type_name*(): cstring {.importcpp: "StepShape_VertexPoint::get_type_name(@)",
                              header: "StepShape_VertexPoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_VertexPoint::get_type_descriptor(@)",
    header: "StepShape_VertexPoint.hxx".}
proc DynamicType*(this: StepShape_VertexPoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_VertexPoint.hxx".}