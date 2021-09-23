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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepShape_Edge

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepShape_EdgeCurve"
discard "forward decl of StepShape_EdgeCurve"
type
  Handle_StepShape_EdgeCurve* = handle[StepShape_EdgeCurve]
  StepShape_EdgeCurve* {.importcpp: "StepShape_EdgeCurve",
                        header: "StepShape_EdgeCurve.hxx", bycopy.} = object of StepShape_Edge ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## EdgeCurve


proc constructStepShape_EdgeCurve*(): StepShape_EdgeCurve {.constructor,
    importcpp: "StepShape_EdgeCurve(@)", header: "StepShape_EdgeCurve.hxx".}
proc Init*(this: var StepShape_EdgeCurve; aName: handle[TCollection_HAsciiString];
          aEdgeStart: handle[StepShape_Vertex];
          aEdgeEnd: handle[StepShape_Vertex];
          aEdgeGeometry: handle[StepGeom_Curve]; aSameSense: Standard_Boolean) {.
    importcpp: "Init", header: "StepShape_EdgeCurve.hxx".}
proc SetEdgeGeometry*(this: var StepShape_EdgeCurve;
                     aEdgeGeometry: handle[StepGeom_Curve]) {.
    importcpp: "SetEdgeGeometry", header: "StepShape_EdgeCurve.hxx".}
proc EdgeGeometry*(this: StepShape_EdgeCurve): handle[StepGeom_Curve] {.
    noSideEffect, importcpp: "EdgeGeometry", header: "StepShape_EdgeCurve.hxx".}
proc SetSameSense*(this: var StepShape_EdgeCurve; aSameSense: Standard_Boolean) {.
    importcpp: "SetSameSense", header: "StepShape_EdgeCurve.hxx".}
proc SameSense*(this: StepShape_EdgeCurve): Standard_Boolean {.noSideEffect,
    importcpp: "SameSense", header: "StepShape_EdgeCurve.hxx".}
type
  StepShape_EdgeCurvebase_type* = StepShape_Edge

proc get_type_name*(): cstring {.importcpp: "StepShape_EdgeCurve::get_type_name(@)",
                              header: "StepShape_EdgeCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_EdgeCurve::get_type_descriptor(@)",
    header: "StepShape_EdgeCurve.hxx".}
proc DynamicType*(this: StepShape_EdgeCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_EdgeCurve.hxx".}