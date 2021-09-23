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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  StepShape_SweptFaceSolid

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepShape_RevolvedFaceSolid"
discard "forward decl of StepShape_RevolvedFaceSolid"
type
  Handle_StepShape_RevolvedFaceSolid* = handle[StepShape_RevolvedFaceSolid]
  StepShape_RevolvedFaceSolid* {.importcpp: "StepShape_RevolvedFaceSolid",
                                header: "StepShape_RevolvedFaceSolid.hxx", bycopy.} = object of StepShape_SweptFaceSolid ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## RevolvedFaceSolid


proc constructStepShape_RevolvedFaceSolid*(): StepShape_RevolvedFaceSolid {.
    constructor, importcpp: "StepShape_RevolvedFaceSolid(@)",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc Init*(this: var StepShape_RevolvedFaceSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepShape_FaceSurface]) {.importcpp: "Init",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc Init*(this: var StepShape_RevolvedFaceSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepShape_FaceSurface];
          aAxis: handle[StepGeom_Axis1Placement]; aAngle: Standard_Real) {.
    importcpp: "Init", header: "StepShape_RevolvedFaceSolid.hxx".}
proc SetAxis*(this: var StepShape_RevolvedFaceSolid;
             aAxis: handle[StepGeom_Axis1Placement]) {.importcpp: "SetAxis",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc Axis*(this: StepShape_RevolvedFaceSolid): handle[StepGeom_Axis1Placement] {.
    noSideEffect, importcpp: "Axis", header: "StepShape_RevolvedFaceSolid.hxx".}
proc SetAngle*(this: var StepShape_RevolvedFaceSolid; aAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "StepShape_RevolvedFaceSolid.hxx".}
proc Angle*(this: StepShape_RevolvedFaceSolid): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "StepShape_RevolvedFaceSolid.hxx".}
type
  StepShape_RevolvedFaceSolidbase_type* = StepShape_SweptFaceSolid

proc get_type_name*(): cstring {.importcpp: "StepShape_RevolvedFaceSolid::get_type_name(@)",
                              header: "StepShape_RevolvedFaceSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_RevolvedFaceSolid::get_type_descriptor(@)",
    header: "StepShape_RevolvedFaceSolid.hxx".}
proc DynamicType*(this: StepShape_RevolvedFaceSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_RevolvedFaceSolid.hxx".}