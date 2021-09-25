##  Created on: 1999-03-11
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepShape_ExtrudedFaceSolid"
discard "forward decl of StepShape_ExtrudedFaceSolid"
type
  HandleStepShapeExtrudedFaceSolid* = Handle[StepShapeExtrudedFaceSolid]
  StepShapeExtrudedFaceSolid* {.importcpp: "StepShape_ExtrudedFaceSolid",
                               header: "StepShape_ExtrudedFaceSolid.hxx", bycopy.} = object of StepShapeSweptFaceSolid ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## ExtrudedFaceSolid


proc constructStepShapeExtrudedFaceSolid*(): StepShapeExtrudedFaceSolid {.
    constructor, importcpp: "StepShape_ExtrudedFaceSolid(@)",
    header: "StepShape_ExtrudedFaceSolid.hxx".}
proc init*(this: var StepShapeExtrudedFaceSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepShapeFaceSurface];
          aExtrudedDirection: Handle[StepGeomDirection]; aDepth: float) {.
    importcpp: "Init", header: "StepShape_ExtrudedFaceSolid.hxx".}
proc setExtrudedDirection*(this: var StepShapeExtrudedFaceSolid;
                          aExtrudedDirection: Handle[StepGeomDirection]) {.
    importcpp: "SetExtrudedDirection", header: "StepShape_ExtrudedFaceSolid.hxx".}
proc extrudedDirection*(this: StepShapeExtrudedFaceSolid): Handle[StepGeomDirection] {.
    noSideEffect, importcpp: "ExtrudedDirection",
    header: "StepShape_ExtrudedFaceSolid.hxx".}
proc setDepth*(this: var StepShapeExtrudedFaceSolid; aDepth: float) {.
    importcpp: "SetDepth", header: "StepShape_ExtrudedFaceSolid.hxx".}
proc depth*(this: StepShapeExtrudedFaceSolid): float {.noSideEffect,
    importcpp: "Depth", header: "StepShape_ExtrudedFaceSolid.hxx".}
type
  StepShapeExtrudedFaceSolidbaseType* = StepShapeSweptFaceSolid

proc getTypeName*(): cstring {.importcpp: "StepShape_ExtrudedFaceSolid::get_type_name(@)",
                            header: "StepShape_ExtrudedFaceSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_ExtrudedFaceSolid::get_type_descriptor(@)",
    header: "StepShape_ExtrudedFaceSolid.hxx".}
proc dynamicType*(this: StepShapeExtrudedFaceSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ExtrudedFaceSolid.hxx".}
