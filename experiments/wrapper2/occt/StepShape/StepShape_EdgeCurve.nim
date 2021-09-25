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

discard "forward decl of StepGeom_Curve"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_Vertex"
discard "forward decl of StepShape_EdgeCurve"
discard "forward decl of StepShape_EdgeCurve"
type
  HandleStepShapeEdgeCurve* = Handle[StepShapeEdgeCurve]
  StepShapeEdgeCurve* {.importcpp: "StepShape_EdgeCurve",
                       header: "StepShape_EdgeCurve.hxx", bycopy.} = object of StepShapeEdge ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## EdgeCurve


proc constructStepShapeEdgeCurve*(): StepShapeEdgeCurve {.constructor,
    importcpp: "StepShape_EdgeCurve(@)", header: "StepShape_EdgeCurve.hxx".}
proc init*(this: var StepShapeEdgeCurve; aName: Handle[TCollectionHAsciiString];
          aEdgeStart: Handle[StepShapeVertex]; aEdgeEnd: Handle[StepShapeVertex];
          aEdgeGeometry: Handle[StepGeomCurve]; aSameSense: bool) {.
    importcpp: "Init", header: "StepShape_EdgeCurve.hxx".}
proc setEdgeGeometry*(this: var StepShapeEdgeCurve;
                     aEdgeGeometry: Handle[StepGeomCurve]) {.
    importcpp: "SetEdgeGeometry", header: "StepShape_EdgeCurve.hxx".}
proc edgeGeometry*(this: StepShapeEdgeCurve): Handle[StepGeomCurve] {.noSideEffect,
    importcpp: "EdgeGeometry", header: "StepShape_EdgeCurve.hxx".}
proc setSameSense*(this: var StepShapeEdgeCurve; aSameSense: bool) {.
    importcpp: "SetSameSense", header: "StepShape_EdgeCurve.hxx".}
proc sameSense*(this: StepShapeEdgeCurve): bool {.noSideEffect,
    importcpp: "SameSense", header: "StepShape_EdgeCurve.hxx".}
type
  StepShapeEdgeCurvebaseType* = StepShapeEdge

proc getTypeName*(): cstring {.importcpp: "StepShape_EdgeCurve::get_type_name(@)",
                            header: "StepShape_EdgeCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_EdgeCurve::get_type_descriptor(@)",
    header: "StepShape_EdgeCurve.hxx".}
proc dynamicType*(this: StepShapeEdgeCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_EdgeCurve.hxx".}
