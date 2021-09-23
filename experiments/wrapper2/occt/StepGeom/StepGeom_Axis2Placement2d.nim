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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  StepGeom_Placement

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StepGeom_Axis2Placement2d"
discard "forward decl of StepGeom_Axis2Placement2d"
type
  Handle_StepGeom_Axis2Placement2d* = handle[StepGeom_Axis2Placement2d]
  StepGeom_Axis2Placement2d* {.importcpp: "StepGeom_Axis2Placement2d",
                              header: "StepGeom_Axis2Placement2d.hxx", bycopy.} = object of StepGeom_Placement ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## a
                                                                                                        ## Axis2Placement2d


proc constructStepGeom_Axis2Placement2d*(): StepGeom_Axis2Placement2d {.
    constructor, importcpp: "StepGeom_Axis2Placement2d(@)",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc Init*(this: var StepGeom_Axis2Placement2d;
          aName: handle[TCollection_HAsciiString];
          aLocation: handle[StepGeom_CartesianPoint];
          hasArefDirection: Standard_Boolean;
          aRefDirection: handle[StepGeom_Direction]) {.importcpp: "Init",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc SetRefDirection*(this: var StepGeom_Axis2Placement2d;
                     aRefDirection: handle[StepGeom_Direction]) {.
    importcpp: "SetRefDirection", header: "StepGeom_Axis2Placement2d.hxx".}
proc UnSetRefDirection*(this: var StepGeom_Axis2Placement2d) {.
    importcpp: "UnSetRefDirection", header: "StepGeom_Axis2Placement2d.hxx".}
proc RefDirection*(this: StepGeom_Axis2Placement2d): handle[StepGeom_Direction] {.
    noSideEffect, importcpp: "RefDirection",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc HasRefDirection*(this: StepGeom_Axis2Placement2d): Standard_Boolean {.
    noSideEffect, importcpp: "HasRefDirection",
    header: "StepGeom_Axis2Placement2d.hxx".}
type
  StepGeom_Axis2Placement2dbase_type* = StepGeom_Placement

proc get_type_name*(): cstring {.importcpp: "StepGeom_Axis2Placement2d::get_type_name(@)",
                              header: "StepGeom_Axis2Placement2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_Axis2Placement2d::get_type_descriptor(@)",
    header: "StepGeom_Axis2Placement2d.hxx".}
proc DynamicType*(this: StepGeom_Axis2Placement2d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_Axis2Placement2d.hxx".}