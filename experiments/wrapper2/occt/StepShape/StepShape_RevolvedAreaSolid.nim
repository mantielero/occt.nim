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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepShape_SweptAreaSolid

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepShape_RevolvedAreaSolid"
discard "forward decl of StepShape_RevolvedAreaSolid"
type
  Handle_StepShape_RevolvedAreaSolid* = handle[StepShape_RevolvedAreaSolid]
  StepShape_RevolvedAreaSolid* {.importcpp: "StepShape_RevolvedAreaSolid",
                                header: "StepShape_RevolvedAreaSolid.hxx", bycopy.} = object of StepShape_SweptAreaSolid ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## RevolvedAreaSolid


proc constructStepShape_RevolvedAreaSolid*(): StepShape_RevolvedAreaSolid {.
    constructor, importcpp: "StepShape_RevolvedAreaSolid(@)",
    header: "StepShape_RevolvedAreaSolid.hxx".}
proc Init*(this: var StepShape_RevolvedAreaSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepGeom_CurveBoundedSurface];
          aAxis: handle[StepGeom_Axis1Placement]; aAngle: Standard_Real) {.
    importcpp: "Init", header: "StepShape_RevolvedAreaSolid.hxx".}
proc SetAxis*(this: var StepShape_RevolvedAreaSolid;
             aAxis: handle[StepGeom_Axis1Placement]) {.importcpp: "SetAxis",
    header: "StepShape_RevolvedAreaSolid.hxx".}
proc Axis*(this: StepShape_RevolvedAreaSolid): handle[StepGeom_Axis1Placement] {.
    noSideEffect, importcpp: "Axis", header: "StepShape_RevolvedAreaSolid.hxx".}
proc SetAngle*(this: var StepShape_RevolvedAreaSolid; aAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "StepShape_RevolvedAreaSolid.hxx".}
proc Angle*(this: StepShape_RevolvedAreaSolid): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "StepShape_RevolvedAreaSolid.hxx".}
type
  StepShape_RevolvedAreaSolidbase_type* = StepShape_SweptAreaSolid

proc get_type_name*(): cstring {.importcpp: "StepShape_RevolvedAreaSolid::get_type_name(@)",
                              header: "StepShape_RevolvedAreaSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_RevolvedAreaSolid::get_type_descriptor(@)",
    header: "StepShape_RevolvedAreaSolid.hxx".}
proc DynamicType*(this: StepShape_RevolvedAreaSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RevolvedAreaSolid.hxx".}