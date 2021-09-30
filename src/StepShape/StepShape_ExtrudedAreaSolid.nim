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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepShape_ExtrudedAreaSolid"
discard "forward decl of StepShape_ExtrudedAreaSolid"
type
  HandleC1C1* = Handle[StepShapeExtrudedAreaSolid]
  StepShapeExtrudedAreaSolid* {.importcpp: "StepShape_ExtrudedAreaSolid",
                               header: "StepShape_ExtrudedAreaSolid.hxx", bycopy.} = object of StepShapeSweptAreaSolid ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## ExtrudedAreaSolid


proc constructStepShapeExtrudedAreaSolid*(): StepShapeExtrudedAreaSolid {.
    constructor, importcpp: "StepShape_ExtrudedAreaSolid(@)",
    header: "StepShape_ExtrudedAreaSolid.hxx".}
proc init*(this: var StepShapeExtrudedAreaSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepGeomCurveBoundedSurface];
          aExtrudedDirection: Handle[StepGeomDirection]; aDepth: cfloat) {.
    importcpp: "Init", header: "StepShape_ExtrudedAreaSolid.hxx".}
proc setExtrudedDirection*(this: var StepShapeExtrudedAreaSolid;
                          aExtrudedDirection: Handle[StepGeomDirection]) {.
    importcpp: "SetExtrudedDirection", header: "StepShape_ExtrudedAreaSolid.hxx".}
proc extrudedDirection*(this: StepShapeExtrudedAreaSolid): Handle[StepGeomDirection] {.
    noSideEffect, importcpp: "ExtrudedDirection",
    header: "StepShape_ExtrudedAreaSolid.hxx".}
proc setDepth*(this: var StepShapeExtrudedAreaSolid; aDepth: cfloat) {.
    importcpp: "SetDepth", header: "StepShape_ExtrudedAreaSolid.hxx".}
proc depth*(this: StepShapeExtrudedAreaSolid): cfloat {.noSideEffect,
    importcpp: "Depth", header: "StepShape_ExtrudedAreaSolid.hxx".}
type
  StepShapeExtrudedAreaSolidbaseType* = StepShapeSweptAreaSolid

proc getTypeName*(): cstring {.importcpp: "StepShape_ExtrudedAreaSolid::get_type_name(@)",
                            header: "StepShape_ExtrudedAreaSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ExtrudedAreaSolid::get_type_descriptor(@)",
    header: "StepShape_ExtrudedAreaSolid.hxx".}
proc dynamicType*(this: StepShapeExtrudedAreaSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ExtrudedAreaSolid.hxx".}

























