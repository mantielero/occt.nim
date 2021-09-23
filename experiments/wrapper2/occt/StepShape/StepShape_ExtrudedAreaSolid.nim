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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of StepShape_ExtrudedAreaSolid"
discard "forward decl of StepShape_ExtrudedAreaSolid"
type
  Handle_StepShape_ExtrudedAreaSolid* = handle[StepShape_ExtrudedAreaSolid]
  StepShape_ExtrudedAreaSolid* {.importcpp: "StepShape_ExtrudedAreaSolid",
                                header: "StepShape_ExtrudedAreaSolid.hxx", bycopy.} = object of StepShape_SweptAreaSolid ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## ExtrudedAreaSolid


proc constructStepShape_ExtrudedAreaSolid*(): StepShape_ExtrudedAreaSolid {.
    constructor, importcpp: "StepShape_ExtrudedAreaSolid(@)",
    header: "StepShape_ExtrudedAreaSolid.hxx".}
proc Init*(this: var StepShape_ExtrudedAreaSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepGeom_CurveBoundedSurface];
          aExtrudedDirection: handle[StepGeom_Direction]; aDepth: Standard_Real) {.
    importcpp: "Init", header: "StepShape_ExtrudedAreaSolid.hxx".}
proc SetExtrudedDirection*(this: var StepShape_ExtrudedAreaSolid;
                          aExtrudedDirection: handle[StepGeom_Direction]) {.
    importcpp: "SetExtrudedDirection", header: "StepShape_ExtrudedAreaSolid.hxx".}
proc ExtrudedDirection*(this: StepShape_ExtrudedAreaSolid): handle[
    StepGeom_Direction] {.noSideEffect, importcpp: "ExtrudedDirection",
                         header: "StepShape_ExtrudedAreaSolid.hxx".}
proc SetDepth*(this: var StepShape_ExtrudedAreaSolid; aDepth: Standard_Real) {.
    importcpp: "SetDepth", header: "StepShape_ExtrudedAreaSolid.hxx".}
proc Depth*(this: StepShape_ExtrudedAreaSolid): Standard_Real {.noSideEffect,
    importcpp: "Depth", header: "StepShape_ExtrudedAreaSolid.hxx".}
type
  StepShape_ExtrudedAreaSolidbase_type* = StepShape_SweptAreaSolid

proc get_type_name*(): cstring {.importcpp: "StepShape_ExtrudedAreaSolid::get_type_name(@)",
                              header: "StepShape_ExtrudedAreaSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ExtrudedAreaSolid::get_type_descriptor(@)",
    header: "StepShape_ExtrudedAreaSolid.hxx".}
proc DynamicType*(this: StepShape_ExtrudedAreaSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ExtrudedAreaSolid.hxx".}