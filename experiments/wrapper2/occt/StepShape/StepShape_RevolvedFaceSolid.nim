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

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepShape_RevolvedFaceSolid"
discard "forward decl of StepShape_RevolvedFaceSolid"
type
  HandleStepShapeRevolvedFaceSolid* = Handle[StepShapeRevolvedFaceSolid]
  StepShapeRevolvedFaceSolid* {.importcpp: "StepShape_RevolvedFaceSolid",
                               header: "StepShape_RevolvedFaceSolid.hxx", bycopy.} = object of StepShapeSweptFaceSolid ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## RevolvedFaceSolid


proc constructStepShapeRevolvedFaceSolid*(): StepShapeRevolvedFaceSolid {.
    constructor, importcpp: "StepShape_RevolvedFaceSolid(@)",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc init*(this: var StepShapeRevolvedFaceSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepShapeFaceSurface]) {.importcpp: "Init",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc init*(this: var StepShapeRevolvedFaceSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepShapeFaceSurface];
          aAxis: Handle[StepGeomAxis1Placement]; aAngle: float) {.importcpp: "Init",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc setAxis*(this: var StepShapeRevolvedFaceSolid;
             aAxis: Handle[StepGeomAxis1Placement]) {.importcpp: "SetAxis",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc axis*(this: StepShapeRevolvedFaceSolid): Handle[StepGeomAxis1Placement] {.
    noSideEffect, importcpp: "Axis", header: "StepShape_RevolvedFaceSolid.hxx".}
proc setAngle*(this: var StepShapeRevolvedFaceSolid; aAngle: float) {.
    importcpp: "SetAngle", header: "StepShape_RevolvedFaceSolid.hxx".}
proc angle*(this: StepShapeRevolvedFaceSolid): float {.noSideEffect,
    importcpp: "Angle", header: "StepShape_RevolvedFaceSolid.hxx".}
type
  StepShapeRevolvedFaceSolidbaseType* = StepShapeSweptFaceSolid

proc getTypeName*(): cstring {.importcpp: "StepShape_RevolvedFaceSolid::get_type_name(@)",
                            header: "StepShape_RevolvedFaceSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_RevolvedFaceSolid::get_type_descriptor(@)",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc dynamicType*(this: StepShapeRevolvedFaceSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RevolvedFaceSolid.hxx".}
