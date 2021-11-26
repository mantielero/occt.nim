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

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepShape_RevolvedAreaSolid"
discard "forward decl of StepShape_RevolvedAreaSolid"
type
  HandleC1C1* = Handle[StepShapeRevolvedAreaSolid]
  StepShapeRevolvedAreaSolid* {.importcpp: "StepShape_RevolvedAreaSolid",
                               header: "StepShape_RevolvedAreaSolid.hxx", bycopy.} = object of StepShapeSweptAreaSolid ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## a
                                                                                                                ## RevolvedAreaSolid


proc constructStepShapeRevolvedAreaSolid*(): StepShapeRevolvedAreaSolid {.
    constructor, importcpp: "StepShape_RevolvedAreaSolid(@)",
    header: "StepShape_RevolvedAreaSolid.hxx".}
proc init*(this: var StepShapeRevolvedAreaSolid;
          aName: Handle[TCollectionHAsciiString];
          aSweptArea: Handle[StepGeomCurveBoundedSurface];
          aAxis: Handle[StepGeomAxis1Placement]; aAngle: StandardReal) {.
    importcpp: "Init", header: "StepShape_RevolvedAreaSolid.hxx".}
proc setAxis*(this: var StepShapeRevolvedAreaSolid;
             aAxis: Handle[StepGeomAxis1Placement]) {.importcpp: "SetAxis",
    header: "StepShape_RevolvedAreaSolid.hxx".}
proc axis*(this: StepShapeRevolvedAreaSolid): Handle[StepGeomAxis1Placement] {.
    noSideEffect, importcpp: "Axis", header: "StepShape_RevolvedAreaSolid.hxx".}
proc setAngle*(this: var StepShapeRevolvedAreaSolid; aAngle: StandardReal) {.
    importcpp: "SetAngle", header: "StepShape_RevolvedAreaSolid.hxx".}
proc angle*(this: StepShapeRevolvedAreaSolid): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "StepShape_RevolvedAreaSolid.hxx".}
type
  StepShapeRevolvedAreaSolidbaseType* = StepShapeSweptAreaSolid

proc getTypeName*(): cstring {.importcpp: "StepShape_RevolvedAreaSolid::get_type_name(@)",
                            header: "StepShape_RevolvedAreaSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepShape_RevolvedAreaSolid::get_type_descriptor(@)",
    header: "StepShape_RevolvedAreaSolid.hxx".}
proc dynamicType*(this: StepShapeRevolvedAreaSolid): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RevolvedAreaSolid.hxx".}