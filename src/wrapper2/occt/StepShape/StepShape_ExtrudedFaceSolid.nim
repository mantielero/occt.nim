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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_FaceSurface"
discard "forward decl of StepShape_ExtrudedFaceSolid"
discard "forward decl of StepShape_ExtrudedFaceSolid"
type
  Handle_StepShape_ExtrudedFaceSolid* = handle[StepShape_ExtrudedFaceSolid]
  StepShape_ExtrudedFaceSolid* {.importcpp: "StepShape_ExtrudedFaceSolid",
                                header: "StepShape_ExtrudedFaceSolid.hxx", bycopy.} = object of StepShape_SweptFaceSolid ##
                                                                                                                  ## !
                                                                                                                  ## Returns
                                                                                                                  ## a
                                                                                                                  ## ExtrudedFaceSolid


proc constructStepShape_ExtrudedFaceSolid*(): StepShape_ExtrudedFaceSolid {.
    constructor, importcpp: "StepShape_ExtrudedFaceSolid(@)",
    header: "StepShape_ExtrudedFaceSolid.hxx".}
proc Init*(this: var StepShape_ExtrudedFaceSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepShape_FaceSurface];
          aExtrudedDirection: handle[StepGeom_Direction]; aDepth: Standard_Real) {.
    importcpp: "Init", header: "StepShape_ExtrudedFaceSolid.hxx".}
proc SetExtrudedDirection*(this: var StepShape_ExtrudedFaceSolid;
                          aExtrudedDirection: handle[StepGeom_Direction]) {.
    importcpp: "SetExtrudedDirection", header: "StepShape_ExtrudedFaceSolid.hxx".}
proc ExtrudedDirection*(this: StepShape_ExtrudedFaceSolid): handle[
    StepGeom_Direction] {.noSideEffect, importcpp: "ExtrudedDirection",
                         header: "StepShape_ExtrudedFaceSolid.hxx".}
proc SetDepth*(this: var StepShape_ExtrudedFaceSolid; aDepth: Standard_Real) {.
    importcpp: "SetDepth", header: "StepShape_ExtrudedFaceSolid.hxx".}
proc Depth*(this: StepShape_ExtrudedFaceSolid): Standard_Real {.noSideEffect,
    importcpp: "Depth", header: "StepShape_ExtrudedFaceSolid.hxx".}
type
  StepShape_ExtrudedFaceSolidbase_type* = StepShape_SweptFaceSolid

proc get_type_name*(): cstring {.importcpp: "StepShape_ExtrudedFaceSolid::get_type_name(@)",
                              header: "StepShape_ExtrudedFaceSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_ExtrudedFaceSolid::get_type_descriptor(@)",
    header: "StepShape_ExtrudedFaceSolid.hxx".}
proc DynamicType*(this: StepShape_ExtrudedFaceSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepShape_ExtrudedFaceSolid.hxx".}