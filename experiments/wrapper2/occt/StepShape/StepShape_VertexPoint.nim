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

discard "forward decl of StepGeom_Point"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_VertexPoint"
discard "forward decl of StepShape_VertexPoint"
type
  HandleStepShapeVertexPoint* = Handle[StepShapeVertexPoint]
  StepShapeVertexPoint* {.importcpp: "StepShape_VertexPoint",
                         header: "StepShape_VertexPoint.hxx", bycopy.} = object of StepShapeVertex ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## VertexPoint


proc constructStepShapeVertexPoint*(): StepShapeVertexPoint {.constructor,
    importcpp: "StepShape_VertexPoint(@)", header: "StepShape_VertexPoint.hxx".}
proc init*(this: var StepShapeVertexPoint; aName: Handle[TCollectionHAsciiString];
          aVertexGeometry: Handle[StepGeomPoint]) {.importcpp: "Init",
    header: "StepShape_VertexPoint.hxx".}
proc setVertexGeometry*(this: var StepShapeVertexPoint;
                       aVertexGeometry: Handle[StepGeomPoint]) {.
    importcpp: "SetVertexGeometry", header: "StepShape_VertexPoint.hxx".}
proc vertexGeometry*(this: StepShapeVertexPoint): Handle[StepGeomPoint] {.
    noSideEffect, importcpp: "VertexGeometry", header: "StepShape_VertexPoint.hxx".}
type
  StepShapeVertexPointbaseType* = StepShapeVertex

proc getTypeName*(): cstring {.importcpp: "StepShape_VertexPoint::get_type_name(@)",
                            header: "StepShape_VertexPoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_VertexPoint::get_type_descriptor(@)",
    header: "StepShape_VertexPoint.hxx".}
proc dynamicType*(this: StepShapeVertexPoint): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_VertexPoint.hxx".}
