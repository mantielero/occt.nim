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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepShape_PolyLoop"
discard "forward decl of StepShape_PolyLoop"
type
  HandleC1C1* = Handle[StepShapePolyLoop]
  StepShapePolyLoop* {.importcpp: "StepShape_PolyLoop",
                      header: "StepShape_PolyLoop.hxx", bycopy.} = object of StepShapeLoop ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## PolyLoop


proc constructStepShapePolyLoop*(): StepShapePolyLoop {.constructor,
    importcpp: "StepShape_PolyLoop(@)", header: "StepShape_PolyLoop.hxx".}
proc init*(this: var StepShapePolyLoop; aName: Handle[TCollectionHAsciiString];
          aPolygon: Handle[StepGeomHArray1OfCartesianPoint]) {.importcpp: "Init",
    header: "StepShape_PolyLoop.hxx".}
proc setPolygon*(this: var StepShapePolyLoop;
                aPolygon: Handle[StepGeomHArray1OfCartesianPoint]) {.
    importcpp: "SetPolygon", header: "StepShape_PolyLoop.hxx".}
proc polygon*(this: StepShapePolyLoop): Handle[StepGeomHArray1OfCartesianPoint] {.
    noSideEffect, importcpp: "Polygon", header: "StepShape_PolyLoop.hxx".}
proc polygonValue*(this: StepShapePolyLoop; num: int): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "PolygonValue", header: "StepShape_PolyLoop.hxx".}
proc nbPolygon*(this: StepShapePolyLoop): int {.noSideEffect, importcpp: "NbPolygon",
    header: "StepShape_PolyLoop.hxx".}
type
  StepShapePolyLoopbaseType* = StepShapeLoop

proc getTypeName*(): cstring {.importcpp: "StepShape_PolyLoop::get_type_name(@)",
                            header: "StepShape_PolyLoop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_PolyLoop::get_type_descriptor(@)",
    header: "StepShape_PolyLoop.hxx".}
proc dynamicType*(this: StepShapePolyLoop): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepShape_PolyLoop.hxx".}