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
  ../Standard/Standard, ../Standard/Standard_Type, StepShape_SolidModel

discard "forward decl of StepGeom_CurveBoundedSurface"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepShape_SweptAreaSolid"
discard "forward decl of StepShape_SweptAreaSolid"
type
  Handle_StepShape_SweptAreaSolid* = handle[StepShape_SweptAreaSolid]
  StepShape_SweptAreaSolid* {.importcpp: "StepShape_SweptAreaSolid",
                             header: "StepShape_SweptAreaSolid.hxx", bycopy.} = object of StepShape_SolidModel ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## SweptAreaSolid


proc constructStepShape_SweptAreaSolid*(): StepShape_SweptAreaSolid {.constructor,
    importcpp: "StepShape_SweptAreaSolid(@)",
    header: "StepShape_SweptAreaSolid.hxx".}
proc Init*(this: var StepShape_SweptAreaSolid;
          aName: handle[TCollection_HAsciiString];
          aSweptArea: handle[StepGeom_CurveBoundedSurface]) {.importcpp: "Init",
    header: "StepShape_SweptAreaSolid.hxx".}
proc SetSweptArea*(this: var StepShape_SweptAreaSolid;
                  aSweptArea: handle[StepGeom_CurveBoundedSurface]) {.
    importcpp: "SetSweptArea", header: "StepShape_SweptAreaSolid.hxx".}
proc SweptArea*(this: StepShape_SweptAreaSolid): handle[
    StepGeom_CurveBoundedSurface] {.noSideEffect, importcpp: "SweptArea",
                                   header: "StepShape_SweptAreaSolid.hxx".}
type
  StepShape_SweptAreaSolidbase_type* = StepShape_SolidModel

proc get_type_name*(): cstring {.importcpp: "StepShape_SweptAreaSolid::get_type_name(@)",
                              header: "StepShape_SweptAreaSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepShape_SweptAreaSolid::get_type_descriptor(@)",
    header: "StepShape_SweptAreaSolid.hxx".}
proc DynamicType*(this: StepShape_SweptAreaSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepShape_SweptAreaSolid.hxx".}