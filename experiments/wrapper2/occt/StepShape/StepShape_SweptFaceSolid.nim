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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_SolidModel

discard "forward decl of StepShape_FaceSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_SweptFaceSolid"
discard "forward decl of StepShape_SweptFaceSolid"
type
  Handle_StepShape_SweptFaceSolid* = handle[StepShape_SweptFaceSolid]
  StepShape_SweptFaceSolid* {.importcpp: "StepShape_SweptFaceSolid",
                             header: "StepShape_SweptFaceSolid.hxx", bycopy.} = object of StepShape_SolidModel ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## SweptFaceSolid


proc constructStepShape_SweptFaceSolid*(): StepShape_SweptFaceSolid {.constructor,
    importcpp: "StepShape_SweptFaceSolid(@)",
    header: "StepShape_SweptFaceSolid.hxx".}
proc Init*(this: var StepShape_SweptFaceSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepShape_FaceSurface]) {.importcpp: "Init",
    header: "StepShape_SweptFaceSolid.hxx".}
proc SetSweptFace*(this: var StepShape_SweptFaceSolid;
                  aSweptArea: handle[StepShape_FaceSurface]) {.
    importcpp: "SetSweptFace", header: "StepShape_SweptFaceSolid.hxx".}
proc SweptFace*(this: StepShape_SweptFaceSolid): handle[StepShape_FaceSurface] {.
    noSideEffect, importcpp: "SweptFace", header: "StepShape_SweptFaceSolid.hxx".}
type
  StepShape_SweptFaceSolidbase_type* = StepShape_SolidModel

proc get_type_name*(): cstring {.importcpp: "StepShape_SweptFaceSolid::get_type_name(@)",
                              header: "StepShape_SweptFaceSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_SweptFaceSolid::get_type_descriptor(@)",
    header: "StepShape_SweptFaceSolid.hxx".}
proc DynamicType*(this: StepShape_SweptFaceSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_SweptFaceSolid.hxx".}